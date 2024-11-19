import Foundation

extension SincerePath {
  public var isDeletable: Bool {
    Self.fileManager.isDeletableFile(atPath: self.path)
  }
}
