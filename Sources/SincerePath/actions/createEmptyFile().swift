import Foundation

extension SincerePath {
    public func createEmptyFile() throws  {
    if !self.parent().exists {
      try self.parent().createDirectories()
    }

    try self.write(Data())
  }
}