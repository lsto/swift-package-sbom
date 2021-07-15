import struct Foundation.URL

public struct OrganizationalEntity: Hashable {
    public var name: String?
    public var url: URL?
    public var contacts: [OrganizationalContact]

    public init(name: String? = nil,
                url: URL? = nil,
                contacts: [OrganizationalContact] = [])
    {
        self.name = name
        self.url = url
        self.contacts = contacts
    }
}

// MARK: - Encodable

extension OrganizationalEntity: Encodable {
    private enum CodingKeys: String, CodingKey {
        case name
        case url
        case contacts = "contact"
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfAny(in: contacts, forKey: .contacts)
    }
}
