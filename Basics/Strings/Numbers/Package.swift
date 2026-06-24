// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Numbers",
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "Numbers"
        ),
        .testTarget(
            name: "NumbersTests",
            dependencies: ["Numbers"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
