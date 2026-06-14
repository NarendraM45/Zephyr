import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';
import '../../../../domain/entities/hourly_weather.dart';

class HourlyDetailChart extends StatelessWidget {
  final List<HourlyWeather> hours;
  final bool useCelsius;

  const HourlyDetailChart({super.key, required this.hours, required this.useCelsius});

  @override
  Widget build(BuildContext context) {
    if (hours.isEmpty) return const SizedBox.shrink();

    final spots = <FlSpot>[];
    double minY = double.infinity;
    double maxY = -double.infinity;

    for (int i = 0; i < hours.length; i += 3) {
      final h = hours[i];
      final temp = useCelsius ? h.tempC : h.tempF;
      if (temp < minY) minY = temp;
      if (temp > maxY) maxY = temp;
      spots.add(FlSpot(i.toDouble(), temp));
    }

    minY -= 3;
    maxY += 3;

    return SizedBox(
      height: 220,
      child: LineChart(
        LineChartData(
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            horizontalInterval: 5,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: Colors.white.withOpacity(0.1),
                strokeWidth: 1,
                dashArray: [5, 5],
              );
            },
          ),
          titlesData: FlTitlesData(
            leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (value, meta) {
                  final index = value.toInt();
                  if (index >= 0 && index < hours.length) {
                    final time = DateTime.parse(hours[index].time);
                    return Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Text(
                        DateFormat('ha').format(time), 
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7), 
                          fontSize: 12, 
                          fontFamily: 'NunitoSans',
                          fontWeight: FontWeight.w600,
                        )
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
                interval: 3,
                reservedSize: 32,
              ),
            ),
          ),
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: hours.length.toDouble() - 1,
          minY: minY,
          maxY: maxY,
          lineTouchData: LineTouchData(
            enabled: true,
            handleBuiltInTouches: true,
            touchTooltipData: LineTouchTooltipData(
              getTooltipColor: (touchedSpot) => Colors.black.withOpacity(0.7),
              tooltipRoundedRadius: 12,
              tooltipPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              tooltipMargin: 16,
              getTooltipItems: (touchedSpots) {
                return touchedSpots.map((spot) {
                  return LineTooltipItem(
                    '${spot.y.round()}°',
                    const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'SpaceGrotesk',
                      fontSize: 18,
                    ),
                  );
                }).toList();
              },
            ),
            getTouchedSpotIndicator: (barData, spotIndexes) {
              return spotIndexes.map((index) {
                return TouchedSpotIndicatorData(
                  FlLine(color: Colors.white.withOpacity(0.5), strokeWidth: 2, dashArray: [4, 4]),
                  FlDotData(
                    show: true,
                    getDotPainter: (spot, percent, barData, index) {
                      return FlDotCirclePainter(
                        radius: 6,
                        color: Colors.white,
                        strokeWidth: 3,
                        strokeColor: Colors.deepPurpleAccent,
                      );
                    },
                  ),
                );
              }).toList();
            },
          ),
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              curveSmoothness: 0.35,
              gradient: const LinearGradient(
                colors: [Color(0xFF00C9FF), Color(0xFF92FE9D)],
              ),
              barWidth: 4,
              isStrokeCapRound: true,
              dotData: const FlDotData(show: false), // Hide dots by default, only show on touch
              belowBarData: BarAreaData(
                show: true,
                gradient: LinearGradient(
                  colors: [
                    const Color(0xFF00C9FF).withOpacity(0.3),
                    const Color(0xFF92FE9D).withOpacity(0.0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOutCubic,
      ),
    );
  }
}
