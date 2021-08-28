// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LibreDirectLibrary",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "LibreDirectLibrary",
            targets: ["LibreDirectLibrary"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "LibreDirectLibrary",
            dependencies: [],
            resources: [
                .process("Resources/alarm.aiff"),
                .process("Resources/expiring.aiff"),
                .process("Resources/negative.aiff"),
                .process("Resources/positive.aiff"),
                .process("Resources/de.lproj/Localizable.strings"),
                .process("Resources/en.lproj/Localizable.strings")
            ]
        )
    ]
)
