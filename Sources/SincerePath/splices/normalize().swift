/*
 * This section of code was heavily borrowed and inspired by [PathKit](https://github.com/kylef/PathKit/blob/master/Sources/PathKit.swift). 
 * The license for the borrowed code is available [here](https://github.com/kylef/PathKit/blob/master/LICENSE).
 */

import Foundation

extension SincerePath {
  /// Normalizes the path, this cleans up redundant ".." and ".", double slashes
  /// and resolves "~".
  ///
  /// - Returns: a new path made by removing extraneous path components from the underlying String
  ///   representation.
  ///
  public func normalize() -> SincerePath {
    SincerePath(NSString(string: self.path).standardizingPath)
  }
}
