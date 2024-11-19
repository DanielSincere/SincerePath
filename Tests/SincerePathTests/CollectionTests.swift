import XCTest
import SincerePath

class CollectionTests: XCTestCase {

	func testAllExist() {
		let paths: [SincerePath] = ["/tmp", "/usr", "/bin"]
		XCTAssertTrue(paths.allExist)

		let nonExistingPaths: [SincerePath] = ["/asdf", "/123"]
		XCTAssertFalse(nonExistingPaths.allExist)
	}
}
