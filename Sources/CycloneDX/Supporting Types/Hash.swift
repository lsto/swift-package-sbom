public struct Hash: Hashable, Encodable {
    public enum Algorithm: String, Encodable {
        case md5 = "MD5"
        case sha1 = "SHA-1"
        case sha256 = "SHA-256"
        case sha384 = "SHA-384"
        case sha512 = "SHA-512"
        case sha3_256 = "SHA3-256"
        case sha3_384 = "SHA3-384"
        case sha3_512 = "SHA3-512"
        case blake2b_256 = "BLAKE2b-256"
        case blake2b_384 = "BLAKE2b-384"
        case blake2b_512 = "BLAKE2b-512"
        case blake3 = "BLAKE3"
    }

    public var algorithm: Algorithm
    public var value: String

    public init(algorithm: Algorithm,
                value: String)
    {
        self.algorithm = algorithm
        self.value = value
    }
}
