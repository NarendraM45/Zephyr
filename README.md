# Zephyr - Weather App

"Where the sky tells its story"

Zephyr is a production-grade, visually stunning weather application built with Flutter. It provides real-time weather data, 7-day forecasts, air quality index (AQI), and severe weather alerts. It features a fully custom UI with dynamic glassmorphism, tailored gradients, and immersive particle systems for precipitation.

## Features

*   **Real-time Weather:** Current conditions, temperature, humidity, wind, pressure, and visibility.
*   **7-Day Forecast:** Detailed daily forecasts including highs/lows and precipitation probability.
*   **Hourly Trends:** Temperature and precipitation chance visualized through charts.
*   **Dynamic Visuals:** 
    *   Time-and-weather specific gradients.
    *   Lottie animations for weather conditions.
    *   Custom-built particle system for rain, snow, fog, and sun rays.
    *   Glassmorphism UI elements for a modern, sleek look.
*   **Advanced Data:** Air Quality Index (AQI), UV Index, Sunrise/Sunset, and Moon Phase.
*   **Offline Support:** Caches weather data using Hive to ensure functionality without an internet connection.
*   **Location Services:** Automatically fetches weather for your current location.
*   **Favorites:** Save and manage multiple cities.
*   **Customization:** Switch between Celsius/Fahrenheit and Light/Dark/System themes.

## Tech Stack

*   **Framework:** Flutter
*   **State Management:** Riverpod (`flutter_riverpod`, `riverpod_annotation`)
*   **Networking:** Dio (`dio`)
*   **Local Storage:** Hive (`hive_flutter`)
*   **Dependency Injection:** GetIt + Injectable (`get_it`, `injectable`)
*   **Routing:** GoRouter (`go_router`)
*   **Functional Programming:** FpDart (`fpdart` for Either type error handling)
*   **Data Models:** Freezed & JSON Serializable (`freezed`, `json_serializable`)
*   **Animations:** Lottie & Flutter Animate (`lottie`, `flutter_animate`)

## API Keys

This app uses **WeatherAPI.com**.
The API key is securely managed in `lib/core/constants/api_constants.dart`.

## Build & Run

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/yourusername/zephyr.git
    cd zephyr
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Generate code (Freezed, JSON Serializable, Injectable, Riverpod):**
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Run the app:**
    ```bash
    flutter run
    ```
