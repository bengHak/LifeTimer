import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let frameworkName: String = "DesignResourceKit"

let frameworkTargets: [Target] = FrameworkFactory(
    dependency: .init(
        frameworkDependencies: [],
        unitTestsDependencies: []
    )
).build(
    payload: .init(
        name: frameworkName,
        platform: .iOS,
        hasResource: true
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
