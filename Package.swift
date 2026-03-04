// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .dynamic, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/moreSwift/swift-cwinrt",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-uwp",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-windowsappsdk",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-windowsfoundation",
            .upToNextMinor(from: "0.1.0")
        ),
        .package(
            url: "https://github.com/moreSwift/swift-webview2core",
            .upToNextMinor(from: "0.1.0")
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
                .product(name: "WebView2Core", package: "swift-webview2core"),
            ]
        )
    ]
)
