// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftGodotKickExample",
    platforms: [.macOS(.v13)],
    products: [
        .executable(
            name: "SwiftGodotKickExecutable",
            targets: ["SwiftGodotKickExecutable"]),
        .library(
            name: "SwiftGodotKickExample",
            type: .dynamic,
            targets: ["SwiftGodotKickExample"]),
    ],
    dependencies: [
        .package(url: "https://github.com/migueldeicaza/SwiftGodot", revision: "a1af0de831a22a2f1d5d8b4221d9df2fdd12978f"),
        // 4.3.5 tag
        .package(url: "https://github.com/migueldeicaza/SwiftGodotKit", revision: "7f59a1ad97d243a071b548bed7ff573449c82af5")
    ],
    targets: [
        .executableTarget(
            name: "SwiftGodotKickExecutable",
            dependencies: [
                "SwiftGodotKickExample",
                .product(name: "SwiftGodotKit", package: "SwiftGodotKit")
            ],
            resources: [
                .copy("Resources")
            ]),
        .target(
            name: "SwiftGodotKickExample",
            dependencies: [
                .product(name: "SwiftGodot", package: "SwiftGodot")
            ]),
    ]
)
