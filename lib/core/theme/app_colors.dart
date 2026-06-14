import 'package:flutter/material.dart';

class AppColors {
  // Glassmorphism
  static const glassWhite = Color(0x1FFFFFFF);       // 12% white
  static const glassBorder = Color(0x40FFFFFF);       // 25% white

  // Weather dynamic gradients
  static const Map<String, List<Color>> dayGradients = {
    'sunny':        [Color(0xFFFF8C42), Color(0xFFFF6B35), Color(0xFF4A90D9), Color(0xFF87CEEB)],
    'partlyCloudy': [Color(0xFF74B9FF), Color(0xFF0984E3), Color(0xFF636E72)],
    'cloudy':       [Color(0xFF636E72), Color(0xFF4B5563), Color(0xFF374151)],
    'rainy':        [Color(0xFF2D3436), Color(0xFF374151), Color(0xFF4B5563)],
    'heavy_rain':   [Color(0xFF1F2937), Color(0xFF111827), Color(0xFF1F2937)],
    'snowy':        [Color(0xFFDFE6E9), Color(0xFFB2BEC3), Color(0xFF636E72)],
    'stormy':       [Color(0xFF1F2937), Color(0xFF111827), Color(0xFF030712)],
    'foggy':        [Color(0xFF9CA3AF), Color(0xFF6B7280), Color(0xFF4B5563)],
  };

  static const Map<String, List<Color>> nightGradients = {
    'sunny':        [Color(0xFF0F0C29), Color(0xFF302B63), Color(0xFF24243E)],
    'partlyCloudy': [Color(0xFF1A1A2E), Color(0xFF16213E), Color(0xFF0F3460)],
    'cloudy':       [Color(0xFF1A1A2E), Color(0xFF2D3436), Color(0xFF374151)],
    'rainy':        [Color(0xFF0D1117), Color(0xFF161B22), Color(0xFF1F2937)],
    'heavy_rain':   [Color(0xFF030712), Color(0xFF0D1117), Color(0xFF111827)],
    'snowy':        [Color(0xFF1E293B), Color(0xFF334155), Color(0xFF475569)],
    'stormy':       [Color(0xFF030712), Color(0xFF0D1117), Color(0xFF0F0F0F)],
    'foggy':        [Color(0xFF1F2937), Color(0xFF374151), Color(0xFF4B5563)],
  };

  // AQI colors
  static const aqiGood        = Color(0xFF34D399);  // 0-50
  static const aqiModerate    = Color(0xFFFBBF24);  // 51-100
  static const aqiUnhealthySG = Color(0xFFF97316);  // 101-150
  static const aqiUnhealthy   = Color(0xFFEF4444);  // 151-200
  static const aqiVeryUnhealthy = Color(0xFFA855F7);// 201-300
  static const aqiHazardous   = Color(0xFF7F1D1D);  // 300+

  // UV index arc gradient stops
  static const uvColors = [
    Color(0xFF34D399), // low 0-2
    Color(0xFFFBBF24), // moderate 3-5
    Color(0xFFF97316), // high 6-7
    Color(0xFFEF4444), // very high 8-10
    Color(0xFFA855F7), // extreme 11+
  ];

  // Text on dark weather backgrounds
  static const weatherTextPrimary   = Color(0xFFFFFFFF);
  static const weatherTextSecondary = Color(0xCCFFFFFF); // 80% white
  static const weatherTextMuted     = Color(0x99FFFFFF); // 60% white
}
