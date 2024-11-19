import Foundation

extension SincerePath { 
  public var isAbsolute: Bool {
    path.hasPrefix(Self.separator)
  }
}
