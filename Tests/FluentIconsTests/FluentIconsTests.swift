import XCTest
@testable import FluentIcons

final class FluentIconsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(FluentIcons().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
