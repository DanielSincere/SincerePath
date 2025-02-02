import Foundation

extension SincerePath {
  public func clear() throws {
    try self.write(Data())
  }

  public func read() throws -> Data {
    try Data(contentsOf: self.url, options: [])
  }

  public func write(_ data: Data) throws {
    try data.write(to: self.url)
  }

  public func read(encoding: String.Encoding) throws -> String {
    try String(contentsOf: self.url, encoding: encoding)
  }

  public func write(_ string: String, encoding: String.Encoding) throws {
    try string.write(to: self.url, atomically: true, encoding: encoding)
  }
}

extension Data {
  public init(path: SincerePath) throws {
    self = try path.read()
  }

  public func write(to path: SincerePath) throws {
    try path.write(self)
  }
}

extension String {
  public func write(to path: SincerePath, encoding: String.Encoding = .utf8) throws {
    try path.write(self, encoding: encoding)
  }

  public init(path: SincerePath, trimming: Bool = true, encoding: String.Encoding = .utf8) throws {
    let string = try path.read(encoding: encoding)

    if trimming {
      self = string.trimmingCharacters(in: .whitespacesAndNewlines) 
    } else {
      self = string
    }
  }
}