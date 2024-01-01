//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 고병학 on 2023/03/19.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let frameworkName: String = "Onboarding"

let frameworkTargets: [Target] = FrameworkFactory(
    dependency: .init(
        frameworkDependencies: [
            Dep.Project.Module.Foundation.FoundationKit,
            Dep.Project.Module.Core.RxPackageExt,
            Dep.Project.Module.Core.ThirdPartyLibrary,
            Dep.Project.Module.DesignSystem.DesignSystemKit
        ],
        unitTestsDependencies: []
    )
).buildRiblet(
    payload: .init(
        name: frameworkName,
        platform: .iOS
    )
)

let project = ProjectFactory(
    dependency: .init(
        appTargets: [],
        frameworkTargets: frameworkTargets
    )
).build(
    payload: .init(
        name: frameworkName,
        organizationName: "kr.byunghak"
    )
)


