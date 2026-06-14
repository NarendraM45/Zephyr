import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../domain/entities/forecast_day.dart';

class SunriseSunsetCard extends StatelessWidget {
  final ForecastDay forecastDay;
  const SunriseSunsetCard({super.key, required this.forecastDay});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

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
                    const Icon(Icons.wb_twilight_rounded, color: Colors.amberAccent, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'SUN & MOON',
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
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _TimeColumn(
                      label: 'Sunrise',
                      time: forecastDay.sunrise,
                      icon: Icons.brightness_5_rounded,
                      iconColor: Colors.amberAccent,
                      isDark: isDark,
                    ).animate().slideX(begin: -0.2, duration: 600.ms, curve: Curves.easeOutExpo).fadeIn(),
                    _TimeColumn(
                      label: 'Sunset',
                      time: forecastDay.sunset,
                      icon: Icons.brightness_4_rounded,
                      iconColor: Colors.deepOrangeAccent,
                      isDark: isDark,
                    ).animate().slideX(begin: 0.2, duration: 600.ms, curve: Curves.easeOutExpo).fadeIn(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _TimeColumn extends StatelessWidget {
  final String label;
  final String time;
  final IconData icon;
  final Color iconColor;
  final bool isDark;

  const _TimeColumn({
    required this.label,
    required this.time,
    required this.icon,
    required this.iconColor,
    required this.isDark,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(icon, color: iconColor, size: 28),
        const SizedBox(height: 8),
        Text(
          time,
          style: TextStyle(
            fontFamily: 'SpaceGrotesk',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: isDark ? Colors.white : Colors.black87,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'NunitoSans',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: isDark ? Colors.white60 : Colors.black45,
          ),
        ),
      ],
    );
  }
}
