//
//  Dependencies.swift
//  Config
//
//  Created by 고병학 on 2023/01/25.
//

import ProjectDescription

let carthage = CarthageDependencies([])

let spm = SwiftPackageManagerDependencies()

let dependencies = Dependencies(
    carthage: carthage,
    swiftPackageManager: spm,
    platforms: [.iOS]
)
