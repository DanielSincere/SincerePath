/*
 * This section of code was heavily borrowed and inspired by [PathKit](https://github.com/kylef/PathKit/blob/master/Sources/PathKit.swift). 
 * The license for the borrowed code is available [here](https://github.com/kylef/PathKit/blob/master/LICENSE).
 */

import Foundation

extension SincerePath {
  /// Concatenates relative paths to the current directory and derives the normalized path
  ///
  /// - Returns: the absolute path in the actual filesystem
  ///
  public func absolute() -> SincerePath {
    if self.isAbsolute {
      return normalize()
    }

    let expandedPath = SincerePath(NSString(string: self.path).expandingTildeInPath)
    if expandedPath.isAbsolute {
      return expandedPath.normalize()
    }

    return (SincerePath.current + self).normalize()
  }
}
