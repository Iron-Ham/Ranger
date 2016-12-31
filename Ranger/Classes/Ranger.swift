/// Allows for reverse ranges, non-inclusive on the lower bound.
/// 5..>1 == (2...5).reversed()
///
///
/// - Parameters:
///   - maximum: the maximum value of the range
///   - minimum: the minimum value of the range, non-inclusive
/// - Returns: half open countable range from maximum to minimum
infix operator ..> : RangeFormationPrecedence
public func ..><T>
    (maximum: T, minimum: T) ->
    StrideTo<T>
    where T : Comparable, T.Stride : Integer {
        return stride(from: maximum, to: minimum, by: -1)
}

/// Allows for reverse ranges, inclusive on the lower bound
/// 5>>>1 == (1...5).reversed()
///
/// - Parameters:
///   - maximum: the maximum value of the range
///   - minimum: the minimum value of the range, inclusive
/// - Returns: closed countable range from maximum to minimum
infix operator >>> : RangeFormationPrecedence
public func >>><T>
    (maximum: T, minimum: T) ->
    StrideThrough<T>
    where T : Comparable, T.Stride : Integer {
        return stride(from: maximum, through: minimum, by: -1)
}
