// swift-tools-version: 5.10
import PackageDescription

let package = Package(
   name: "FlineDevKit",
   platforms: [.iOS(.v16), .macOS(.v13), .tvOS(.v16), .visionOS(.v1), .watchOS(.v9)],
   products: [.library(name: "FlineDevKit", targets: ["FlineDevKit"])],
   dependencies: [
      // Apple
      .package(url: "https://github.com/apple/swift-collections.git", from: "1.1.4"),

      // FlineDev
      .package(url: "https://github.com/FlineDev/FreemiumKit.git", from: "1.16.0"),
      .package(url: "https://github.com/FlineDev/HandySwift.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/HandySwiftUI.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/LinksKit.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/ReviewKit.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/TranslateKit.git", branch: "main"),

      // 3rd-Party
      .package(url: "https://github.com/pointfreeco/swift-identified-collections.git", from: "1.0.0"),
      .package(url: "https://github.com/TelemetryDeck/SwiftSDK.git", from: "2.6.1"),
   ],
   targets: [
      .target(
         name: "FlineDevKit",
         dependencies: [
            // Apple
            .product(name: "OrderedCollections", package: "swift-collections"),

            // FlineDev
            .product(name: "FreemiumKit", package: "FreemiumKit"),
            .product(name: "HandySwift", package: "HandySwift"),
            .product(name: "HandySwiftUI", package: "HandySwiftUI"),
            .product(name: "LinksKit", package: "LinksKit"),
            .product(name: "ReviewKit", package: "ReviewKit"),
            .product(name: "TranslateKit", package: "TranslateKit"),

            // 3rd-Party
            .product(name: "IdentifiedCollections", package: "swift-identified-collections"),
            .product(name: "TelemetryDeck", package: "SwiftSDK"),
         ]
      ),
   ]
)
