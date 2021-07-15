import struct Foundation.URL

public struct Issue: Hashable {
    public enum Classification: String, Hashable, Encodable {
        case defect
        case enhancement
        case security
    }

    public struct Source: Hashable {
        public var name: String?
        public var url: URL?

        public init(name: String? = nil,
                    url: URL? = nil)
        {
            self.name = name
            self.url = url
        }
    }

    public var classification: Classification
    public var name: String?
    public var description: String?
    public var source: Source?
    public var references: [URL]

    public init(classification: Classification,
                name: String? = nil,
                description: String? = nil,
                source: Source? = nil,
                references: [URL] = [])
    {
        self.classification = classification
        self.name = name
        self.description = description
        self.source = source
        self.references = references
    }
}

// MARK: - Encodable

extension Issue: Encodable {
    private enum CodingKeys: String, CodingKey {
        case classification
        case name
        case description
        case source
        case references
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(classification, forKey: .classification)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(description, forKey: .source)
        try container.encodeIfAny(in: references, forKey: .references)
    }
}

extension Issue.Source: Encodable {
    private enum CodingKeys: String, CodingKey {
        case name
        case url
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(url, forKey: .url)
    }
}

