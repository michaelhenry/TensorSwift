public struct Dimension {
    public let value: Int
    
    public init(_ value: Int) {
        assert(value >= 0, "`value` must be greater than or equal to 0: \(value)")
        self.value = value
    }
}

extension Dimension: IntegerLiteralConvertible {
    public init(integerLiteral value: Int) {
        self.init(value)
    }
}

extension Dimension: Equatable {}
public func ==(lhs: Dimension, rhs: Dimension) -> Bool {
    return lhs.value == rhs.value
}

extension Dimension: CustomStringConvertible {
    public var description: String {
        return value.description
    }
}
