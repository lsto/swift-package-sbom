extension KeyedEncodingContainerProtocol {
    /// Encodes the given collection value for the given key if it is not empty.
    ///
    /// - parameter value: The value to encode.
    /// - parameter key: The key to associate the value with.
    /// - throws: `EncodingError.invalidValue` if the given value is invalid in
    ///   the current context for this format.
    public mutating func encodeIfAny<T>(in value: T, forKey key: Key) throws where T : Encodable, T : Collection {
        guard !value.isEmpty else { return }
        try encode(value, forKey: key)
    }
}
