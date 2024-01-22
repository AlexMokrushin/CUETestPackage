// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CUELive",
    platforms: [
        .iOS(.v11),
    ],
    products: [
        .library(
            name: "CUELive",
            targets: ["CUELiveWrapper", "CUEBluetooth", "engine", "TrueTime", "MQTTClient", "SocketRocket"]
        ),
    ],
    dependencies: [
        .package(name: "lottie-spm", url: "https://github.com/airbnb/lottie-spm.git", from: "4.3.4")
    ],
    targets: [
        .target(
            name: "CUELiveWrapper",
            dependencies: [
                .target(name: "CUELive"),
                .product(name: "Lottie", package: "lottie-spm"),
            ],
            path: "CUELiveWrapper"
        ),
        .binaryTarget(
            name: "CUELive",
            url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUELive/3.5.26/CUELive.xcframework.zip",
            checksum: "313a78bd23a37eddb712b892ecb24e7aee0787f80afdb466b0b19faa33e914a8"
        ),
        .binaryTarget(
            name: "CUEBluetooth",
            url: "https://s3.amazonaws.com/swift-package-manager/CUEBluetooth/0.0.12/CUEBluetooth.0.0.12.xcframework.zip",
            checksum: "7f352450c746ddcb70d69982c8b59edffe636ff2fda05e239f51f9158416214d"
        ),
        .binaryTarget(
            name: "engine",
            url: "https://s3.amazonaws.com/swift-package-manager/engine/1.46.7/engine.1.46.7.xcframework.zip",
            checksum: "ee1cb50708902f98f1a47dda846b5b188535487a2b39ac837e57ddfde6297e59"
        ),
        .binaryTarget(
            name: "TrueTime",
            url: "https://s3.amazonaws.com/swift-package-manager/TrueTime/5.1.0/TrueTime.5.1.0.xcframework.zip",
            checksum: "8530af22d9375cddc2ee5d73fb1fae7cc220bf7a741c5626180c998ed9162cb4"
        ),
        .binaryTarget(
            name: "MQTTClient",
            url: "https://s3.amazonaws.com/swift-package-manager/MQTTClient/0.15.3/MQTTClient.0.15.3.xcframework.zip",
            checksum: "6de6813d51fb593a7cf2833483d4919f697a1372f8ba02ddf35c6d2b5a8aa7c6"
        ),
        .binaryTarget(
            name: "SocketRocket",
            url: "https://s3.amazonaws.com/swift-package-manager/SocketRocket/0.5.1/SocketRocket.0.5.1.xcframework.zip",
            checksum: "1bc9d7a3b805b9fcdc7230bf7989c7f6f39884890ab5c38a26011099c27c0ae0"
        )
    ]
)
