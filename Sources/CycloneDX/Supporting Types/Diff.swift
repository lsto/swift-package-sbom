import struct Foundation.URL

public struct Diff: Hashable {
    public var text: String? = nil
    public var url: URL? = nil

    public init(text: String? = nil,
                url: URL? = nil)
    {
        self.text = text
        self.url = url
    }
}

// MARK: - Encodable

extension Diff: Encodable {
    private enum CodingKeys: String, CodingKey {
        case text
        case url
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(text, forKey: .text)
        try container.encodeIfPresent(url, forKey: .url)
    }
}
