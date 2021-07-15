import Foundation
import struct Foundation.URL
import CryptoKit

import ArgumentParser

import PackageModel
import PackageLoading
import PackageGraph
import Workspace

import Git

import CycloneDX

import ArgumentParser

extension SwiftPackageSBOM {
    struct Generate: ParsableCommand {
        static var configuration = CommandConfiguration(
            abstract: "Generate a software bill of materials for a package at a path."
        )

        @Argument(help: "Location of the package")
        var packagePath: AbsolutePath

        mutating func run() throws {
            var bom = BillOfMaterials(version: 1)

            let swiftCompiler = try { () throws -> AbsolutePath in
                let string: String
                #if os(macOS)
                string = try Process.checkNonZeroExit(args: "xcrun", "--sdk", "macosx", "-f", "swiftc").spm_chomp()
                #else
                string = try Process.checkNonZeroExit(args: "which", "swiftc").spm_chomp()
                #endif
                
                return try AbsolutePath(validating: string)
            }()

            // Load package information
            let diagnostics = DiagnosticsEngine()
            let manifest = try ManifestLoader.loadManifest(packagePath: packagePath, swiftCompiler: swiftCompiler, swiftCompilerFlags: [], packageKind: .local)
            let loadedPackage = try PackageBuilder.loadPackage(packagePath: packagePath, swiftCompiler: swiftCompiler, swiftCompilerFlags: [], diagnostics: diagnostics)
            let graph = try Workspace.loadGraph(packagePath: packagePath, swiftCompiler: swiftCompiler, swiftCompilerFlags: [], diagnostics: diagnostics)

            // Attempt to load repository
            let repository = try? Repository.discover(at: URL(fileURLWithPath: packagePath.pathString))

            // Detect license files
            var licenses: [License] = []
            do {
                for file in try FileManager.default.contentsOfDirectory(at: packagePath.asURL, includingPropertiesForKeys: nil, options: [.skipsHiddenFiles]) {
                    guard file.lastPathComponent.localizedCaseInsensitiveContains("license"),
                          let text = try? String(contentsOf: file)
                    else { continue }

                    licenses.append(.license(name: file.lastPathComponent, text: text))
                }
            }

            // Record root package products as components
            for product in graph.reachableProducts {
                guard product.targets.allSatisfy(graph.isInRootPackages) else { continue }

                let classification: Component.Classification

                switch product.type {
                case .library:
                    classification = .library
                case .executable:
                    classification = .application
                case .test:
                    continue
                }

                var component = Component(id: product.name, classification: classification)
                component.licenses = licenses

                // If the package root has a Git repository, record the latest commit
                if let head = repository?.head?.commit {
                    var commit = CycloneDX.Commit(id: head.id.description)
                    commit.author = IdentifiableAction(timestamp: head.author.time, name: head.author.name, email: head.author.email)
                    commit.committer = IdentifiableAction(timestamp: head.committer.time, name: head.committer.name, email: head.committer.email)
                    commit.message = head.message?.trimmingCharacters(in: .whitespacesAndNewlines)
                    component.pedigree = Pedigree(commits: [commit])
                }

                // Record each source file in the component
                do {
                    for path in Set(product.targets.flatMap { $0.sources.paths }) {
                        var file = Component(id: path.relative(to: packagePath).description, classification: .file)
                        file.mimeType = path.preferredMIMEType
                        file.hashes = try Hash.standardHashes(forFileAt: path)
                        component.components.append(file)
                    }
                }

                bom.components.append(component)
            }

            // Record dependency packages as components
            for dependency in graph.requiredDependencies where dependency.kind == .remote {
                var component = Component(id: dependency.name, classification: .library)

                do {
                    guard let url = URL(string: dependency.repository.url) else { break }
                    let reference = ExternalReference(kind: .vcs, url: url)
                    component.externalReferences.append(reference)
                }

                bom.components.append(component)
            }

            // Record dependencies
            for package in graph.inputPackages where !graph.isRootPackage(package) {
                bom.dependencies.append(Dependency(package))
            }

            // Print JSON representation of SBoM
            let encoder = JSONEncoder()
            encoder.outputFormatting = [.prettyPrinted]
            encoder.dateEncodingStrategy = .iso8601
            let data = try encoder.encode(bom)
            let json = String(data: data, encoding: .utf8)!
            print(json)
        }
    }
}

fileprivate extension Dependency {
    init(_ package: ResolvedPackage) {
        self.init(reference: package.name, dependsOn: package.dependencies.map(Dependency.init))
    }
}
