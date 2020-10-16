// swift-tools-version:5.1
import PackageDescription

let pkg = Package(name: "ReSwift")
pkg.platforms = [
    .macOS(.v10_10), .iOS(.v12), .tvOS(.v9), .watchOS(.v2)
]
pkg.products = [
    .library(name: "ReSwift", targets: ["ReSwift"])
]

let pmk: Target = .target(name: "ReSwift")
pmk.path = "ReSwift"
pkg.targets = [
    pmk,
    .testTarget(name: "ReSwiftTests", dependencies: ["ReSwift"], path: "ReSwiftTests")
]
