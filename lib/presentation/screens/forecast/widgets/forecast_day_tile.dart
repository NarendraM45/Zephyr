import 'dart:ui';
import 'package:flutter/material.dart' hide DateUtils;
import '../../../../domain/entities/forecast_day.dart';
import '../../../../core/utils/date_utils.dart';
import '../../../widgets/lottie_weather_icon.dart';

class ForecastDayTile extends StatelessWidget {
  final ForecastDay day;
  final bool isSelected;
  final VoidCallback onTap;
  final bool useCelsius;

  const ForecastDayTile({
    super.key,
    required this.day,
    required this.isSelected,
    required this.onTap,
    required this.useCelsius,
  });

  @override
  Widget build(BuildContext context) {
    final maxTemp = useCelsius ? day.maxTempC : day.maxTempF;
    final minTemp = useCelsius ? day.minTempC : day.minTempF;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeOutCubic,
        width: isSelected ? 85 : 75,
        margin: const EdgeInsets.symmetric(vertical: 4),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white.withOpacity(0.15) : Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(40),
          border: Border.all(
            color: isSelected ? Colors.white.withOpacity(0.5) : Colors.white.withOpacity(0.1),
            width: isSelected ? 1.5 : 1.0,
          ),
          boxShadow: isSelected ? [
            BoxShadow(
              color: Colors.white.withOpacity(0.1),
              blurRadius: 15,
              offset: const Offset(0, 5),
            )
          ] : [],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: isSelected ? 15 : 5, sigmaY: isSelected ? 15 : 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  DateUtils.formatDayName(day.date).substring(0, 3).toUpperCase(), 
                  style: TextStyle(
                    fontFamily: 'SpaceGrotesk', 
                    fontSize: isSelected ? 14 : 12, 
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w600,
                    color: isSelected ? Colors.white : Colors.white.withOpacity(0.7),
                  )
                ),
                const SizedBox(height: 8),
                LottieWeatherIcon(
                  conditionCode: day.conditionCode, 
                  isDay: true, 
                  width: isSelected ? 48 : 36, 
                  height: isSelected ? 48 : 36,
                ),
                const SizedBox(height: 8),
                Text(
                  '${maxTemp.round()}°', 
                  style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold, 
                    fontFamily: 'SpaceGrotesk', 
                    fontSize: isSelected ? 18 : 16,
                  )
                ),
                Text(
                  '${minTemp.round()}°', 
                  style: TextStyle(
                    color: isSelected ? Colors.white.withOpacity(0.9) : Colors.white.withOpacity(0.5), 
                    fontFamily: 'SpaceGrotesk', 
                    fontSize: isSelected ? 14 : 12,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
