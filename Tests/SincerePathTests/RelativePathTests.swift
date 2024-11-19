import Foundation
import XCTest
@testable import SincerePath

final class RelativePathTests: XCTestCase {
  func testParent() {
    let current = SincerePath.current
    let parent = SincerePath.current.parent()
    
    let dotdot = current + ".."
    XCTAssertEqual(parent.absolute().path, dotdot.absolute().path)
  }
  
  func testParentParent() {
    let current = SincerePath.current
    let parent = SincerePath.current.parent().parent()
    
    let dotdotdotdot = current + ".." + ".."
    XCTAssertEqual(parent.path, dotdotdotdot.path)
    XCTAssertEqual(parent.absolute().path, dotdotdotdot.absolute().path)
  }

  func testSibling() {
    let current = SincerePath.current
    let sibling = SincerePath.current.parent() + "sibling"

    XCTAssertEqual((current + "../sibling").path, sibling.path)
    XCTAssertEqual((current + "../sibling").absolute().path, sibling.absolute().path)
  }

  func testRelative() {
    let base: SincerePath = "/abc/xyz"
    let longPath: SincerePath = "/abc/xyz/long/path"

    XCTAssertEqual(longPath.relative(to: base), "long/path")
  }

  func testConcat() {
    let path: SincerePath = "abc" + "xyz"
    XCTAssertEqual(path.string, "abc/xyz")
  }

  func testAsRelative() {
    let one: SincerePath = "abc"
    let two: SincerePath = "/xyz"

    XCTAssertEqual(one.asRelative.string, "abc")
    XCTAssertEqual(two.asRelative.string, "xyz")
    
    XCTAssertEqual(one + two, "/xyz")
    XCTAssertEqual(one + two.asRelative, "abc/xyz")
  }
}
