// swift-tools-version: 6.2
import PackageDescription

let package = Package(
   name: "FlineDevKit",
   platforms: [.iOS(.v18), .macOS(.v15), .tvOS(.v18), .visionOS(.v2), .watchOS(.v10)],
   products: [.library(name: "FlineDevKit", targets: ["FlineDevKit"])],
   dependencies: [
      // Apple
      .package(url: "https://github.com/apple/swift-collections.git", from: "1.3.0"),

      // FlineDev
      .package(url: "https://github.com/FlineDev/ErrorKit.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/HandySwift.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/HandySwiftUI.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/LinksKit.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/ReviewKit.git", branch: "main"),
      .package(url: "https://github.com/FlineDev/TranslateKit.git", branch: "main"),

      // 3rd-Party
      .package(url: "https://github.com/pointfreeco/swift-identified-collections.git", from: "1.1.1"),
      .package(url: "https://github.com/TelemetryDeck/SwiftSDK.git", from: "2.11.0"),
   ],
   targets: [
      .target(
         name: "FlineDevKit",
         dependencies: [
            // Apple
            .product(name: "OrderedCollections", package: "swift-collections"),

            // FlineDev
            .product(name: "ErrorKit", package: "ErrorKit"),
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
