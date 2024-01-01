import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let frameworkName: String = "NetworkKit"

let frameworkTargets: [Target] = FrameworkFactory(
    dependency: .init(
        frameworkDependencies: [
           Dep.Project.Module.Core.ThirdPartyLibrary
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
