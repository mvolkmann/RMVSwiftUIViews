@testable import RMVSwiftUIViews
import SwiftUI
import XCTest

final class RMVSwiftUIViewsTests: XCTestCase {
    func testDefaultParameters() throws {
        var bindingValue = false
        let binding = Binding(
            get: { bindingValue },
            set: { bindingValue = $0 }
        )
        let view = IconToggle(icon: .football, isOn: binding)
        XCTAssertEqual(view.color, Color.black)
        XCTAssertEqual(view.size, 20)
    }

    func testSuppliedParameters() throws {
        var bindingValue = false
        let binding = Binding(
            get: { bindingValue },
            set: { bindingValue = $0 }
        )
        let color: Color = .red
        let size = 50.0
        let view = IconToggle(
            icon: .football,
            color: color,
            size: size,
            isOn: binding
        )
        XCTAssertEqual(view.color, color)
        XCTAssertEqual(view.size, size)
    }
}
