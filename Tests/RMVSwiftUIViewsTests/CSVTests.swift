@testable import RMVSwiftUIViews
import XCTest

final class CSVTests: XCTestCase {
    func testParseCSV() throws {
        let actual = try parseCSV(fileName: "demo.csv")
        let expected = [
            ["Name", "Score"],
            ["Mark", "19"],
            ["Tami", "21"],
        ]
        XCTAssertEqual(actual, expected)
    }
}
