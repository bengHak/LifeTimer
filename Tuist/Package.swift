// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "ThirdPartyLibraries",
    dependencies: [
        .package(url: "https://github.com/uber/RIBs", from: "0.16.2"),
        .package(url: "https://github.com/ReactorKit/ReactorKit", from: "3.2.0"),
        .package(url: "https://github.com/devxoul/Then", from: "3.0.0"),
        .package(url: "https://github.com/Swinject/Swinject", from: "2.8.4"),
        .package(url: "https://github.com/SnapKit/SnapKit", from: "5.7.0"),
        .package(url: "https://github.com/layoutBox/FlexLayout", from: "2.0.0"),
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.10.1"),
        .package(url: "https://github.com/Moya/Moya", from: "15.0.3"),
        .package(url: "https://github.com/Quick/Quick", from: "7.3.0"),
        .package(url: "https://github.com/Quick/Nimble", from: "13.1.1")
    ]
)
