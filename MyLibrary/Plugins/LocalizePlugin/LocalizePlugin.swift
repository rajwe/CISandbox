import Foundation
import PackagePlugin

@main
struct LocalizePlugin: BuildToolPlugin {
    func createBuildCommands(
        context: PackagePlugin.PluginContext,
        target: PackagePlugin.Target
    ) async throws -> [PackagePlugin.Command] {
        let input = target.directory.appending(subpath: "\(target.name)/Resources/en.lproj/Localizable.strings")
        let output = context.pluginWorkDirectory.appending("Localized.swift")

        let executable = context.package.directory
            .removingLastComponent()
            .appending(subpath: "scripts/Localizable")

        return [
            .buildCommand(
                displayName: "Generate Localized.swift",
                executable: executable,
                arguments: [
                    "generateCode",
                    input,
                    "-o=\(output)",
                    "-m=1"
                ],
                environment: [:],
                inputFiles: [input],
                outputFiles: [output]
            )
        ]
    }
}
