import Foundation

extension SincerePath {
  public var components: [String] {
    path.split(separator: Character(Self.separator)).map(String.init)
  }
}
