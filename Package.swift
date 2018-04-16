// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SPbUappModels",
    products: [
        .library(name: "SPbUappModelsV1", targets: ["SPbUappModelsV1"]),
    ],
    targets: [
        .target(name: "SPbUappModelsV1", dependencies: []),
    ]
)
