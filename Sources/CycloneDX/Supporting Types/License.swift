import struct Foundation.URL

public enum License: Hashable {
    case spdx(id: String, text: String? = nil, url: URL? = nil)
    case license(name: String, text: String? = nil, url: URL? = nil)
    case expression(String)
}

// MARK: - Encodable

extension License: Encodable {
    private enum ChoiceCodingKeys: String, CodingKey {
        case license
        case expression
    }

    private enum LicenseCodingKeys: String, CodingKey {
        case id
        case name
        case text
        case url
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: ChoiceCodingKeys.self)

        switch self {
        case .spdx(id: let id, text: let text, url: let url):
            var nestedContainer = container.nestedContainer(keyedBy: LicenseCodingKeys.self, forKey: .license)
            try nestedContainer.encode(id, forKey: .id)
            try nestedContainer.encodeIfPresent(text, forKey: .text)
            try nestedContainer.encodeIfPresent(url, forKey: .url)
        case .license(name: let name, text: let text, url: let url):
            var nestedContainer = container.nestedContainer(keyedBy: LicenseCodingKeys.self, forKey: .license)
            try nestedContainer.encode(name, forKey: .name)
            try nestedContainer.encodeIfPresent(text, forKey: .text)
            try nestedContainer.encodeIfPresent(url, forKey: .url)
        case .expression(let expression):
            var nestedContainer = container.nestedUnkeyedContainer(forKey: .expression)
            try nestedContainer.encode(expression)
        }
    }
}
