// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "ReSwift",
    platforms: [.iOS(.v12), .macOS("10.10"), .tvOS("9.0"), .watchOS("2.0")],
    products: [
        .library(name: "ReSwift", targets: ["ReSwift"])
    ],
    targets: [
        .target(
            name: "ReSwift",
            path: "ReSwift"
        ),
        .testTarget(
            name: "ReSwiftTests",
            dependencies: ["ReSwift"],
            path: "ReSwiftTests"
        )
    ]
)
