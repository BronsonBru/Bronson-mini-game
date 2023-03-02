import Foundation

public extension Array {
    mutating func append(_ value: Element, if shouldAppend: Bool) {
        if shouldAppend {
            append(value)
        }
    }

    mutating func appendIfNotNil(_ value: Element?) {
        if let value = value {
            append(value)
        }
    }

    /// Returns the element at the specified index if it is within bounds, otherwise nil.
    subscript (safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension Array where Element: Equatable {
    func item(after item: Element) -> Element? {
        if let itemIndex = self.firstIndex(of: item) {
            return self[safe: index(after: itemIndex)]
        }
        return nil
    }
}
