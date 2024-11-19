extension SincerePath {
  public func copy(to destination: SincerePath) throws {
    try Self.fileManager.copyItem(atPath: self.path, toPath: destination.path)
  }
}
