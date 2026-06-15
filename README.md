<a id="top"></a>
<div align="center">

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/header-banner.svg" alt="Zephyr — where the sky tells its story" width="100%" />

<br/>

<img src="https://img.shields.io/badge/Flutter-3.19+-6C63FF?style=flat-square&logo=flutter&logoColor=white&labelColor=0A0A14" alt="Flutter" />
<img src="https://img.shields.io/badge/Dart-3.x-00C9FF?style=flat-square&logo=dart&logoColor=white&labelColor=0A0A14" alt="Dart" />
<img src="https://img.shields.io/badge/State-Riverpod-92FE9D?style=flat-square&labelColor=0A0A14" alt="Riverpod" />
<img src="https://img.shields.io/badge/Architecture-Clean-6C63FF?style=flat-square&labelColor=0A0A14" alt="Clean Architecture" />
<img src="https://img.shields.io/github/v/release/NarendraM45/Zephyr?style=flat-square&color=00C9FF&labelColor=0A0A14&label=release&include_prereleases" alt="Latest release" />
<img src="https://img.shields.io/badge/License-MIT-92FE9D?style=flat-square&labelColor=0A0A14" alt="License" />

</div>

<br/>

Zephyr is a cross-platform Flutter weather app built on the idea that weather isn't just numbers — it's light, motion, and mood. Backgrounds shift with the real condition and time of day through animated gradients, condition-aware Lottie skies, and a particle field that rains, snows, or scatters stars depending on what's actually happening outside. Underneath that, a full instrument cluster — wind, UV, air quality, moon phase, storm radar — is one tap away.

It's built on a strict Clean Architecture split (presentation / domain / data), driven by Riverpod, cached offline with Hive, and ships to Android, iOS, Windows, macOS, Linux, and the Web from a single codebase.

<div align="center">

