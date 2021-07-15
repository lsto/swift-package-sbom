import ArgumentParser

struct SwiftPackageSBOM: ParsableCommand {
    static var configuration = CommandConfiguration(
        abstract: "A utility for generating a software bill of materials for a Swift package.",
        version: "0.0.1",
        subcommands: [Generate.self]
    )
}

SwiftPackageSBOM.main()
