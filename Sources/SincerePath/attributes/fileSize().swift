import Foundation

extension SincerePath {
	public func fileSize() throws -> Int {
		let number = try self.attribute(for: .size) as? NSNumber
		guard let intValue = number?.intValue else {
			throw FileAttributesReadingError(key: .size, path: self)
		}
		return intValue
	}
}
