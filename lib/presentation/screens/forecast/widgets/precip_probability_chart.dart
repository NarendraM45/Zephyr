import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../domain/entities/hourly_weather.dart';
import 'package:intl/intl.dart';

class PrecipProbabilityChart extends StatelessWidget {
  final List<HourlyWeather> hours;

  const PrecipProbabilityChart({super.key, required this.hours});

  @override
  Widget build(BuildContext context) {
    if (hours.isEmpty) return const SizedBox.shrink();

    // Show every 3 hours for cleaner UI
    final displayHours = <HourlyWeather>[];
    for (int i = 0; i < hours.length; i += 3) {
      displayHours.add(hours[i]);
    }

    return SizedBox(
      height: 150,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: displayHours.asMap().entries.map((entry) {
          final index = entry.key;
          final h = entry.value;
          final time = DateTime.parse(h.time);
          final label = DateFormat('ha').format(time);
          final prob = h.chanceOfRain / 100.0;
          
          return Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '${h.chanceOfRain}%', 
                  style: TextStyle(
                    color: prob > 0 ? Colors.white : Colors.white54, 
                    fontSize: 12, 
                    fontWeight: prob > 0 ? FontWeight.bold : FontWeight.normal,
                    fontFamily: 'SpaceGrotesk'
                  )
                ),
                const SizedBox(height: 8),
                // The premium bar track
                Container(
                  width: 24,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white.withOpacity(0.05)),
                  ),
                  alignment: Alignment.bottomCenter,
                  child: FractionallySizedBox(
                    heightFactor: prob > 0 ? (prob * 0.9) + 0.1 : 0.05, // always show tiny bit
                    child: Container(
                      width: 24,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            const Color(0xFF4FACFE),
                            const Color(0xFF00F2FE).withOpacity(0.8),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: prob > 0.2 ? [
                          BoxShadow(
                            color: const Color(0xFF00F2FE).withOpacity(0.5),
                            blurRadius: 8,
                            offset: const Offset(0, -2),
                          )
                        ] : [],
                      ),
                    ),
                  ).animate(key: ValueKey('precip_bar_${h.time}')).scaleY(begin: 0, alignment: Alignment.bottomCenter, curve: Curves.easeOutBack, duration: (400 + (index * 50)).ms),
                ),
                const SizedBox(height: 12),
                Text(
                  label, 
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7), 
                    fontSize: 12,
                    fontFamily: 'NunitoSans',
                    fontWeight: FontWeight.w600,
                  )
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
