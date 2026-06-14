import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/utils/condition_mapper.dart';
import '../../../domain/entities/weather.dart';
import '../../providers/weather_provider.dart';
import '../../providers/forecast_provider.dart';
import '../../widgets/particle_system.dart';
import '../../widgets/shimmer_weather_loader.dart';
import '../../widgets/zephyr_error_widget.dart';
import '../../widgets/glassmorphism_card.dart';
import '../../widgets/moon_phase_painter.dart';
import '../../widgets/wind_compass.dart';
import 'widgets/weather_hero.dart';
import 'widgets/stats_card.dart';
import 'widgets/hourly_forecast_row.dart';
import 'widgets/weekly_preview_list.dart';
import 'widgets/aqi_card.dart';
import 'widgets/alerts_banner.dart';
import 'widgets/uv_index_card.dart';
import 'widgets/sunrise_sunset_card.dart';

import '../../widgets/bottom_nav_bar.dart';
import '../../providers/theme_provider.dart';
import '../../../core/errors/failures.dart';
import '../../widgets/location_permission_sheet.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _showLocationError(BuildContext context, WidgetRef ref, LocationPermissionState reason) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => LocationPermissionSheet(reason: reason),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(weatherNotifierProvider, (previous, next) {
      if (!next.isLoading && next.hasError) {
        final err = next.error;
        if (err is LocationFailure) {
          final msg = err.message.toLowerCase();
          if (msg.contains('disabled')) {
            _showLocationError(context, ref, LocationPermissionState.serviceDisabled);
          } else if (msg.contains('permanently')) {
            _showLocationError(context, ref, LocationPermissionState.permissionPermanent);
          } else {
            _showLocationError(context, ref, LocationPermissionState.permissionDenied);
          }
        }
      }
    });

    final weatherState = ref.watch(weatherNotifierProvider);

    return Scaffold(
      extendBodyBehindAppBar: true,
      body: weatherState.when(
        data: (weather) => _HomeContent(weather: weather),
        loading: () => const _LoadingBackground(child: ShimmerWeatherLoader()),
        error: (err, stack) => _LoadingBackground(
          child: ZephyrErrorWidget(
            failure: err is Failure ? err : const Failure.unknown(message: 'Unexpected error'),
            onRetry: () => ref.read(weatherNotifierProvider.notifier).refresh(),
          ),
        ),
      ),
    );
  }
}

class _LoadingBackground extends StatelessWidget {
  final Widget child;
  const _LoadingBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: AppColors.dayGradients['cloudy']!,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}

class _HomeContent extends ConsumerWidget {
  final Weather weather;

  const _HomeContent({required this.weather});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forecastState = ref.watch(forecastNotifierProvider);
    
    final gradientKey = ConditionMapper.gradientKey(weather.conditionCode);
    final gradientColors = weather.isDay 
        ? AppColors.dayGradients[gradientKey] ?? AppColors.dayGradients['cloudy']!
        : AppColors.nightGradients[gradientKey] ?? AppColors.nightGradients['cloudy']!;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: IgnorePointer(
              child: RepaintBoundary(
                child: WeatherParticleSystem(
                  conditionCode: weather.conditionCode,
                  isDay: weather.isDay,
                ),
              ),
            ),
          ),
          RefreshIndicator(
            onRefresh: () async {
              final weatherNotifier = ref.read(weatherNotifierProvider.notifier);
              final forecastNotifier = ref.read(forecastNotifierProvider.notifier);
              await weatherNotifier.refresh();
              await forecastNotifier.refresh();
            },
            color: gradientColors.last,
            backgroundColor: Colors.white,
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              slivers: [
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  pinned: false,
                  centerTitle: true,
                  title: const Text('Zephyr', style: TextStyle(fontFamily: 'SpaceGrotesk', fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20)),
                  leading: IconButton(
                    icon: const Icon(Icons.menu_rounded, color: Colors.white),
                    onPressed: () => bottomNavScaffoldKey.currentState?.openDrawer(),
                  ),
                  actions: [
                    Consumer(builder: (context, ref, _) {
                      final themeMode = ref.watch(themeModeNotifierProvider);
                      final isDark = themeMode == ThemeMode.dark ||
                          (themeMode == ThemeMode.system &&
                              MediaQuery.platformBrightnessOf(context) == Brightness.dark);
                      return IconButton(
                        icon: Icon(
                          isDark ? Icons.wb_sunny_rounded : Icons.nightlight_round,
                          color: Colors.white,
                        ),
                        onPressed: () => ref.read(themeModeNotifierProvider.notifier).toggle(),
                      );
                    }),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.location_on, color: Colors.white, size: 20),
                            const SizedBox(width: 8),
                            Text(
                              weather.cityName,
                              style: const TextStyle(
                                fontFamily: 'SpaceGrotesk',
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ).animate().fadeIn(duration: 600.ms).slideY(begin: -0.2),
                        const SizedBox(height: 4),
                        Text(
                          // Using a simple date format, if Intl is imported
                          DateFormat('EEEE, d MMMM').format(DateTime.parse(weather.localtime)),
                          style: const TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ).animate().fadeIn(duration: 600.ms, delay: 100.ms),
                        const SizedBox(height: 24),
                        WeatherHero(weather: weather),
                        const SizedBox(height: 32),
                        AlertsBanner(alerts: weather.alerts),
                        StatsCard(weather: weather),
                        const SizedBox(height: 16),
                        
                        // forecast parts
                        forecastState.when(
                          data: (forecastList) {
                            if (forecastList.isEmpty) return const SizedBox.shrink();
                            final today = forecastList.first;
                            return Column(
                              children: [
                                HourlyForecastRow(hourly: today.hours),
                                const SizedBox(height: 24),
                                
                                Row(
                                  children: [
                                    Expanded(
                                      child: UVIndexCard(weather: weather),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: SunriseSunsetCard(forecastDay: today),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                
                                Row(
                                  children: [
                                    Expanded(
                                      child: GlassmorphismCard(
                                        child: Column(
                                          children: [
                                            const Text('Wind', style: TextStyle(color: Colors.white70, fontFamily: 'NunitoSans', fontSize: 14)),
                                            const SizedBox(height: 16),
                                            WindCompassWidget(
                                              windDegree: weather.windDegree.toDouble(),
                                              windSpeed: weather.windKph,
                                              windDir: weather.windDir,
                                              useMph: false, // ideally from settings
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 16),
                                    Expanded(
                                      child: GlassmorphismCard(
                                        child: Column(
                                          children: [
                                            const Text('Moon Phase', style: TextStyle(color: Colors.white70, fontFamily: 'NunitoSans', fontSize: 14)),
                                            const SizedBox(height: 16),
                                            MoonPhasePainter(
                                              moonIllumination: today.moonIllumination,
                                              moonPhaseName: today.moonPhase,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 24),
                                WeeklyPreviewList(forecast: forecastList),
                              ],
                            ).animate().fadeIn(duration: 500.ms).slideY(begin: 0.1);
                          },
                          loading: () => const Padding(padding: EdgeInsets.all(32.0), child: CircularProgressIndicator(color: Colors.white)),
                          error: (_, __) => const SizedBox.shrink(),
                        ),
                        
                        const SizedBox(height: 16),
                        if (weather.airQuality != null) ...[
                          AqiCard(aqi: weather.airQuality!),
                          const SizedBox(height: 32),
                        ],
                        const SizedBox(height: 140), // Space for bottom nav
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
