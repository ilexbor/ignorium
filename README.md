<div align="center">

<h1 style="color:#027DFD; font-family: 'Courier New', 'Courier', monospace; font-weight: 200;">{ IGNORIUM }</h1>

[![](https://img.shields.io/github/v/release/ilexbor/ignorium?style=for-the-badge&logo=github&color=181717&label=GitHub%20Release)](https://github.com/ilexbor/ignorium)
[![](https://img.shields.io/pub/v/ignorium.svg?style=for-the-badge&logo=dart&color=0553B1&label=Pub%20Release)](https://pub.dev/packages/ignorium)
[![](https://img.shields.io/pub/dm/ignorium?style=for-the-badge&logo=dart&color=0553B1&label=Pub%20Downloads)](https://pub.dev/packages/ignorium)
![](https://img.shields.io/github/license/ilexbor/ignorium?style=for-the-badge&color=042B59&label=license)

</div>

Ignorium is a CLI tool for automatic .gitignore generation based on detected files and their contents.

Ignorium intelligently scans your project directory and generates appropriate .gitignore files based on detected frameworks, build tools, IDEs, and other project characteristics.

## Table of contents

- [Features](#features)
- [How it works](#how-it-works)
- [Example](#example)
- [Supported Technologies](#supported-technologies)
- [Installation](#installation)
- [Usage](#usage)
- [Changelog](#changelog)
- [Issues](#issues)
- [Contributing](#contributing)
- [License](#license)

## Features

- 🔍 **Intelligent Detection**: Automatically detects project types based on files and directories
- 📁 **Multi-Platform Support**: Works with Flutter, Android, and iOS projects
- 🛠️ **Tool Integration**: Recognizes popular development tools and IDEs
- 👤 **User-Friendly**: Preserves your custom .gitignore rules while updating generated sections
- 🚀 **Fast & Efficient**: Scans projects quickly with minimal overhead
- 🔄 **Recursive Processing**: Can process entire project hierarchies
- 📦 **Zero Configuration**: Works out of the box without setup

## How it works

1. **Scan**: Ignorium scans your project directory
2. **Detect**: Identifies what technologies you're using by analyzing project files and folders
3. **Generate**: Creates appropriate .gitignore rules for detected technologies
4. **Preserve**: Maintains your existing custom rules while updating auto-generated sections in .gitignore files

## Example

Ignorium automatically detects your project structure and creates or updates .gitignore files in appropriate locations:

```
monorepo/
├── .idea/
├── dart_project/
│   ├── .gitignore                ← Created/Updated rules for Dart
│   └── pubspec.yaml
├── flutter_project/
│   ├── .idea/
│   ├── android/
│   │   ├── app/
│   │   │   ├── .gitignore        ← Created/Updated rules for Android app + Google services + Gradle
│   │   │   ├── google-services.json
│   │   │   └── build.gradle
│   │   ├── .gitignore            ← Created/Updated rules for Gradle
│   │   └── build.gradle
│   │   └── settings.gradle
│   ├── ios/
│   │   ├── Runner.xcodeproj/
│   │   ├── .gitignore            ← Created/Updated rules for iOS + CocoaPods
│   │   └── Podfile
│   ├── .gitignore                ← Created/Updated rules for Flutter
│   └── pubspec.yaml
├── .gitignore                    ← Created/Updated rules for JetBrains IDE
└── README.md
```

Each .gitignore file contains rules specific to that directory's detected technologies, while preserving your existing custom rules.

## Supported Technologies

Ignorium automatically detects and generates .gitignore rules for:

### Programming Languages & Frameworks
- Dart
- Flutter (Android, iOS)

### Build Systems & Package Managers
- CocoaPods
- Gradle

### IDEs & Code Editors
- JetBrains IDEs
- Visual Studio Code
- Xcode

### Mobile Development
- Android app
- Android key store files
- iOS app

### Version Managers
- Dart Version Manager (DVM)
- Flutter Version Manager (FVM)

### Documentation
- Dart documentation
- VitePress

### Services
- Firebase
- Google Services

### User specific files
- Local properties files

### Operating Systems
- macOS

## Installation

Install the package globally by running:

```shell
dart pub global activate --overwrite ignorium
```

## Usage

Generate .gitignore files for the current directory and all subdirectories:

```shell
ignorium gen
```

`-r, --recursive` - scan directories recursively (default: true).

## Changelog

For a full list of changes and updates, see the [CHANGELOG.md](CHANGELOG.md).

## Issues

If you encounter any issues or have suggestions for improvements, please [create an issue](https://github.com/ilexbor/ignorium/issues/new/choose) on GitHub.

When reporting a bug or requesting a fix, please provide as much detail as possible to help understand the problem or idea.

Including the following information is highly appreciated:
- Steps to reproduce the issue
- Expected behavior
- Any error messages or logs
- Your environment (operating system, Dart version, etc.)

Your feedback is valuable and will help improve the package!

## Contributing

Contributions are welcome!  
Please [fork this repository](https://github.com/ilexbor/ignorium/fork) and [submit pull requests](https://github.com/ilexbor/ignorium/pulls).

By participating in this project, you agree to abide by our [Code of Conduct](CODE_OF_CONDUCT.md).

## License

This project is licensed under the [BSD-3-Clause License](LICENSE).

---

<div align="center">
  <h2 style="color:#0553B1;">
    Developed with 💙 by <a href="https://github.com/ilexbor" style="text-decoration:none; color:#027DFD;" onmouseover="this.style.color='#0553B1'" onmouseout="this.style.color='#027DFD'">ilexbor</a>
  </h2>
</div>

