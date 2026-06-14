import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@Riverpod(keepAlive: true)
class ThemeModeNotifier extends _$ThemeModeNotifier {
  static const _hiveKey = 'theme_mode';

  @override
  ThemeMode build() {
    final box = Hive.box('settings');
    final saved = box.get(_hiveKey, defaultValue: 'system') as String;
    return switch (saved) {
      'light' => ThemeMode.light,
      'dark'  => ThemeMode.dark,
      _       => ThemeMode.system,
    };
  }

  void toggle() {
    final newMode = state == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    setMode(newMode);
  }

  void setMode(ThemeMode mode) {
    state = mode;
    final key = switch (mode) {
      ThemeMode.light  => 'light',
      ThemeMode.dark   => 'dark',
      ThemeMode.system => 'system',
    };
    Hive.box('settings').put(_hiveKey, key);
  }
}
