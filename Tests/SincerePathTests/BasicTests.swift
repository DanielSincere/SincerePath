import XCTest
@testable import SincerePath

final class BasicTests: XCTestCase {
  func testExists() {
    XCTAssertEqual(SincerePath("/tmp").exists, true)
    XCTAssertEqual(SincerePath.current.exists, true)
  }

  func testDefaultConstructor() {
    XCTAssertEqual(SincerePath().string, "")
  }

  func testURLConversion() {
    let path = SincerePath("/bin/sh")
    let url = URL(fileURLWithPath: "/bin/sh")
    XCTAssertEqual(path.url, url)
    XCTAssertEqual(path.url.absoluteString, "file:///bin/sh")
    XCTAssertEqual(url.absoluteString, "file:///bin/sh")
  }

  func testCurrentPath() {
    let actual = SincerePath.current
    let expected = SincerePath(FileManager.default.currentDirectoryPath)

    XCTAssertEqual(actual, expected)
  }

#if os(macOS) && !targetEnvironment(macCatalyst)
 func testHomePath() {
    let actual = SincerePath.home
    let expected = SincerePath(url: FileManager.default.homeDirectoryForCurrentUser)

    XCTAssertEqual(actual, expected)
  }
#endif
}