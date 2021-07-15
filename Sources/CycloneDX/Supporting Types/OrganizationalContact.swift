public struct OrganizationalContact: Hashable {
    public var name: String?
    public var email: String?
    public var phone: String?

    public init(name: String? = nil,
                email: String? = nil,
                phone: String? = nil)
    {
        self.name = name
        self.email = email
        self.phone = phone
    }
}

// MARK: - Encodable

extension OrganizationalContact: Encodable {
    private enum CodingKeys: String, CodingKey {
        case name
        case email
        case phone
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(phone, forKey: .phone)
    }
}
