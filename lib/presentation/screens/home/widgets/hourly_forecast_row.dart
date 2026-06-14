import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import '../../../../domain/entities/hourly_weather.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../widgets/glassmorphism_card.dart';
import '../../../widgets/lottie_weather_icon.dart';
import '../../../providers/settings_provider.dart';

class HourlyForecastRow extends ConsumerWidget {
  final List<HourlyWeather> hourly;

  const HourlyForecastRow({super.key, required this.hourly});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsNotifierProvider);

    return GlassmorphismCard(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: hourly.length,
          itemBuilder: (context, index) {
            final hour = hourly[index];
            final temp = settings.useCelsius ? hour.tempC : hour.tempF;
            final isNow = _isNow(hour.time);
            final timeText = isNow ? 'Now' : DateFormat('ha').format(DateTime.parse(hour.time));

            return SizedBox(
              width: 80,
              child: Column(
                children: [
                  Text(
                    timeText,
                    style: AppTypography.body(context, 
                      size: 13,
                      color: isNow ? Colors.blueAccent : Colors.white60,
                    ).copyWith(fontWeight: isNow ? FontWeight.bold : FontWeight.normal),
                  ),
                  const SizedBox(height: 8),
                  LottieWeatherIcon(
                    conditionCode: hour.conditionCode,
                    isDay: hour.isDay,
                    width: 36,
                    height: 36,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${temp.round()}°',
                    style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 16, color: Colors.white),
                  ),
                  const Spacer(),
                  Container(
                    height: 4,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity((hour.chanceOfRain / 100).clamp(0.0, 1.0)),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  bool _isNow(String timeStr) {
    final dt = DateTime.parse(timeStr);
    final now = DateTime.now();
    return dt.year == now.year && dt.month == now.month && dt.day == now.day && dt.hour == now.hour;
  }
}
