![FlineDevKit Logo](https://github.com/FlineDev/Foundation/blob/main/Logo.png?raw=true)

# FlineDevKit

`FlineDevKit` is a framework that simplifies the development process by automatically importing the most common frameworks I recommond for every app. The core of the library is [FlineDevKit.swift](https://github.com/FlineDev/FlineDevKit/blob/main/Sources/FlineDevKit/FlineDevKit.swift), which contains a collection of `@_exported import` statements. This eliminates the need to manually import these frameworks in every Swift file of your app.


## Auto-Imported Frameworks

### Apple Frameworks
`FlineDevKit` automatically imports essential Apple frameworks for iOS, macOS, and SwiftUI apps:

- **[`Foundation`](https://developer.apple.com/documentation/foundation)**: Core APIs for data, networking, and files.
- **[`OrderedCollections`](https://github.com/apple/swift-collections)**: Flexible, ordered data structures.
- **[`OSLog`](https://developer.apple.com/documentation/os/logging)**: Efficient app logging with custom levels.
- **[`SwiftData`](https://developer.apple.com/documentation/swiftdata)**: Simplified data management with models.
- **[`SwiftUI`](https://developer.apple.com/documentation/swiftui)**: Declarative UI framework for Apple platforms.
- **[`TipKit`](https://developer.apple.com/documentation/tipkit)**: Tools for tips and onboarding experiences.

### FlineDev Frameworks
`FlineDevKit` includes my own frameworks for modern Swift development:

- **[`FreemiumKit`](https://freemiumkit.app)**: Simplifies in-app purchases. ([Setup Guide](https://freemiumkit.app/documentation/freemiumkit/setupguide))
- **[`HandySwift`](https://github.com/FlineDev/HandySwift)**: Useful extensions for everyday tasks.
- **[`HandySwiftUI`](https://github.com/FlineDev/HandySwiftUI)**: SwiftUI-specific tools for faster UI building.
- **[`LinksKit`](https://github.com/FlineDev/LinksKit)**: Easy linking to FAQs, support, and legal docs.
- **[`ReviewKit`](https://github.com/FlineDev/ReviewKit)**: Handles app review prompts and workflows.
- **[`TranslateKit`](https://github.com/FlineDev/TranslateKit)**: Built-in translations (1000+) & semantic key generation for Swift apps.

### 3rd-Party Frameworks
`FlineDevKit` also includes these recommended libraries:

- **[`IdentifiedCollections`](https://github.com/pointfreeco/swift-identified-collections)**: Simplifies managing uniquely identified data.
- **[`TelemetryDeck`](https://github.com/TelemetryDeck/SwiftSDK)**: Tracks app analytics and user behavior. ([Setup Guide](https://telemetrydeck.com/docs/guides/swift-setup/))

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
