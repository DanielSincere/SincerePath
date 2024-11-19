import Foundation

extension SincerePath {
  public func attribute(for attribute: FileAttributeKey) throws -> Any? {
		let attributes = try self.attributes()
		return attributes[attribute]
	}
}
