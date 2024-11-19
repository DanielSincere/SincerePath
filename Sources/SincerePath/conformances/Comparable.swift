import Foundation

extension SincerePath: Comparable {
  public static func < (lhs: SincerePath, rhs: SincerePath) -> Bool {
    lhs.path < rhs.path
  }
}
