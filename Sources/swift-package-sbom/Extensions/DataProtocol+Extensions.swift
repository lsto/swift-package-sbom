import Foundation
import CryptoKit

extension DataProtocol {
    var hexadecimal: String {
        map { String(format: "%02x", $0) }.joined()
    }
}
