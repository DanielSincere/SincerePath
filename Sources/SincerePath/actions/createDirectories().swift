import Foundation

extension SincerePath {
  public func createDirectories() throws {
    try Self.fileManager.createDirectory(atPath: self.path,
                                         withIntermediateDirectories: true)
  }
}
