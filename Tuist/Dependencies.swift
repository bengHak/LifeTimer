//
//  Dependencies.swift
//  Config
//
//  Created by 고병학 on 2023/01/25.
//

import ProjectDescription

let carthage = CarthageDependencies([])

let spm = SwiftPackageManagerDependencies([
    // RIBs
    .remote(url: "https://github.com/uber/RIBs", requirement: .upToNextMajor(from: "0.13.2")),
    
    // Rx
    .remote(url: "https://github.com/ReactorKit/ReactorKit", requirement: .upToNextMajor(from: "3.2.0")),
    .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .upToNextMajor(from: "6.5.0")),
    .remote(url: "https://github.com/RxSwiftCommunity/RxDataSources",requirement: .upToNextMajor(from: "5.0.2")),
    
    // Utils
    .remote(url: "https://github.com/devxoul/Then", requirement: .upToNextMajor(from: "3.0.0")),
    .remote(url: "https://github.com/Swinject/Swinject", requirement: .upToNextMajor(from: "2.8.3")),
    
    // UI
    .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .upToNextMajor(from: "5.6.0")),
    
    // Networking
    .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.4.1")),
    .remote(url: "https://github.com/Moya/Moya", requirement: .upToNextMajor(from: "15.0.3")),
    
    // Testing
    .remote(url: "https://github.com/Quick/Quick", requirement: .upToNextMajor(from: "6.1.0")),
    .remote(url: "https://github.com/Quick/Nimble", requirement: .upToNextMajor(from: "11.2.1")),
])

let dependencies = Dependencies(
    carthage: carthage,
    swiftPackageManager: spm,
    platforms: [.iOS]
)
