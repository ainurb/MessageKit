// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MessageKit",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "MessageKit", targets: ["MessageKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/nathantannar4/InputBarAccessoryView", .exact("4.3.3"))
    ],
    targets: [
        .target(
            name: "MessageKit",
            dependencies: ["InputBarAccessoryView"],
            path: "Sources",
            exclude: ["Supporting/Info.plist", "Supporting/MessageKit.h"],
            swiftSettings: [SwiftSetting.define("IS_SPM")]
        ),
        .testTarget(name: "MessageKitTests", dependencies: ["MessageKit"])
    ],
    swiftLanguageVersions: [.v3]
)
