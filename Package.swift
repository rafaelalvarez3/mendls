// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "mendls",
  platforms: [
    .macOS(.v14)
  ],
  products: [
    .library(
      name: "Kernel",
      type: .static,
      targets: ["Kernel"])
  ],
  dependencies: [
    .package(
      url: "https://github.com/apple/swift-mmio.git",
      branch: "swift-embedded-examples")
  ],
  targets: [
    .target(
      name: "Kernel",
      dependencies: [
        .product(name: "MMIO", package: "swift-mmio")
      ],
      swiftSettings: [
        .enableExperimentalFeature("Embedded"),
        .unsafeFlags(["-Xfrontend", "-function-sections"]),
      ]
    ),
    .target(name: "Support"),
  ]
)
