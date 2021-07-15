import struct Foundation.Date

public struct IdentifiableAction: Hashable {
    public var timestamp: Date?
    public var name: String?
    public var email: String?

    public init(timestamp: Date? = nil,
                name: String? = nil,
                email: String? = nil)
    {
        self.timestamp = timestamp
        self.name = name
        self.email = email
    }
}

// MARK: - Encodable

extension IdentifiableAction: Encodable {
    private enum CodingKeys: String, CodingKey {
        case timestamp
        case name
        case email
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(timestamp, forKey: .name)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(email, forKey: .email)
    }
}
