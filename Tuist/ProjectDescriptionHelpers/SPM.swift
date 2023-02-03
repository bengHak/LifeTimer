//
//  SPM.swift
//  Config
//
//  Created by 고병학 on 2023/01/25.
//

import ProjectDescription

extension TargetDependency {
    public struct SPM {}
}

public extension TargetDependency.SPM {
    // RIBs
    static let RIBs = Self.external("RIBs")
    
    // Rx
    static let ReactorKit = Self.external("ReactorKit")
    static let RxSwift = Self.external("RxSwift")
    static let RxCocoa = Self.external("RxCocoa")
    static let RxDataSources = Self.external("RxDataSources")
    
    
    // Utils
    static let Then = Self.external("Then")
    static let Swinject = Self.external("Swinject")
    static let SwiftKeychainWrapper = Self.external("SwiftKeychainWrapper")
    
    // UI
    static let SnapKit = Self.external("SnapKit")
    
    // Networking
    static let Kingfisher = Self.external("Kingfisher")
    static let Moya = Self.external("Moya")
    static let RxMoya = Self.external("RxMoya")
    
    // Testing
    static let Quick = Self.external("Quick")
    static let Nimble = Self.external("Nimble")
    
    private static func external(_ name: String) -> TargetDependency {
        return TargetDependency.external(name: name)
    }
    
    private static func package(product: String) -> TargetDependency {
        return TargetDependency.package(product: product)
    }
}