[**⬇ Download the APK**](https://github.com/NarendraM45/Zephyr/releases/download/v1.0.0/Zephyr_1.1.0.apk) &nbsp;&nbsp;•&nbsp;&nbsp; [**▶ Watch the demo**](.github/assets/zephyr-demo.mp4) &nbsp;&nbsp;•&nbsp;&nbsp; [Get started](#getting-started)

</div>

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/aurora-divider.svg" alt="" width="100%" />

## Contents

- [Preview](#preview)
- [Features](#features)
- [Tech stack](#tech-stack)
- [Architecture](#architecture)
- [Platforms](#platforms)
- [Getting started](#getting-started)
- [Download](#download)
- [Project structure](#project-structure)
- [Testing](#testing)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)

## Preview

**Full walkthrough:** [**▶ watch the demo video**](.github/assets/zephyr-demo.mp4)

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/aurora-divider.svg" alt="" width="100%" />

## Features

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/instrument-panel.svg" alt="Wind compass, UV index, air quality, moon phase, and live radar instruments" width="100%" />

**Living conditions** — current temperature and "feels like," set against a background that actually reacts: time-of-day gradients, condition-aware Lottie skies for clear, overcast, fog, drizzle, heavy rain, thunderstorm, snow, and blizzard, plus a particle system that rains, snows, or scatters stars to match.

**Forecast, charted** — hourly and 7-day outlooks rendered with `fl_chart`, including temperature trend and precipitation probability, not just a row of icons.

**Storm radar** — an interactive map built on `flutter_map`, layering RainViewer precipitation radar over a dark basemap with wind, temperature, and pressure overlays.

**Instrument cluster** — a wind compass, a colour-coded UV index meter, an air quality card mapped across the standard six-tier scale, a sunrise/sunset arc, and an eight-phase moon tracker — all custom-painted, not stock icons.

**Saved locations & search** — geocoded search with recent history, and a favourites list for the places you actually check.

**Offline-first** — every response is cached in Hive with a TTL, so the app still has something useful to show the moment connectivity drops, with a banner that says so.

**Adaptive theming** — light, dark, or system, layered with gradients that shift for both time of day and current condition.

**A proper first run** — a short, video-led onboarding sequence handles the location-permission ask instead of dropping a system dialog on a blank screen.

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/aurora-divider.svg" alt="" width="100%" />

## Tech stack

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/tech-stack-marquee.svg" alt="Flutter, Dart, Riverpod, GoRouter, Hive, Dio, Freezed, Lottie, fl_chart, flutter_map, get_it, Geolocator" width="100%" />

| Layer | Choices |
| :--- | :--- |
| Framework | Flutter, Dart |
| State management | `flutter_riverpod` with code generation |
| Navigation | `go_router` — `StatefulShellRoute` for the bottom-nav shell |
| Networking | `dio` |
| Persistence | `hive_flutter` for TTL-based response caching |
| Dependency injection | `get_it` + `injectable` |
| Models | `freezed` + `json_serializable` |
| Motion | `flutter_animate`, `lottie`, and a hand-rolled particle system |
| Charts | `fl_chart` |
| Maps | `flutter_map`, `latlong2`, RainViewer tiles |
| Location | `geolocator`, `geocoding` |
| Type | Display — Space Grotesk · Body — Nunito Sans · Data — JetBrains Mono |

## Architecture

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/architecture-diagram.svg" alt="Clean architecture: presentation, domain, and data layers" width="100%" />

Zephyr follows the dependency rule strictly: **domain has no Flutter or networking imports.** Presentation reaches the domain layer only through use cases; data depends on domain by implementing its repository contracts. Either outer layer can be swapped — a different backend, a different UI on top of the same domain — without touching the rules in the middle.

```text
lib/
├── core/          theming, routing, DI, constants, shared widgets
├── domain/        entities, use cases, repository contracts — pure Dart
├── data/          models, remote (Dio) & local (Hive) sources, repo impls
└── presentation/
    ├── screens/    home, forecast, map, search, favourites, settings, onboarding, splash
    ├── widgets/    weather hero, particle system, instrument widgets, nav, drawer
    └── providers/  Riverpod providers wiring it all together
```

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/aurora-divider.svg" alt="" width="100%" />

## Platforms

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/platform-strip.svg" alt="Android, iOS, Windows, macOS, Linux, and Web" width="100%" />

One codebase, six targets. Mobile carries the full experience — location services, onboarding, notifications — while desktop and web builds share the same providers and widget tree.

## Getting started

### Prerequisites

- Flutter SDK ≥ 3.19
- An API key from your weather data provider of choice (WeatherAPI.com by default)

### Setup

```bash
# 1. Clone
git clone https://github.com/NarendraM45/Zephyr.git
cd Zephyr

# 2. Install dependencies
flutter pub get

# 3. Generate Freezed / Riverpod / Hive code
dart run build_runner build --delete-conflicting-outputs

# 4. Add your API key
#    → set it in lib/core/constants/app_constants.dart
#      (or wire up your preferred secrets approach)

# 5. Run
flutter run
```

Build a release for a specific target with `flutter build <apk|ios|windows|macos|linux|web>`.

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/aurora-divider.svg" alt="" width="100%" />

## Download

<div align="center">

### [⬇ Get the latest APK](https://github.com/NarendraM45/Zephyr/releases/download/v1.0.0/Zephyr_1.1.0.apk)

<sub>Builds for other platforms are attached to each <a href="https://github.com/NarendraM45/Zephyr/releases">release</a>.</sub>

</div>

## Project structure

<details>
<summary>Expand full <code>lib/</code> tree</summary>

```text
lib/
├── core/
│   ├── theme/          AppColors, AppTheme, AppTypography
│   ├── constants/
│   ├── routing/        GoRouter configuration
│   └── di/              get_it / injectable setup
├── data/
│   ├── datasources/     remote (Dio) + local (Hive)
│   ├── models/          Freezed + json_serializable
│   └── repositories/    implements domain contracts
├── domain/
│   ├── entities/
│   ├── repositories/    abstract contracts
│   └── usecases/
└── presentation/
    ├── providers/
    ├── screens/
    │   ├── splash/
    │   ├── onboarding/
    │   ├── home/
    │   ├── forecast/
    │   ├── weather_map/
    │   ├── search/
    │   ├── favourites/
    │   └── settings/
    └── widgets/
```

</details>

## Testing

```bash
flutter test
```

The suite covers domain use cases and repositories with generated fakes, plus widget tests for the home screen and the custom instrument widgets.

## Roadmap

A few ideas under consideration for future releases:

- [ ] Severe weather push notifications
- [ ] Home-screen widgets for Android and iOS
- [ ] Multi-day animated radar playback
- [ ] Wear OS / watchOS companion

## Contributing

Issues and pull requests are welcome. For larger changes, please open an issue first to discuss what you'd like to change.

```bash
git checkout -b feature/your-feature
# make your changes
git commit -m "feat: describe your change"
git push origin feature/your-feature
```

## License

This project is distributed under the MIT License — see [`LICENSE`](LICENSE) for details. (No `LICENSE` file yet? GitHub can generate one from the *Add file* menu in the repo root.)

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/aurora-divider.svg" alt="" width="100%" />

<div align="center">

<img src="https://raw.githubusercontent.com/NarendraM45/Zephyr/main/.github/assets/footer-banner.svg" alt="Made with Flutter — crafted for clear skies" width="100%" />

<sub><a href="#top">↑ back to top</a></sub>

</div>
