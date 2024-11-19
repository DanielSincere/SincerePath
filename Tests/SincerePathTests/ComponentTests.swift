import XCTest
@testable import SincerePath

final class ComponentTests: XCTestCase {
  func testComponents() {
    XCTAssertEqual(Path("/tmp/file").components, ["tmp", "file"])
    XCTAssertEqual(Path("/tmp/file.txt").components.last, "file.txt")
  }
}
