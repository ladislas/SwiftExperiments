// swift-tools-version:4.2
// Managed by ice

import PackageDescription

let package = Package(
    name: "Snake",
    targets: [
        .target(name: "Snake", dependencies: []),
        .testTarget(name: "SnakeTests", dependencies: ["Snake"]),
    ]
)
