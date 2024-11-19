import Foundation

extension SincerePath {
  public init(url: URL) {
    self.init(url.absoluteURL.standardizedFileURL.path)
  }
}
