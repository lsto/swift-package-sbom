public struct Hash: Hashable, Encodable {
    public var algorithm: String
    public var value: String

    public init(algorithm: String, value: String) {
        self.algorithm = algorithm
        self.value = value
    }
}
