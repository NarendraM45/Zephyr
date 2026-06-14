import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../domain/entities/weather.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../widgets/lottie_weather_icon.dart';
import '../../../providers/settings_provider.dart';

class WeatherHero extends ConsumerWidget {
  final Weather weather;

  const WeatherHero({super.key, required this.weather});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsNotifierProvider);
    final temp = settings.useCelsius ? weather.tempC : weather.tempF;
    final feelsLike = settings.useCelsius ? weather.feelsLikeC : weather.feelsLikeF;
    final unit = settings.useCelsius ? '°C' : '°F';
    final updatedText = 'Updated ${_getUpdatedTime(weather.cachedAt)} ago';

    return Column(
      children: [
        LottieWeatherIcon(
          conditionCode: weather.conditionCode,
          isDay: weather.isDay,
          width: 120,
          height: 120,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              temp.round().toString(),
              style: AppTypography.temperature(size: 96, w: FontWeight.w300),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Text(
                unit,
                style: AppTypography.temperature(size: 36, w: FontWeight.w300),
              ),
            ),
          ],
        ),
        Text(
          weather.conditionText,
          style: AppTypography.body(context, size: 20, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(
          'Feels like ${feelsLike.round()}° · $updatedText',
          style: AppTypography.body(context, size: 14, color: Colors.white60),
        ),
      ],
    ).animate().fadeIn(duration: 600.ms).slideY(begin: 0.15, curve: Curves.easeOut);
  }

  String _getUpdatedTime(DateTime cachedAt) {
    final diff = DateTime.now().difference(cachedAt);
    if (diff.inMinutes < 1) return 'just now';
    if (diff.inMinutes < 60) return '${diff.inMinutes} min';
    if (diff.inHours < 24) return '${diff.inHours} hr';
    return '${diff.inDays} days';
  }
}
