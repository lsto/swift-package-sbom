import struct Foundation.UUID

public struct BillOfMaterials: Hashable {
    public typealias Reference = String

    public let format: String = "CycloneDX"
    public let specificationVersion: String = "1.2"

    public var version: Int?
    public var serialNumber: UUID?

    public var metadata: Metadata
    public var components: [Component]
    public var services: [Service]
    public var externalReferences: [ExternalReference]
    public var dependencies: [Dependency]
    public var compositions: [Composition]
    public var properties: Properties

    public init(version: Int? = nil,
                serialNumber: UUID = UUID(),
                metadata: Metadata = Metadata(),
                components: [Component] = [],
                services: [Service] = [],
                externalReferences: [ExternalReference] = [],
                dependencies: [Dependency] = [],
                compositions: [Composition] = [],
                properties: Properties = [:]) 
    {
        self.version = version
        self.serialNumber = serialNumber
        self.metadata = metadata
        self.components = components
        self.services = services
        self.externalReferences = externalReferences
        self.dependencies = dependencies
        self.compositions = compositions
        self.properties = properties
    }
}

// MARK: - Encodable

extension BillOfMaterials: Encodable {
    private enum CodingKeys: String, CodingKey {
        case format
        case specificationVersion = "specVersion"
        case version
        case serialNumber
        case metaData = "metadata"
        case components
        case services
        case externalReferences
        case dependencies
        case compositions
        case properties
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(format, forKey: .format)
        try container.encode(specificationVersion, forKey: .specificationVersion)
        if let serialNumber = self.serialNumber {
            try container.encode("urn:uuid:\(serialNumber.uuidString)", forKey: .serialNumber)
        }

        try container.encode(metadata, forKey: .metaData)

        try container.encodeIfAny(in: components, forKey: .components)
        try container.encodeIfAny(in: services, forKey: .services)
        try container.encodeIfAny(in: externalReferences, forKey: .externalReferences)
        try container.encodeIfAny(in: dependencies, forKey: .dependencies)
        try container.encodeIfAny(in: compositions, forKey: .compositions)
        try container.encodeIfAny(in: properties, forKey: .properties)
    }
}

public typealias BOM = BillOfMaterials
