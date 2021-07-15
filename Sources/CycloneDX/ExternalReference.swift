import struct Foundation.URL

public struct ExternalReference: Hashable {
    public enum Kind: String, Hashable, Encodable {
        case vcs
        case issueTracker = "issue-tracker"
        case website
        case advisories
        case bom
        case mailingList = "mailing-list"
        case social = "social"
        case chat
        case documentation
        case support
        case distribution
        case license
        case buildMeta = "build-meta"
        case buildSystem = "build-system"
        case other
    }

    public var kind: Kind
    public var url: URL
    public var comment: String?
    public var hashes: [Hash]

    public init(kind: Kind, 
                url: URL, 
                comment: String? = nil, 
                hashes: [Hash] = []) 
    {
        self.kind = kind
        self.url = url
        self.comment = comment
        self.hashes = hashes
    }
}

// MARK: - Encodable

extension ExternalReference: Encodable {
    private enum CodingKeys: String, CodingKey {
        case kind = "type"
        case url
        case comment
        case hashes
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(kind, forKey: .kind)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(comment, forKey: .comment)
        try container.encodeIfAny(in: hashes, forKey: .hashes)
    }
}
