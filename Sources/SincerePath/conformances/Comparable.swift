import Foundation

extension SincerePath {
  public static func < (lhs: SincerePath, rhs: SincerePath) -> Bool {
    lhs.path < rhs.path
  }

}
