// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "redirect-objects",
    platforms: [
       .macOS(.v12),
    ],
    products: [
        .library(name: "RedirectObjects", targets: ["RedirectObjects"]),
    ],
    dependencies: [		
       .package(url: "https://github.com/feathercms/feather-objects", .branch("main")),
    ],
    targets: [
        .target(name: "RedirectObjects", dependencies: [
            .product(name: "FeatherObjects", package: "feather-objects"),
        ]),
    ]
)
