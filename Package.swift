// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BaiduMTJ",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "BaiduMTJ",
            targets: ["BaiduMTJ"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "BaiduMTJ",
            dependencies: ["BaiduMTJCore", "BaiduMTJUserFeedback"]),
        .binaryTarget(name: "BaiduMTJCore",
                      path: "Resources/BaiduMTJCore.xcframework"),
        .binaryTarget(name: "BaiduMTJUserFeedback",
                      path: "Resources/BaiduMTJUserFeedback.xcframework")
    ]
)
