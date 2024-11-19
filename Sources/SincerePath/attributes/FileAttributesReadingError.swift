import Foundation

public struct FileAttributesReadingError: Error {
	public let key: FileAttributeKey
	public let path: SincerePath
}
