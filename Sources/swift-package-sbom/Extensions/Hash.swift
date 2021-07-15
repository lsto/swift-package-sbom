import Foundation
import CycloneDX
import CryptoKit
import struct TSCBasic.AbsolutePath

extension CycloneDX.Hash {
    static func standardHashes(forFileAt path: AbsolutePath) throws -> [Hash] {
        guard let fileHandle = FileHandle(forReadingAtPath: path.pathString) else { fatalError() /* FIXME */ }
        defer { try? fileHandle.close() }

        var sha256Hash = SHA256()
        var sha384Hash = SHA384()
        var sha512Hash = SHA512()

        fileHandle.readabilityHandler = { handle in
            sha256Hash.update(data: handle.availableData)
            sha384Hash.update(data: handle.availableData)
            sha512Hash.update(data: handle.availableData)
        }
        let sha256Digest = [UInt8](sha256Hash.finalize())
        let sha384Digest = [UInt8](sha384Hash.finalize())
        let sha512Digest = [UInt8](sha512Hash.finalize())

        return [
            Hash(algorithm: .sha256, value: sha256Digest.hexadecimal),
            Hash(algorithm: .sha384, value: sha384Digest.hexadecimal),
            Hash(algorithm: .sha512, value: sha512Digest.hexadecimal)
        ]
    }
}
