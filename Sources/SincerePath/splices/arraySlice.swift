import Foundation

extension Array {
  var arraySlice: ArraySlice<Element> {
    return self[self.indices.suffix(from: 0)]
  }
}
