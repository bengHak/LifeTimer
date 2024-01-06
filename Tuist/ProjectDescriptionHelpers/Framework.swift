//
//  Framework.swift
//  ProjectDescriptionHelpers
//
//  Created by 고병학 on 2023/01/25.
//

import ProjectDescription

public struct FrameworkFactory {
    
    public struct Dependency {
        
        let frameworkDependencies: [TargetDependency]
        let unitTestsDependencies: [TargetDependency]
        
        public init(
            frameworkDependencies: [TargetDependency],
            unitTestsDependencies: [TargetDependency]
        ) {
            self.frameworkDependencies = frameworkDependencies
            self.unitTestsDependencies = unitTestsDependencies
        }
    }
    
    public struct Payload {
        
        let name: String
        let platform: Platform
        let product: Product
        let hasResource: Bool
        
        public init(
            name: String,
            platform: Platform,
            product: Product = .framework,
            hasResource: Bool = false
        ) {
            self.name = name
            self.platform = platform
            self.product = product
            self.hasResource = hasResource
        }
    }
    
    private let dependency: Dependency
    
    public init(dependency: Dependency) {
        self.dependency = dependency
    }
    
    public func build(payload: Payload) -> [Target] {
        
        let sourceTarget = Target(
            name: payload.name,
            platform: payload.platform,
            product: payload.product,
            bundleId: payload.name,
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Targets/**"],
            resources: payload.hasResource ? ["Resources/**"] : [],
            scripts: [.SwiftLintString],
            dependencies: self.dependency.frameworkDependencies
        )
        
        let testTarget = Target(
            name: "\(payload.name)Tests",
            platform: payload.platform,
            product: .unitTests,
            bundleId: payload.name + "Tests",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [
                .target(name: payload.name),
                .SPM.Quick,
                .SPM.Nimble
            ] + self.dependency.unitTestsDependencies
        )
        
        return [sourceTarget, testTarget]
    }

    public func buildRiblet(payload: Payload) -> [Target] {

        let interfaceTarget = Target(
            name: payload.name,
            platform: payload.platform,
            product: .framework,
            bundleId: payload.name,
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Targets/Interface/**"],
            resources: [],
            scripts: [.SwiftLintString],
            dependencies: self.dependency.frameworkDependencies
        )

        let implementTarget = Target(
            name: "\(payload.name)Impl",
            platform: payload.platform,
            product: .framework,
            bundleId: "\(payload.name)Impl",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Targets/Implement/**"],
            resources: [],
            scripts: [.SwiftLintString],
            dependencies: self.dependency.frameworkDependencies + [
                .target(name: payload.name),
                .SPM.SnapKit,
                .SPM.Then
            ]
        )
        
        let testTarget = Target(
            name: "\(payload.name)Tests",
            platform: payload.platform,
            product: .unitTests,
            bundleId: payload.name + "Tests",
            deploymentTarget: deploymentTarget,
            infoPlist: .default,
            sources: ["Tests/**"],
            resources: [],
            dependencies: [
                .target(name: payload.name),
                .target(name: "\(payload.name)Impl"),
                .SPM.Quick,
                .SPM.Nimble
            ] + self.dependency.unitTestsDependencies
        )
        
        return [implementTarget, interfaceTarget, testTarget]
    }
}
