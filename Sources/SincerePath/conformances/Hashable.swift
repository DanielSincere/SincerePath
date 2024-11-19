import Foundation

extension SincerePath: Hashable {
  public func hash(into hasher: inout Hasher) {
    hasher.combine(path)
  }
}
