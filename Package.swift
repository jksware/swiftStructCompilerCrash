// swift-tools-version: 6.4

import PackageDescription

let package = Package(
    name: "swiftStructCompilerCrash",
    targets: [
        .executableTarget(
            name: "swiftStructCompilerCrash",
            dependencies: ["cppLibraryPoc"],
            swiftSettings: [
                .enableUpcomingFeature("ApproachableConcurrency"),
                .interoperabilityMode(.Cxx)
            ],
        ),
        .target(
            name: "cppLibraryPoc",
            publicHeadersPath: ".",
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        )
    ]
)
