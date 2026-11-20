// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "AnyThinkMediationVungleAdapter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AnyThinkMediationVungleAdapter",
            targets: ["AnyThinkMediationVungleAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/taku-packages/AnyThinkiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", exact: "7.8.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkVungleAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkVungleAdapter/70800.2.10/AnyThinkVungleAdapter-70800.2.10.zip",
            checksum: "305626b4108c833af076366c369ad98153ba62bc6f81fcc3e2c516c079b54346"
        ),
        .target(
            name: "AnyThinkMediationVungleAdapterTarget",
            dependencies: [
                "AnyThinkVungleAdapter",
                .product(name: "AnyThinkiOS", package: "AnyThinkiOS_SPM"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ],
            path: "Sources/AnyThinkMediationVungleAdapterTarget"
        )
    ]
)