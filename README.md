![FlineDevKit Logo](https://github.com/FlineDev/Foundation/blob/main/Logo.png?raw=true)

# FlineDevKit

`FlineDevKit` is a framework that simplifies your development process by automatically importing the most common frameworks I use in every app I create. The core of the library is [FlineDevKit.swift](https://github.com/FlineDev/FlineDevKit/blob/main/Sources/FlineDevKit/FlineDevKit.swift), which contains a collection of `@_exported import` statements. This eliminates the need to manually import these frameworks in every Swift file of your app.


## Auto-Imported Frameworks

### Apple Frameworks
`FlineDevKit` automatically imports the following Apple frameworks that are essential for most iOS, macOS, and SwiftUI applications:

- **[`Foundation`](https://developer.apple.com/documentation/foundation)**: Provides fundamental classes and APIs for data manipulation, networking, and file handling.
- **[`OrderedCollections`](https://github.com/apple/swift-collections)**: Adds the ability to work with ordered collections, offering more flexible data management than standard Swift collections.
- **[`OSLog`](https://developer.apple.com/documentation/os/logging)**: Enables efficient logging in apps with support for custom log levels and performance optimization.
- **[`SwiftData`](https://developer.apple.com/documentation/swiftdata)**: A powerful framework for data management, enabling you to work with models and data stores easily.
- **[`SwiftUI`](https://developer.apple.com/documentation/swiftui)**: The UI framework for building declarative user interfaces on Apple platforms.
- **[`TipKit`](https://developer.apple.com/documentation/tipkit)**: A framework for presenting tips and onboarding experiences in a user-friendly way.

### FlineDev Frameworks
`FlineDevKit` also imports my own frameworks, tailored for efficient development with modern Swift practices:

- **[`FreemiumKit`](https://freemiumkit.app)**: Simplifies the integration of in-app purchases and subscription models in your apps. ([Setup Guide](https://freemiumkit.app/documentation/freemiumkit/setupguide))
- **[`HandySwift`](https://github.com/FlineDev/HandySwift)**: A collection of useful Swift extensions and helpers to streamline everyday development tasks.
- **[`HandySwiftUI`](https://github.com/FlineDev/HandySwiftUI)**: SwiftUI-specific extensions and utilities that make building interfaces faster and more flexible.
- **[`LinksKit`](https://github.com/FlineDev/LinksKit)**: Provides an easy way to add links to FAQs, support, legal documents, and more, directly in your app.
- **[`ReviewKit`](https://github.com/FlineDev/ReviewKit)**: A framework for managing app review prompts and handling review-related workflows in your app.

### 3rd-Party Frameworks
Finally, `FlineDevKit` includes very few hand-picked third-party libraries that I recommend for analytics and managing collections in SwiftUI:

- **[`IdentifiedCollections`](https://github.com/pointfreeco/swift-identified-collections)**: A collection of types that support unique identifiers, making it easier to work with data that requires identity management.
- **[`TelemetryDeck`](https://github.com/TelemetryDeck/SwiftSDK)**: A tool for tracking app analytics, providing insights on user behavior and feature usage. ([Setup Guide](https://telemetrydeck.com/docs/guides/swift-setup/))


## Usage

To use `FlineDevKit`, simply add it to your project as a Swift package:

1. Add the following URL as a Swift package dependency in Xcode:  
   `https://github.com/FlineDev/FlineDevKit.git`
2. Reference the `main` branch, and let Xcode automatically load all the recommended dependencies.

![Package Mapping in Xcode](https://github.com/FlineDev/Foundation/blob/main/Images/PackageMappingInXcode.png?raw=true)

After adding the package, you can import `FlineDevKit` in your app's Swift files. You’ll no longer need to import individual frameworks like `Foundation`, `SwiftUI`, `SwiftData`, `OSLog`, and others. This works similarly to how Apple automatically adds `import SwiftUI` or `import Foundation` by default in new SwiftUI files. 

For example, when you create a new SwiftUI view, SwiftUI itself imports several underlying libraries, such as `Foundation`, `CoreGraphics`, and others, which are necessary for the view to work properly. Similarly, when you import `FlineDevKit`, it will include all the necessary dependencies behind the scenes, so you don’t need to worry about importing each one individually. This makes your code cleaner and reduces the need to manage numerous imports, making it easier to maintain and scale your app.

By using `FlineDevKit`, you’ll also automatically have access to my personal libraries such as `ReviewKit`, `LinksKit`, `HandySwift`, `HandySwiftUI`, and `FreemiumKit`, which I highly recommend for common app features.

Feel free to use this package as-is or fork it and adjust it to your own needs! But note that you don't need to fork it if you want to use most of my libraries except maybe for one or two. There are no side effects if you simply ignore them, each library is quite small in its own regard and none of them do automatic work in the background unless you explicitly use them.

I will add a few more libraries I am currently working on, such as `ErrorKit` for improved error handling. But those will also be well designed, extensively documented, small in footprint and generally useful for every app, or else I wouldn't add them here. Promise!


## License

This library itself is released under the MIT License. See LICENSE for details.

For the licenses of the imported libraries, see their own LICENSE files.


## Showcase

I created this library for my following Indie apps (rate them with 5 stars to support me!):

<table>
  <tr>
    <th>App Icon</th>
    <th>App Name & Description</th>
    <th>Supported Platforms</th>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6476773066?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/TranslateKit.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6476773066?pt=549314&ct=github.com&mt=8">
        <strong>TranslateKit: App Localizer</strong>
      </a>
      <br />
      Simple drag & drop translation of String Catalog files with support for multiple translation services & smart correctness checks.
    </td>
    <td>Mac</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6587583340?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/PleydiaOrganizer.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6587583340?pt=549314&ct=github.com&mt=8">
        <strong>Pleydia Organizer: Movie & Series Renamer</strong>
      </a>
      <br />
      Simple, fast, and smart media management for your Movie, TV Show and Anime collection.
    </td>
    <td>Mac</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6502914189?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/FreemiumKit.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6502914189?pt=549314&ct=github.com&mt=8">
        <strong>FreemiumKit: In-App Purchases</strong>
      </a>
      <br />
      Simple In-App Purchases and Subscriptions for Apple Platforms: Automation, Paywalls, A/B Testing, Live Notifications, PPP, and more.
    </td>
    <td>iPhone, iPad, Mac, Vision</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6480134993?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/FreelanceKit.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6480134993?pt=549314&ct=github.com&mt=8">
        <strong>FreelanceKit: Time Tracking</strong>
      </a>
      <br />
      Simple & affordable time tracking with a native experience for all  devices. iCloud sync & CSV export included.
    </td>
    <td>iPhone, iPad, Mac, Vision</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6472669260?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/CrossCraft.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6472669260?pt=549314&ct=github.com&mt=8">
        <strong>CrossCraft: Custom Crosswords</strong>
      </a>
      <br />
      Create themed & personalized crosswords. Solve them yourself or share them to challenge others.
    </td>
    <td>iPhone, iPad, Mac, Vision</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6477829138?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/FocusBeats.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6477829138?pt=549314&ct=github.com&mt=8">
        <strong>FocusBeats: Pomodoro + Music</strong>
      </a>
      <br />
      Deep Focus with proven Pomodoro method & select Apple Music playlists & themes. Automatically pauses music during breaks.
    </td>
    <td>iPhone, iPad, Mac, Vision</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6479207869?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/GuidedGuestMode.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6479207869?pt=549314&ct=github.com&mt=8">
        <strong>Guided Guest Mode</strong>
      </a>
      <br />
      Showcase Apple Vision Pro effortlessly to friends & family. Customizable, easy-to-use guides for everyone!
    </td>
    <td>Vision</td>
  </tr>
  <tr>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6478062053?pt=549314&ct=github.com&mt=8">
        <img src="https://raw.githubusercontent.com/FlineDev/Essentials/main/Images/Apps/Posters.webp" width="64" />
      </a>
    </td>
    <td>
      <a href="https://apps.apple.com/app/apple-store/id6478062053?pt=549314&ct=github.com&mt=8">
        <strong>Posters: Discover Movies at Home</strong>
      </a>
      <br />
      Auto-updating & interactive posters for your home with trailers, showtimes, and links to streaming services.
    </td>
    <td>Vision</td>
  </tr>
</table>
