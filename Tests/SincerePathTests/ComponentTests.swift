import XCTest
@testable import SincerePath

final class ComponentTests: XCTestCase {
  func testComponents() {
    XCTAssertEqual(SincerePath("/tmp/file").components, ["tmp", "file"])
    XCTAssertEqual(SincerePath("/tmp/file.txt").components.last, "file.txt")
  }
}
