import Foundation

extension SincerePath {
	public func creationDate() throws -> Date {
		let maybeDate = try self.attribute(for: .creationDate) as? NSDate
		guard let date = maybeDate else {
			throw FileAttributesReadingError(key: .creationDate, path: self)
		}
		return date as Date
	}
}
