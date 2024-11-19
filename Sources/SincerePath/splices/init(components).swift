import Foundation

extension SincerePath {
  public init<S : Collection>(components: S) where S.Iterator.Element == String {
    if components.isEmpty {
      path = "."
    } else if components.first == SincerePath.separator && components.count > 1 {
      let p = components.joined(separator: SincerePath.separator)
      path = String(p[p.index(after: p.startIndex)...])
    } else {
      path = components.joined(separator: SincerePath.separator)
    }
  }
}
