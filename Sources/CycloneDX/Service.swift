import struct Foundation.URL

public struct Service: Identifiable, Hashable, Encodable {
    public enum DataFlow: String, Hashable, Encodable {
        case inbound
        case outbound
        case bidirectional = "bi-directional"
        case unknown
    }

    public var id: String

    public var provider: OrganizationalEntity?
    public var group: String?
    public var name: String
    public var version: String?
    public var description: String?
    public var endpoints: [URL]
    public var authenticated: Bool?
    public var trustBoundary: Bool?
    public var dataFlow: DataFlow?
    public var licenses: [License]
    public var externalReferences: [ExternalReference]
    public var properties: Properties
    public var services: [Service]

    public init(id: String,
                provider: OrganizationalEntity? = nil,
                group: String? = nil,
                name: String,
                version: String? = nil,
                description: String? = nil,
                endpoints: [URL] = [],
                authenticated: Bool? = nil,
                trustBoundary: Bool? = nil,
                dataFlow: DataFlow? = nil,
                licenses: [License] = [],
                externalReferences: [ExternalReference] = [],
                properties: Properties = [:],
                services: [Service] = []) 
    {
        self.id = id
        self.provider = provider
        self.group = group
        self.name = name
        self.version = version
        self.description = description
        self.endpoints = endpoints
        self.authenticated = authenticated
        self.trustBoundary = trustBoundary
        self.dataFlow = dataFlow
        self.licenses = licenses
        self.externalReferences = externalReferences
        self.properties = properties
        self.services = services
    }
}
