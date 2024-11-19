import Foundation

extension SincerePath {
  public var isExecutable: Bool {
    Self.fileManager.isExecutableFile(atPath: self.path)
  }
}
