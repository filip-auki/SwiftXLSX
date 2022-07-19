// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftXLSX",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .watchOS(.v5),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "SwiftXLSX",
            targets: ["SwiftXLSX"]),
    ],
    dependencies: [
        .package(name: "ZipArchive", url: "https://github.com/filip-auki/ZipArchive", .branch("master"))
    ],
    targets: [
        .target(
            name: "SwiftXLSX",
            dependencies: ["ZipArchive"]),
        .testTarget(
            name: "SwiftXLSXTests",
            dependencies: ["SwiftXLSX"]),
    ]
)
