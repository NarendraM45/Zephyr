import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_provider.g.dart';

class AppSettings {
  final bool useCelsius;
  final ThemeMode themeMode;
  final bool notificationsEnabled;

  const AppSettings({
    required this.useCelsius,
    required this.themeMode,
    required this.notificationsEnabled,
  });

  factory AppSettings.defaults() => const AppSettings(
    useCelsius: true,
    themeMode: ThemeMode.system,
    notificationsEnabled: false,
  );

  AppSettings copyWith({
    bool? useCelsius,
    ThemeMode? themeMode,
    bool? notificationsEnabled,
  }) {
    return AppSettings(
      useCelsius: useCelsius ?? this.useCelsius,
      themeMode: themeMode ?? this.themeMode,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
    );
  }
}

@riverpod
class SettingsNotifier extends _$SettingsNotifier {
  @override
  AppSettings build() {
    _loadSettings();
    return AppSettings.defaults();
  }

  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    state = AppSettings(
      useCelsius: prefs.getBool('useCelsius') ?? true,
      themeMode: ThemeMode.values[prefs.getInt('themeMode') ?? 0],
      notificationsEnabled: prefs.getBool('notifications') ?? false,
    );
  }

  Future<void> toggleUnit() async {
    state = state.copyWith(useCelsius: !state.useCelsius);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('useCelsius', state.useCelsius);
    HapticFeedback.lightImpact();
  }

  Future<void> setTheme(ThemeMode mode) async {
    state = state.copyWith(themeMode: mode);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('themeMode', mode.index);
  }

  Future<void> toggleNotifications() async {
    state = state.copyWith(notificationsEnabled: !state.notificationsEnabled);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('notifications', state.notificationsEnabled);
  }
}
