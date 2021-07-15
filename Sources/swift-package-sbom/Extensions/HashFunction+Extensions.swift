import Foundation
import CryptoKit
import struct TSCBasic.AbsolutePath

extension HashFunction {
    static func checksum(_ data: Data) throws -> String {
        var hash = self.init()
        hash.update(data: data)
        let digest = [UInt8](hash.finalize())

        return digest.hexadecimal
    }

    static func checksum(_ string: String) throws -> String {
        guard let data = string.data(using: .utf8) else { fatalError() /* FIXME */ }
        return try checksum(data)
    }

    static func checksum(_ path: AbsolutePath) throws -> String {
        guard let fileHandle = FileHandle(forReadingAtPath: path.pathString) else { fatalError() /* FIXME */ }
        defer { try? fileHandle.close() }

        var hash = self.init()
        fileHandle.readabilityHandler = { handle in
            hash.update(data: handle.availableData)
        }
        let digest = [UInt8](hash.finalize())

        return digest.hexadecimal
    }
}
