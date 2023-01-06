import SwiftUI

// Each icon must have both a hollow and a filled version.
// The hollow version is used when "off"
// and the filled version is used when "on".
public enum Icon: String {
    case baseball
    case basketball
    case bell = "sf-bell"
    case bookmark = "sf-bookmark"
    case custom // to use an image in the using project
    case flag = "sf-flag"
    case football
    case heart = "sf-heart"
    case star = "sf-star"
    case thumbsUp = "sf-hand.thumbsup"

    func image(fill: Bool) -> Image {
        let suffix = fill ? ".fill" : ""
        if rawValue.prefix(3) == "sf-" {
            let systemName = String(rawValue.dropFirst(3)) + suffix
            return Image(systemName: systemName)
        }
        return rawValue == "custom" ?
            Image(rawValue + suffix) : // gets from the app bundle
            Image(rawValue + suffix, bundle: .module) // gets from this bundle
    }
}
