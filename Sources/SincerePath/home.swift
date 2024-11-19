#if os(macOS) && !targetEnvironment(macCatalyst)
extension SincerePath {
  public static var home: SincerePath {
    SincerePath(url: SincerePath.fileManager.homeDirectoryForCurrentUser)
  }
}
#endif
