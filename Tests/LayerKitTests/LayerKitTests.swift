import XCTest
@testable import LayerKit

final class LayerKitTests: XCTestCase {
    func testLayerBackgroundColor() {
        XCTAssertEqual(
            Layer(backgroundColor: UIColor.white.cgColor).backgroundColor,
            Layer {
                $0.background(color: UIColor.white.cgColor)
            }.backgroundColor
        )
    }

    static var allTests = [
        ("testLayerBackgroundColor", testLayerBackgroundColor),
    ]
}
