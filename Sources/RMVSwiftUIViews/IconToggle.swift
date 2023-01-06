import SwiftUI

/// Custom SwiftUI View that does an icon in its hollow or filled form
/// based on a Bool binding.
public struct IconToggle: View {
    var icon: Icon
    var color: Color
    var size: Double
    @Binding var isOn: Bool

    ///  Creates an instance of this view.
    /// - Parameters:
    ///   - icon: Icon enum case specifying the icon to display
    ///   - color: icon color
    ///   - size: icon size
    ///   - isOn: binding to a Bool that indicates when an option is "on"
    public init(
        icon: Icon, // required
        color: Color = .black,
        size: Double = 20,
        isOn: Binding<Bool> // required
    ) {
        self.icon = icon
        self.color = color
        self.size = size
        _isOn = isOn
    }

    public var body: some View {
        icon.image(fill: isOn)
            .resizable()
            .scaledToFit()
            .foregroundColor(color)
            .onTapGesture { isOn.toggle() }
            .frame(width: size, height: size)
    }
}
