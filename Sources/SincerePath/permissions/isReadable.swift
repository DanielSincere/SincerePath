import Foundation

extension SincerePath {
  public var isReadable: Bool {
    Self.fileManager.isReadableFile(atPath: self.path)
  }
}
