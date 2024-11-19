extension SincerePath {

	public func isEmpty() throws -> Bool {
		try self.fileSize() == 0
	}
}
