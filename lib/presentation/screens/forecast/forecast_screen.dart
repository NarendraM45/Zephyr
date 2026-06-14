import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/condition_mapper.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../providers/forecast_provider.dart';
import '../../providers/settings_provider.dart';
import '../../providers/weather_provider.dart';
import '../../widgets/glassmorphism_card.dart';
import '../../widgets/lottie_weather_icon.dart';
import 'widgets/forecast_day_tile.dart';
import 'widgets/hourly_detail_chart.dart';
import 'widgets/precip_probability_chart.dart';

class ForecastScreen extends ConsumerStatefulWidget {
  const ForecastScreen({super.key});

  @override
  ConsumerState<ForecastScreen> createState() => _ForecastScreenState();
}

class _ForecastScreenState extends ConsumerState<ForecastScreen> {
  int _selectedDayIndex = 0;

  @override
  Widget build(BuildContext context) {
    final forecastState = ref.watch(forecastNotifierProvider);
    final settings = ref.watch(settingsNotifierProvider);
    final city = ref.watch(selectedCityProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black, // Fallback
      body: forecastState.when(
        data: (forecastList) {
          if (forecastList.isEmpty) return const Center(child: Text('No forecast available'));
          final selectedDay = forecastList[_selectedDayIndex];

          // Dynamic gradient based on selected day
          final gradientKey = ConditionMapper.gradientKey(selectedDay.conditionCode);
          final gradientColors = isDark 
              ? (AppColors.nightGradients[gradientKey] ?? AppColors.nightGradients['cloudy']!)
              : (AppColors.dayGradients[gradientKey] ?? AppColors.dayGradients['cloudy']!);

          final maxTemp = settings.useCelsius ? selectedDay.maxTempC : selectedDay.maxTempF;
          final minTemp = settings.useCelsius ? selectedDay.minTempC : selectedDay.minTempF;

          return Stack(
            children: [
              // Immersive Animated Gradient Background
              AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: gradientColors,
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              
              // Blur overlay to make content pop and look premium
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  color: Colors.black.withOpacity(0.15),
                ),
              ),

              // Main Content
              CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    pinned: true,
                    expandedHeight: 120,
                    flexibleSpace: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                        child: FlexibleSpaceBar(
                          titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
                          title: const Text('7-Day Forecast', 
                            style: TextStyle(
                              fontFamily: 'SpaceGrotesk', 
                              fontWeight: FontWeight.bold, 
                              color: Colors.white,
                              shadows: [Shadow(color: Colors.black45, blurRadius: 4, offset: Offset(0, 1))],
                            )
                          ),
                          background: Container(color: Colors.transparent),
                        ),
                      ),
                    ),
                    leading: IconButton(
                      icon: const Icon(Icons.menu_rounded, color: Colors.white),
                      onPressed: () => bottomNavScaffoldKey.currentState?.openDrawer(),
                    ),
                  ),

                  // City Name
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Text(
                        city.toUpperCase(), 
                        style: AppTypography.heading2(context).copyWith(
                          color: Colors.white.withOpacity(0.85),
                          letterSpacing: 1.5,
                        )
                      ).animate().fadeIn().slideX(begin: -0.1),
                    ),
                  ),

                  // Premium Hero Section for Selected Day
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.12),
                          borderRadius: BorderRadius.circular(32),
                          border: Border.all(color: Colors.white.withOpacity(0.2)),
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20, offset: const Offset(0, 10))
                          ],
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _selectedDayIndex == 0 ? 'Today' : DateFormat('EEEE').format(DateTime.parse(selectedDay.date)),
                                    style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    selectedDay.conditionText,
                                    style: TextStyle(fontFamily: 'NunitoSans', fontSize: 16, color: Colors.white.withOpacity(0.8)),
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                      Text(
                                        'H: ${maxTemp.round()}°',
                                        style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                                      ),
                                      const SizedBox(width: 12),
                                      Text(
                                        'L: ${minTemp.round()}°',
                                        style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 18, color: Colors.white.withOpacity(0.7)),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            LottieWeatherIcon(
                              conditionCode: selectedDay.conditionCode,
                              isDay: true, // Always show day icons for overall daily forecast
                              width: 100,
                              height: 100,
                            ).animate(target: _selectedDayIndex.toDouble()).scale(begin: const Offset(0.8, 0.8)).fadeIn(),
                          ],
                        ),
                      ).animate(key: ValueKey(_selectedDayIndex)).fadeIn(duration: 400.ms).slideY(begin: 0.1),
                    ),
                  ),

                  // Horizontal Day Selector
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 160, // Increased height for premium pills
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        itemCount: forecastList.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: ForecastDayTile(
                              day: forecastList[index],
                              isSelected: _selectedDayIndex == index,
                              useCelsius: settings.useCelsius,
                              onTap: () => setState(() => _selectedDayIndex = index),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  
                  const SliverToBoxAdapter(child: SizedBox(height: 24)),

                  // Temperature Trend Chart
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GlassmorphismCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.thermostat_rounded, color: Colors.white70, size: 20),
                                SizedBox(width: 8),
                                Text('Temperature Trend', style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                              ],
                            ),
                            const SizedBox(height: 24),
                            HourlyDetailChart(
                              hours: selectedDay.hours,
                              useCelsius: settings.useCelsius,
                            ),
                          ],
                        ),
                      ).animate(key: ValueKey('temp_$_selectedDayIndex')).fadeIn(duration: 400.ms),
                    ),
                  ),
                  
                  const SliverToBoxAdapter(child: SizedBox(height: 20)),

                  // Precipitation Probability Chart
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: GlassmorphismCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              children: [
                                Icon(Icons.water_drop_outlined, color: Colors.lightBlueAccent, size: 20),
                                SizedBox(width: 8),
                                Text('Precipitation Probability', style: TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white)),
                              ],
                            ),
                            const SizedBox(height: 24),
                            PrecipProbabilityChart(hours: selectedDay.hours),
                          ],
                        ),
                      ).animate(key: ValueKey('precip_$_selectedDayIndex')).fadeIn(duration: 400.ms),
                    ),
                  ),
                  const SliverToBoxAdapter(child: SizedBox(height: 140)),
                ],
              ),
            ],
          );
        },
        loading: () => const Center(child: CircularProgressIndicator(color: Colors.white)),
        error: (err, _) => Center(child: Text('Error: $err', style: const TextStyle(color: Colors.red))),
      ),
    );
  }
}
