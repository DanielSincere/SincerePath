import Foundation
import XCTest
import SincerePath

class FileExtensionTests: XCTestCase {
	func testFileExtension() {
		XCTAssertEqual(SincerePath("vim").extension, nil)
		XCTAssertEqual(SincerePath("asdf.txt").extension, "txt")
		XCTAssertEqual(SincerePath("asdf.html.asp").extension, "asp")

		XCTAssertEqual(SincerePath("/tmp/file.txt").filename, "file.txt")
		XCTAssertEqual(SincerePath("/tmp/file.txt").filenameWithoutExtension, "file")
		XCTAssertEqual(SincerePath("/tmp/file.txt").path(newExtension: "gif"), "/tmp/file.gif")
		XCTAssertEqual(SincerePath("/tmp/file.txt").replacingExtension(with: "gif"), "file.gif")
	}	
}
