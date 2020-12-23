import XCTest
@testable import LayerKit

final class LayerKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(LayerKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
