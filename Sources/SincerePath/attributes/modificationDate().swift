import Foundation 

extension SincerePath {
	public func modificationDate() throws -> Date {
		let maybeDate = try self.attribute(for: .modificationDate) as? NSDate
		guard let date = maybeDate else {
			throw FileAttributesReadingError(key: .modificationDate, path: self)
		}
		return date as Date
	}
}
