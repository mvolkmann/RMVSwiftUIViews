// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "RMVSwiftUIViews",
    platforms: [.iOS(.v13)],
    products: [
        // This package defines a single library that defines a single target.
        .library(
            name: "RMVSwiftUIViews",
            targets: ["RMVSwiftUIViews"]
        ),
    ],
    dependencies: [], // This package doesn't depend on any others.
    targets: [
        // This target will be imported by apps.
        .target(
            name: "RMVSwiftUIViews",
            dependencies: [],
            resources: [.process("Assets.xcassets"), .copy("demo.csv")]
        ),
        // This target contains unit tests for the target above.
        .testTarget(
            name: "RMVSwiftUIViewsTests",
            dependencies: ["RMVSwiftUIViews"]
        ),
    ]
)
