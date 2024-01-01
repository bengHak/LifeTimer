import ProjectDescription

let nameAttribute = Template.Attribute.required("name")

let prefix = "Projects/Features/\(nameAttribute)"

let template = Template(
    description: "Riblet template",
    attributes: [nameAttribute, .optional("platform", default: "iOS")],
    items: [
        .string(path: "\(prefix)/Targets/Implement/dummy.swift", contents: "_"),
        .string(path: "\(prefix)/Targets/Interface/dummy.swift", contents: "_"),
        .string(path: "\(prefix)/Tests/Interface/dummy.txt", contents: "_"),
        .file(path: "\(prefix)/Project.swift", templatePath: "riblet_project.stencil"),
        .file(path: "\(prefix)/.swiftlint.yml", templatePath: "swiftlint.stencil")
    ]
)
