// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NCW-Logger",
    platforms: [.iOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "NCW-Logger",
            targets: ["NCW-Logger"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "git@github.com:SwiftyBeaver/SwiftyBeaver.git", from: "1.9.5")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "NCW-Logger",
            dependencies: ["SwiftyBeaver"],
            path: "Sources"),
        .testTarget(
            name: "NCW-LoggerTests",
            dependencies: ["NCW-Logger"]),
    ],
    swiftLanguageVersions: [.v5]
)
