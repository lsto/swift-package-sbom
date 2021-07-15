public struct Component: Identifiable, Hashable {
    public enum Classification: String, Hashable, Encodable {
        case application
        case framework
        case library
        case container
        case operatingSystem = "operating-system"
        case device
        case firmware
        case file
    }

    public enum Scope: String, Hashable, Encodable {
        case required
        case optional
        case excluded
    }

    public struct Evidence: Hashable, Encodable {
        public var licenses: License?
        public var copyright: Copyright?

        public init(licenses: License? = nil,
                    copyright: Copyright? = nil) 
        {
            self.licenses = licenses
            self.copyright = copyright
        }
    }

    public var id: String
    public var classification: Classification
    public var mimeType: String?

    public var supplier: OrganizationalEntity?
    public var author: String?
    public var publisher: String?
    public var group: String?
    public var version: String?
    public var description: String?
    public var scope: Scope?
    public var hashes: [Hash]
    public var licenses: [License]
    public var copyright: String?
    public var cpe: CPE?
    public var purl: String?
    public var modified: Bool?
    public var pedigree: Pedigree?
    public var externalReferences: [ExternalReference]
    public var properties: Properties
    public var components: [Component]
    public var evidence: [Evidence]

    public init(id: String,
                classification: Classification,
                mimeType: String? = nil,
                supplier: OrganizationalEntity? = nil,
                author: String? = nil,
                publisher: String? = nil,
                group: String? = nil,
                version: String? = nil,
                description: String? = nil,
                scope: Scope? = nil,
                hashes: [Hash] = [],
                licenses: [License] = [],
                copyright: String? = nil,
                cpe: CPE? = nil,
                purl: String? = nil,
                modified: Bool? = nil,
                pedigree: Pedigree? = nil,
                externalReferences: [ExternalReference] = [],
                properties: Properties = [:],
                components: [Component] = [],
                evidence: [Evidence] = []) 
    {
        self.id = id
        self.classification = classification
        self.mimeType = mimeType
        self.supplier = supplier
        self.author = author
        self.publisher = publisher
        self.group = group
        self.version = version
        self.description = description
        self.scope = scope
        self.hashes = hashes
        self.licenses = licenses
        self.copyright = copyright
        self.cpe = cpe
        self.purl = purl
        self.modified = modified
        self.pedigree = pedigree
        self.externalReferences = externalReferences
        self.properties = properties
        self.components = components
        self.evidence = evidence
    }
}

// MARK: - Encodable

extension Component: Encodable {
    private enum CodingKeys: String, CodingKey {
        case id
        case classification
        case mimeType = "mime-type"
        case supplier
        case author
        case publisher
        case group
        case version
        case description
        case scope
        case hashes
        case licenses
        case copyright
        case cpe
        case purl
        case modified
        case pedigree
        case externalReferences
        case properties
        case components
        case evidence
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(classification, forKey: .classification)
        try container.encodeIfPresent(mimeType, forKey: .mimeType)

        try container.encodeIfPresent(supplier, forKey: .supplier)
        try container.encodeIfPresent(author, forKey: .author)
        try container.encodeIfPresent(publisher, forKey: .publisher)
        try container.encodeIfPresent(group, forKey: .group)
        try container.encodeIfPresent(version, forKey: .version)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfAny(in: hashes, forKey: .hashes)
        try container.encodeIfAny(in: licenses, forKey: .licenses)
        try container.encodeIfPresent(copyright, forKey: .copyright)
        try container.encodeIfPresent(cpe, forKey: .cpe)
        try container.encodeIfPresent(purl, forKey: .purl)
        try container.encodeIfPresent(modified, forKey: .modified)
        try container.encodeIfPresent(pedigree, forKey: .pedigree)
        try container.encodeIfAny(in: externalReferences, forKey: .externalReferences)
        try container.encodeIfAny(in: properties, forKey: .properties)
        try container.encodeIfAny(in: components, forKey: .components)
        try container.encodeIfAny(in: evidence, forKey: .evidence)
    }
}
