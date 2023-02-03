//
//  PathExtension.swift
//  ProjectDescriptionHelpers
//
//  Created by 고병학 on 2023/01/25.
//

import Foundation
import ProjectDescription

extension ProjectDescription.Path {
    public static func relativeToModule(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Modules/\(pathString)")
    }
    public static func relativeToFeature(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Features/\(pathString)")
    }
    public static func relativeToNetwork(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Network/\(pathString)")
    }
    public static var app: Self {
        return .relativeToRoot("Projects/App")
    }
}

// MARK: Extension
extension Dep {
    static func module(name: String) -> Self {
        return .project(target: name, path: .relativeToModule(name))
    }
    static func feature(name: String) -> Self {
        return .project(target: name, path: .relativeToFeature(name))
    }
    static func feature(name: String, path: String) -> Self {
        return .project(target: name, path: .relativeToFeature(path))
    }
    
    static func network(name: String) -> Self {
        return .project(target: name, path: .relativeToNetwork(name))
    }
}

// MARK: Project
extension Dep {
    public struct Project {
        public struct Feature {}
        public struct Module {
            public struct Core {
                public struct Network {}
            }
            public struct Foundation {}
        }
        public struct Network {}
    }
}

public extension Dep.Project.Feature {
    static let Splash = Dep.feature(name: "Splash", path: "Splash")
    static let SplashImpl = Dep.feature(name: "SplashImpl", path: "Splash")
}

public extension Dep.Project.Module.Core {
    static func project(name: String) -> Dep { .project(target: name, path: .relativeToRoot("Projects/Modules/Core/\(name)")) }

    static let RxPackageExt = project(name: "RxPackageExt")
    static let ThirdPartyLibrary = project(name: "ThirdPartyLibrary")
}

public extension Dep.Project.Module.Foundation {
    static func project(name: String) -> Dep { .project(target: name, path: .relativeToRoot("Projects/Modules/Foundation/\(name)")) }

    static let FoundationKit = project(name: "FoundationKit")
    static let UtilityKit    = project(name: "UtilityKit")
}
