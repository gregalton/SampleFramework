import XCTest
@testable import SampleFramework

final class SampleFrameworkTests: XCTestCase {
    
    func testRedColor() {
        let color = SampleFramework.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    static var allTests = [
        ("testRedColor", testRedColor),
    ]
}
