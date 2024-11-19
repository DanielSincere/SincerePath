import Foundation

extension SincerePath {
  public func delete() throws {
    try Self.fileManager.removeItem(atPath: self.path)
  }
}
