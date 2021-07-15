public struct Tool: Hashable {
    public var vendor: String?
    public var name: String?
    public var version: String?
    public var hashes: [Hash]

    public init(vendor: String? = nil,
                name: String? = nil,
                version: String? = nil,
                hashes: [Hash] = [])
    {
        self.vendor = vendor
        self.name = name
        self.version = version
        self.hashes = hashes
    }
}

// MARK: - Encodable

extension Tool: Encodable {
    private enum CodingKeys: String, CodingKey {
        case vendor
        case name
        case version
        case hashes
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(vendor, forKey: .vendor)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfAny(in: hashes, forKey: .hashes)
    }
}
