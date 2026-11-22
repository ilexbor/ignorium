# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2026-11-22

### Changed

- Raised the minimum supported Dart SDK version to 3.10.0
- Updated Dart installation instructions to use `dart install ignorium`
- Updated dependencies
- Updated the Dart development SDK to 3.14 via mise
- Migrated the main package and example from Melos to a Dart Pub workspace
- Simplified `part of` directive paths and updated source formatting

## [1.0.0] - 2026-02-12

### Changed

- Updated dependencies
- Switched from Dart Version Manager to mise for Dart SDK management

## [0.3.2] - 2025-08-01

### Added

- Added `.idea/caches/` rule to JetBrains IDE ruleset

## [0.3.1] - 2025-07-19

### Added

- Added Homebrew installation support

### Changed

- Updated README.md

## [0.3.0] - 2025-07-19

### Added

- Added ruleset for packages with build_runner dependency

### Changed

- Updated Dart Version Manager ruleset

### Fixed

- Fixed gitignore rules order preservation for negation patterns

## [0.2.0] - 2025-07-19

### Added

- Added support for Dart generated files
- Added support for build_runner
- Added support for CocoaPods

### Changed

- Updated description
- Updated README.md
- Updated lintorium version
- Refactoring and code improvements

### Fixed

- Fixed path normalization and case sensitivity issues

## [0.1.0] - 2025-07-14

### Added

- First release of the package.
