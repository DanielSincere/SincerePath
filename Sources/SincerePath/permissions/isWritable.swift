import Foundation

extension SincerePath {
  public var isWritable: Bool {
    Self.fileManager.isWritableFile(atPath: self.path)
  }
}
