import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../domain/entities/weather.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/condition_mapper.dart';
import '../../../widgets/lottie_weather_icon.dart';
import '../../../providers/settings_provider.dart';

class FavoriteCityCard extends ConsumerWidget {
  final Weather weather;
  final VoidCallback onTap;
  final VoidCallback onRemove;

  const FavoriteCityCard({
    super.key,
    required this.weather,
    required this.onTap,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsNotifierProvider);
    final temp = settings.useCelsius ? weather.tempC : weather.tempF;
    final maxTemp = settings.useCelsius ? weather.tempC + 2 : weather.tempF + 4; // Mock max for UI
    final minTemp = settings.useCelsius ? weather.tempC - 2 : weather.tempF - 4; // Mock min for UI
    
    String displayName = weather.cityName;
    if (displayName.contains('|')) {
      displayName = displayName.split('|').last;
    }

    final gradientKey = ConditionMapper.gradientKey(weather.conditionCode);
    final gradientColors = weather.isDay 
        ? AppColors.dayGradients[gradientKey] ?? AppColors.dayGradients['cloudy']!
        : AppColors.nightGradients[gradientKey] ?? AppColors.nightGradients['cloudy']!;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 140,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          gradient: LinearGradient(
            colors: gradientColors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(color: gradientColors.last.withOpacity(0.4), blurRadius: 12, offset: const Offset(0, 6)),
          ],
        ),
        child: Stack(
          children: [
            Positioned(
              right: -20,
              top: -20,
              child: Icon(ConditionMapper.getIconData(weather.conditionCode), size: 100, color: Colors.white.withOpacity(0.2)),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(displayName, style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                        const SizedBox(height: 4),
                        Text(weather.localtime.split(' ').last, style: const TextStyle(color: Colors.white70, fontSize: 12)),
                        const SizedBox(height: 16),
                        Text(weather.conditionText, style: const TextStyle(color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${temp.round()}°', style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white)),
                      Row(
                        children: [
                          Text('H:${maxTemp.round()}°', style: const TextStyle(color: Colors.white70, fontSize: 12)),
                          const SizedBox(width: 8),
                          Text('L:${minTemp.round()}°', style: const TextStyle(color: Colors.white70, fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  LottieWeatherIcon(conditionCode: weather.conditionCode, isDay: weather.isDay, width: 60, height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
