// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .dynamic, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/thebrowsercompany/swift-cwinrt",
            revision: "eb46cdb66f770a1e006f9fcfebbf9e99a0fba811"
        ),
        .package(
            url: "https://github.com/stackotter/swift-uwp",
            revision: "8128f6615b7c5b46ada289ab6d49d871ca1e13a5"
        ),
        .package(
            url: "https://github.com/stackotter/swift-windowsappsdk",
            revision: "f1c50892f10c0f7f635d3c7a3d728fd634ad001a"
        ),
        .package(
            url: "https://github.com/stackotter/swift-windowsfoundation",
            revision: "4ad57d20553514bcb23724bdae9121569b19f172"
        ),
        .package(
            url: "https://github.com/stackotter/swift-webview2core",
            revision: "4396f5d94d6dfd1f95ab25e79de98141b7f4f183"
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
