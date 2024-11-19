import Foundation

extension SincerePath {  
  public var exists: Bool {
    Self.fileManager.fileExists(atPath: self.path)
  }
}
