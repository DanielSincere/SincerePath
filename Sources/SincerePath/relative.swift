import Foundation

extension SincerePath {
  public func relative(to parent: SincerePath) -> SincerePath {
    var meAbs = self.absolute().path
    let parentsAbs = parent.absolute().path

    guard meAbs.starts(with: parentsAbs) else {
      return self
    }

    meAbs.removeSubrange(...parentsAbs.endIndex)

    return SincerePath(meAbs)
  }
}
