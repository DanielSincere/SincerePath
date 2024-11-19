import Foundation

public struct SincerePath: Codable, Equatable {
  static let fileManager: FileManager = FileManager.default
  public let path: String
  public init(_ path: String = "") {
    self.path = path
  }

  public static let separator: String = "/"
    
  public var string: String {
    path
  }

  /// The file extension 
  ///
  /// - Returns: the file extension
  public var `extension`: String? {
		guard let dotIndex = path.lastIndex(of: ".") else {
			return nil
		}

		let afterDotIndex = path.index(after: dotIndex)
		let suffix = path.suffix(from: afterDotIndex)
		return String(suffix)
  }

  public var filename: String {
    self.components.last ?? ""
  }

  public var filenameWithoutExtension: String {
    let filename = self.filename

    guard let dotIndex = filename.lastIndex(of: ".") else {
			return filename
		}

		let stem = filename.prefix(upTo: dotIndex)
		return String(stem)
  }

  public func path(newExtension: String) -> SincerePath {
    parent() + replacingExtension(with: newExtension)
  }

  public func replacingExtension(with newExtension: String) -> String {
    self.filenameWithoutExtension + "." + newExtension
  }
}
