@testable import RMVSwiftUIViews
import XCTest

final class LocalizeTests: XCTestCase {
    func testMessage() throws {
        let actual = try message()
        XCTAssertEqual(actual, "Hello")
    }
}
