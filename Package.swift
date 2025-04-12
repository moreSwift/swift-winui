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
            branch: "5caed8b4f1b4abc6fc89b8f0a8fa20f3edfab14a"
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
