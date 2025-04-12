// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .dynamic, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/thebrowsercompany/swift-cwinrt", branch: "main"),
        .package(
            url: "https://github.com/stackotter/swift-uwp",
            branch: "6e5c0089d599fc47c7f052521e1b546e54c7dc13"
        ),
        .package(
            url: "https://github.com/stackotter/swift-windowsappsdk",
            branch: "3d3f49623663d43e49206bc8b54136862d7d69d3"
        ),
        .package(
            url: "https://github.com/thebrowsercompany/swift-windowsfoundation",
            branch: "main"
        ),
    ],
    targets: [
        .target(
            name: "WinUI",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),
            ]
        )
    ]
)
