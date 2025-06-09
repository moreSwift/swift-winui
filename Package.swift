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
            branch: "c9d3fc079aaaa5113cde9a0132278fb83e808599"
        ),
        .package(
            url: "https://github.com/stackotter/swift-windowsappsdk",
            branch: "ed938db0b9790b36391dc91b20cee81f2410309f"
        ),
        .package(
            url: "https://github.com/thebrowsercompany/swift-windowsfoundation",
            branch: "main"
        ),
        .package(
            url: "https://github.com/stackotter/swift-webview2core",
            branch: "9afd97424f844478914ca4512c8ca0a2d3a2bb67"
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
