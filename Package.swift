// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MicrosoftCognitiveServicesSpeech",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MicrosoftCognitiveServicesSpeech",
            targets: ["MicrosoftCognitiveServicesSpeechTarget"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MicrosoftCognitiveServicesSpeechTarget",
            dependencies: [
                .target(name: "MicrosoftCognitiveServicesSpeech")
            ],
            path: "MicrosoftCognitiveServicesSpeechTarget"),
        .binaryTarget(name: "MicrosoftCognitiveServicesSpeech",
                     url: "https://csspeechstorage.blob.core.windows.net/drop/1.23.0/MicrosoftCognitiveServicesSpeech-XCFramework-1.23.0.zip",
                     checksum: "a37096c05ab402caf8b800a3cef10fef77aa2c9126295fda4663460d62f3a14a"),
    ]
)
