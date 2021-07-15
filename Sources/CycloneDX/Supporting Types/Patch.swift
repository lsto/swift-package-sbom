public struct Patch: Hashable {
    public enum Classification: String, Hashable, Encodable {
        case unofficial
        case monkey
        case backport
        case cherryPick = "cherry-pick"
    }

    public var classification: Classification
    public var diff: Diff?
    public var resolves: [Issue]

    public init(classification: Classification, 
                diff: Diff? = nil, 
                resolves: [Issue] = []) 
    {
        self.classification = classification
        self.diff = diff
        self.resolves = resolves
    }
}

// MARK: - Encodable

extension Patch: Encodable {
    private enum CodingKeys: String, CodingKey {
        case classification
        case diff
        case resolves
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(classification, forKey: .classification)
        try container.encodeIfPresent(diff, forKey: .diff)
        try container.encodeIfAny(in: resolves, forKey: .resolves)
    }        
}
