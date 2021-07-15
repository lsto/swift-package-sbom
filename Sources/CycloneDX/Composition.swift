public struct Composition: Hashable {
    public enum Aggregate: String, Hashable, Encodable {
        case complete
        case incomplete
        case incompleteFirstPartyOnly = "incomplete_first_party_only"
        case incompleteThirdPartyOnly = "incomplete_third_party_only"
        case unknown
        case notSpecified = "not_specified"
    }

    public var aggregates: [Aggregate]
    public var assemblies: [BOM.Reference]
    public var dependencies: [Dependency]

    public init(
        aggregates: [Aggregate] = [],
        assemblies: [BOM.Reference] = [], 
        dependencies: [Dependency] = []
    ) {
        self.aggregates = aggregates
        self.assemblies = assemblies
        self.dependencies = dependencies
    }
}

// MARK: - Encodable

extension Composition: Encodable {
    private enum CodingKeys: String, CodingKey {
        case aggregates
        case assemblies
        case dependencies
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfAny(in: aggregates, forKey: .aggregates)
        try container.encodeIfAny(in: assemblies, forKey: .assemblies)
        try container.encodeIfAny(in: dependencies, forKey: .dependencies)
    }
}
