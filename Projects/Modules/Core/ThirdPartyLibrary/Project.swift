//
//  Project.swift
//  Manifests
//
//  Created by 고병학 on 2023/01/31.
//

import ProjectDescription
import ProjectDescriptionHelpers

let frameworkName: String = "ThirdPartyLibrary"

let frameworkTargets: [Target] = FrameworkFactory(
    dependency: .init(
        frameworkDependencies: [] + [
            .SPM.Moya,
            .SPM.RxMoya,
            .SPM.Swinject,
            .SPM.Then,
            .SPM.Kingfisher
        ],
        unitTestsDependencies: []
    )
).build(
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


