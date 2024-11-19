import Foundation

public func +(lhs: SincerePath, rhs: SincerePath) -> SincerePath {
  // return innerConcat(lhs.path, rhs.path)
  lhs.path + rhs.path
}

public func +(lhs: SincerePath, rhs: String) -> SincerePath {
  lhs.path + rhs
  // self.innerConcat(lhs.path, rhs)
}

private func +(lhs: String, rhs: String) -> SincerePath {
  if rhs.hasPrefix(SincerePath.separator) {
    // Absolute paths replace relative paths
    return SincerePath(rhs)
  } else {
    var lSlice = NSString(string: lhs).pathComponents.arraySlice
    var rSlice = NSString(string: rhs).pathComponents.arraySlice

    // Get rid of trailing "/" at the left side
    if lSlice.count > 1 && lSlice.last == SincerePath.separator {
      lSlice.removeLast()
    }

    // Advance after the first relevant "."
    lSlice = lSlice.filter { $0 != "." }.arraySlice
    rSlice = rSlice.filter { $0 != "." }.arraySlice

    // Eats up trailing components of the left and leading ".." of the right side
    while lSlice.last != ".." && !lSlice.isEmpty && rSlice.first == ".." {
      if lSlice.count > 1 || lSlice.first != SincerePath.separator {
        // A leading "/" is never popped
        lSlice.removeLast()
      }
      if !rSlice.isEmpty {
        rSlice.removeFirst()
      }

      switch (lSlice.isEmpty, rSlice.isEmpty) {
      case (true, _):
        break
      case (_, true):
        break
      default:
        continue
      }
    }

    return SincerePath(components: lSlice + rSlice)
  }
}
