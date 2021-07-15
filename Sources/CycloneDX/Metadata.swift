import Foundation

public struct Metadata: Hashable {
    public var timestamp: Date
    public var tools: [Tool]
    public var authors: [OrganizationalContact]
    public var component: Component?
    public var manufacture: OrganizationalContact?
    public var licenses: [License]
    public var properties: Properties

    public init(timestamp: Date = Date(),
                tools: [Tool] = [],
                authors: [OrganizationalContact] = [],
                component: Component? = nil,
                manufacture: OrganizationalContact? = nil,
                licenses: [License] = [],
                properties: Properties = [:])
    {
        self.timestamp = timestamp
        self.tools = tools
        self.authors = authors
        self.component = component
        self.manufacture = manufacture
        self.licenses = licenses
        self.properties = properties
    }
}

// MARK: - Encodable

extension Metadata: Encodable {
    private enum CodingKeys: String, CodingKey {
        case timestamp
        case tools
        case authors
        case component
        case manufacture
        case licenses
        case properties
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(timestamp, forKey: .timestamp)
        try container.encodeIfAny(in: tools, forKey: .tools)
        try container.encodeIfAny(in: authors, forKey: .authors)
        try container.encodeIfPresent(component, forKey: .component)
        try container.encodeIfPresent(manufacture, forKey: .manufacture)
        try container.encodeIfAny(in: licenses, forKey: .licenses)
        try container.encodeIfAny(in: properties, forKey: .properties)
    }
}
