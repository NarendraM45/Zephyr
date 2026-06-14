import 'package:flutter/material.dart' hide DateUtils;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../domain/entities/forecast_day.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/utils/date_utils.dart';
import '../../../widgets/glassmorphism_card.dart';
import '../../../widgets/lottie_weather_icon.dart';
import '../../../providers/settings_provider.dart';

class WeeklyPreviewList extends ConsumerWidget {
  final List<ForecastDay> forecast;

  const WeeklyPreviewList({super.key, required this.forecast});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsNotifierProvider);

    return GlassmorphismCard(
      child: Column(
        children: forecast.take(7).map((day) {
          final minTemp = settings.useCelsius ? day.minTempC : day.minTempF;
          final maxTemp = settings.useCelsius ? day.maxTempC : day.maxTempF;

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  child: Text(DateUtils.formatDayName(day.date).substring(0, 3), style: AppTypography.body(context, size: 16)),
                ),
                LottieWeatherIcon(conditionCode: day.conditionCode, isDay: true, width: 30, height: 30),
                const SizedBox(width: 8),
                Text('${day.dailyChanceOfRain}%', style: AppTypography.label(context, size: 12).copyWith(color: Colors.blueAccent)),
                const Spacer(),
                Text('${minTemp.round()}°', style: AppTypography.body(context, size: 16, color: Colors.white60)),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [Colors.blue, Colors.orange]),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text('${maxTemp.round()}°', style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 16, color: Colors.white)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
