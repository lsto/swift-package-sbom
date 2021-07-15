public struct Dependency: Hashable {
    public var reference: String

    public var dependsOn: [Dependency]

    public init(reference: String, 
                dependsOn: [Dependency] = []) 
    {
        self.reference = reference
        self.dependsOn = dependsOn
    }
}

// MARK: - Encodable

extension Dependency: Encodable {
    private enum CodingKeys: String, CodingKey {
        case reference = "ref"
        case dependsOn
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(reference, forKey: .reference)
        try container.encodeIfAny(in: dependsOn, forKey: .dependsOn)
    }
}
