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