import struct Foundation.URL

public struct Commit: Hashable, Identifiable {
    public var id: String?
    public var url: URL?
    public var author: IdentifiableAction?
    public var committer: IdentifiableAction?
    public var message: String?

    public init(id: String? = nil, 
                url: URL? = nil, 
                author: IdentifiableAction? = nil, 
                committer: IdentifiableAction? = nil, 
                message: String? = nil) 
    {
        self.id = id
        self.url = url
        self.author = author
        self.committer = committer
        self.message = message
    }
}

// MARK: - Encodable

extension Commit: Encodable {
    private enum CodingKeys: String, CodingKey {
        case id
        case url
        case author
        case committer
        case message
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(author, forKey: .author)
        try container.encodeIfPresent(committer, forKey: .committer)
        try container.encodeIfPresent(message, forKey: .message)
    }
}
