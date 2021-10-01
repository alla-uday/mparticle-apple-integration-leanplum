// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "mParticle-Leanplum",
    platforms: [ .iOS(.v10) ],
    products: [
        .library(
            name: "mParticle-Leanplum",
            targets: ["mParticle-Leanplum"]),
    ],
    dependencies: [
      .package(name: "mParticle-Apple-SDK",
               url: "https://github.com/mParticle/mparticle-apple-sdk",
               .upToNextMajor(from: "8.0.0")),
      .package(name: "Leanplum",
               url: "https://github.com/Leanplum/Leanplum-iOS-SDK",
               .upToNextMajor(from: "3.1.0")),
    ],
    targets: [
        .target(
            name: "mParticle-Leanplum",
            dependencies: ["mParticle-Apple-SDK","Leanplum"],
            path: "mParticle-Leanplum",
            publicHeadersPath: "."),
    ]
)

