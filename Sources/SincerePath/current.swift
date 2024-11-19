extension SincerePath {
  public static var current: SincerePath {
    SincerePath(Self.fileManager.currentDirectoryPath)
  }
}
