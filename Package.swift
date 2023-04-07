
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
			targets: ["CUELiveWrapper", "CUEBluetooth", "engine", "Lottie", "TrueTime", "MQTTClient", "SocketRocket"]
		),
	],
	dependencies: [],
	targets: [
		.target(
			name: "CUELiveWrapper",
			dependencies: [
				.target(name: "CUELive"),
			],
			path: "CUELiveWrapper"
		),
		.binaryTarget(
			name: "CUELive",
            url: "https://github.com/AlexMokrushin/CUETestPackage/releases/download/0.0.1/CUELive.xcframework.zip",
            checksum: "8b5a20cba1bf00bdd0ac738b13ec96d45903fd8f8728ce18ea11d887050fb8a6"
		),
		.binaryTarget(
			name: "CUEBluetooth",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/CUEBluetooth/0.0.14/CUEBluetooth.0.0.14.xcframework.zip",
			checksum: "000140cace70ff115c40792e6585f52b21e8499dc0f5299126db3b8384291b6c"
		),
		.binaryTarget(
			name: "engine",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/engine/1.46.7/engine.1.46.7.xcframework.zip",
			checksum: "ed95df9c92419fa0289036e707432f44ac06513945b6422d2ee63aabbe019a0d"
		),
		.binaryTarget(
			name: "Lottie",
			url: "https://github.com/airbnb/lottie-ios/releases/download/4.1.3/Lottie.xcframework.zip",
			checksum: "31ab682ec2c7b49e8a59458f7e4cfa027a07d8ba962df0ddcb95909ce5a9693d"
		),
		.binaryTarget(
			name: "TrueTime",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/TrueTime/5.1.0/TrueTime.5.1.0.xcframework.zip",
			checksum: "4bbd64ccd6fc9aab81fbf64889761f6d1fd39c4c100217809cfa0797f8eb774d"
		),
		.binaryTarget(
			name: "MQTTClient",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/MQTTClient/0.15.3/MQTTClient.0.15.3.xcframework.zip",
			checksum: "5302587047ef653610fbebb2a41d7abd410795e1b568e7c8c72f17c17a0e549f"
		),
		.binaryTarget(
			name: "SocketRocket",
			url: "https://s3.amazonaws.com/swift-package-manager/binaries/SocketRocket/0.5.1/SocketRocket.0.5.1.xcframework.zip",
			checksum: "5b46ecf3042923218b38a3581fe3b7088e0d3fd1e513425f30deb73987dd1eb0"
		)
	]
)
