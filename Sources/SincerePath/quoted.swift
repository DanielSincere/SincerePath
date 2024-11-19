extension SincerePath {
  public var quoted: String {
    if !path.starts(with: "\"") && !path.hasSuffix("\"") && !path.contains("\"") {
      return "\"\(self.path)\""
    } else {
      return self.path
    }
  }
}
