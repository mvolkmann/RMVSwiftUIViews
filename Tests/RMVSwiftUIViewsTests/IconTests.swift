@testable import RMVSwiftUIViews
import XCTest

final class IconTests: XCTestCase {
    func testEnumCases() throws {
        XCTAssertEqual(Icon.baseball.rawValue, "baseball")
        XCTAssertEqual(Icon.bell.rawValue, "sf-bell")
        XCTAssertEqual(Icon.thumbsUp.rawValue, "sf-hand.thumbsup")
    }
}
