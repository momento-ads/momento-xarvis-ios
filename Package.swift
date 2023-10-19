// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MomentoXarvis-iOS",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MomentoXarvis-iOS",
            targets: ["MomentoXarvis-iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/momento-ads/momento-ios-sdk.git", from: "1.0.5"),
        .package(url: "https://github.com/thezooom/Xarvis_iOS.git", from: "0.0.0"),
    ],
    targets: [
        .target(
            name: "MomentoXarvis-iOS",
            dependencies: [
                .product(name: "Momento_iOS", package: "momento-ios-sdk"),
//                .product(name: "Xarvis_Framwork", package: "momento-ios-sdk"),
            ]),
        .testTarget(
            name: "MomentoXarvis-iOSTests",
            dependencies: ["MomentoXarvis-iOS"]),
    ]
)
