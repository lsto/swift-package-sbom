public struct Composition: Hashable, Encodable {
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
