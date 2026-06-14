import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    fontFamily: 'NunitoSans',
    scaffoldBackgroundColor: const Color(0xFFF2F6FF),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6C63FF),
      brightness: Brightness.light,
      surface: const Color(0xFFFFFFFF),
      onSurface: const Color(0xFF111827),
    ),
    cardTheme: CardThemeData(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Color(0xFF111827)),
      titleTextStyle: TextStyle(
        fontFamily: 'SpaceGrotesk',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF111827),
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: 'NunitoSans',
    scaffoldBackgroundColor: const Color(0xFF0A0A14),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF6C63FF),
      brightness: Brightness.dark,
      surface: const Color(0xFF111827),
      onSurface: Colors.white,
    ),
    cardTheme: CardThemeData(
      color: const Color(0xFF1F2937),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontFamily: 'SpaceGrotesk',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ),
    ),
  );
}
