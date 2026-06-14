import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../domain/entities/weather.dart';

class UVIndexCard extends StatelessWidget {
  final Weather weather;
  const UVIndexCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final double uv = weather.uvIndex;
    
    String uvLevel;
    Color uvColor;
    if (uv < 3) {
      uvLevel = 'Low';
      uvColor = Colors.greenAccent;
    } else if (uv < 6) {
      uvLevel = 'Moderate';
      uvColor = Colors.yellowAccent;
    } else if (uv < 8) {
      uvLevel = 'High';
      uvColor = Colors.orangeAccent;
    } else if (uv < 11) {
      uvLevel = 'Very High';
      uvColor = Colors.deepOrangeAccent;
    } else {
      uvLevel = 'Extreme';
      uvColor = Colors.redAccent;
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(
          color: isDark ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.05),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isDark ? Colors.black.withOpacity(0.2) : Colors.white.withOpacity(0.5),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.sunny, color: Colors.amber, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'UV INDEX',
                      style: TextStyle(
                        fontFamily: 'NunitoSans',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: isDark ? Colors.white70 : Colors.black54,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Text(
                  uv.toInt().toString(),
                  style: TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: isDark ? Colors.white : Colors.black87,
                  ),
                ),
                Text(
                  uvLevel,
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: uvColor,
                  ),
                ),
                const SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: (uv / 11).clamp(0.0, 1.0),
                    minHeight: 6,
                    backgroundColor: isDark ? Colors.white12 : Colors.black12,
                    valueColor: AlwaysStoppedAnimation<Color>(uvColor),
                  ),
                ).animate().scaleX(begin: 0, alignment: Alignment.centerLeft, duration: 600.ms, curve: Curves.easeOutExpo),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
