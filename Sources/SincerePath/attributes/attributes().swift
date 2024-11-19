import Foundation

extension SincerePath {
  public func attributes() throws -> [FileAttributeKey: Any] {
		try Self.fileManager.attributesOfItem(atPath: self.path)
	}
}
