// swift-tools-version: 5.9

import PackageDescription

let package = Package(
  name: "SincerePath",
  platforms: [
    .macOS(.v11), .iOS(.v13)
  ],
  products: [
    .library(name: "SincerePath", targets: ["SincerePath"]),
  ],
  dependencies: [],
  targets: [
    .target(name: "SincerePath", dependencies: []),
    .testTarget(name: "SincerePathTests", dependencies: ["SincerePath"]),
  ]
)
