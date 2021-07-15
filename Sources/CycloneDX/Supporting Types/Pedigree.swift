public struct Pedigree: Hashable {
    public var ancestors: [Component]
    public var descendants: [Component]
    public var variants: [Component]
    public var commits: [Commit]
    public var patches: [Patch]
    public var notes: String?

    public init(ancestors: [Component] = [], 
                descendants: [Component] = [], 
                variants: [Component] = [], 
                commits: [Commit] = [], 
                patches: [Patch] = [],
                notes: String? = nil) 
    {
        self.ancestors = ancestors
        self.descendants = descendants
        self.variants = variants
        self.commits = commits
        self.patches = patches
        self.notes = notes
    }
}

// MARK: - Encodable

extension Pedigree: Encodable {
    public enum CodingKeys: String, CodingKey {
        case ancestors
        case descendants
        case variants
        case commits
        case patches
        case notes
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfAny(in: ancestors, forKey: .ancestors)
        try container.encodeIfAny(in: descendants, forKey: .descendants)
        try container.encodeIfAny(in: variants, forKey: .variants)
        try container.encodeIfAny(in: commits, forKey: .commits)
        try container.encodeIfAny(in: patches, forKey: .patches)
        try container.encodeIfPresent(notes, forKey: .notes)
    }
}
