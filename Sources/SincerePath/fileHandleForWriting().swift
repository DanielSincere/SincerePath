import Foundation

extension SincerePath {
  public func fileHandleForWriting() throws -> FileHandle {
    try FileHandle(forWritingTo: self.url)
  } 
}
