import Foundation
extension SincerePath {
  public var asRelative: SincerePath {
    guard isAbsolute else {
      return self
    }    
    
    return SincerePath(String(string[string.index(after: string.startIndex)...]))
  }
}
