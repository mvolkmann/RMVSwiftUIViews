@testable import RMVSwiftUIViews
import XCTest

final class LocalizeTests: XCTestCase {
    func testMessage() throws {
        let lang = Locale.preferredLanguages.first
        guard let lang else { throw "language not set" }
        let actual = try message()
        let expected =
            lang == "en" ? "Hello" :
            lang == "es" ? "Hola" :
            lang == "fr" ? "Bonjour" :
            "unsupported language \(lang)"
        XCTAssertEqual(actual, expected)
    }
}
