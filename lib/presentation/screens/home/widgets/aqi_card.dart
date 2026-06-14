import 'package:flutter/material.dart';
import '../../../../domain/entities/air_quality.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../widgets/glassmorphism_card.dart';

class AqiCard extends StatelessWidget {
  final AirQuality aqi;

  const AqiCard({super.key, required this.aqi});

  Color _getAqiColor(int index) {
    return switch (index) {
      1 => AppColors.aqiGood,
      2 => AppColors.aqiModerate,
      3 => AppColors.aqiUnhealthySG,
      4 => AppColors.aqiUnhealthy,
      5 => AppColors.aqiVeryUnhealthy,
      6 => AppColors.aqiHazardous,
      _ => AppColors.aqiGood,
    };
  }

  String _getAqiLabel(int index) {
    return switch (index) {
      1 => 'Good',
      2 => 'Moderate',
      3 => 'Unhealthy (SG)',
      4 => 'Unhealthy',
      5 => 'Very Unhealthy',
      6 => 'Hazardous',
      _ => 'Unknown',
    };
  }

  @override
  Widget build(BuildContext context) {
    final color = _getAqiColor(aqi.usEpaIndex);
    final label = _getAqiLabel(aqi.usEpaIndex);

    return GlassmorphismCard(
      child: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: aqi.usEpaIndex / 6.0),
              duration: const Duration(milliseconds: 900),
              curve: Curves.easeOut,
              builder: (context, value, child) {
                return CircularProgressIndicator(
                  value: value,
                  backgroundColor: Colors.white12,
                  color: color,
                  strokeWidth: 8,
                );
              },
            ),
          ),
          const SizedBox(width: 24),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Air Quality', style: AppTypography.heading2(context)),
                Text(label, style: AppTypography.body(context, color: color).copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text('PM2.5: ${aqi.pm25.toStringAsFixed(1)}', style: AppTypography.label(context)),
                    const SizedBox(width: 16),
                    Text('PM10: ${aqi.pm10.toStringAsFixed(1)}', style: AppTypography.label(context)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
