# Synchro Share Project Context

**Synchro Share** is a Flutter-based cross-platform application for **peer-to-peer file and folder sharing** over a local network (Wi-Fi/LAN).

## Core Objectives
- **Local P2P Sharing**: Transfer files/folders without internet using local network protocols.
- **Real-time Synchronization**: Maintain consistency across connected devices.
- **Cross-Platform Support**: Targeted for Android and iOS using a single codebase.
- **Advanced Features (Planned)**: Optional BaaS integration for remote access and cloud backups.

## Technical Stack
- **Framework**: Flutter (Dart)
- **State Management**: Bloc / Cubit
- **Navigation**: Go Router
- **Local Storage**: Hive / Hive Flutter
- **Dependency Injection**: GetIt, Injectable
- **UI/UX**: Responsive design via `flutter_screenutil` and `responsive_framework`.
- **Localization**: Multi-language support (English and Arabic implemented).

## Project Structure (Key Areas)
- `lib/features`: Feature-based modular structure (Work in Progress).
- `lib/shared/widgets`: Common UI components.
- `lib/l10n`: Localization files (.arb).
- `lib/theme`: App-wide theme configuration.
