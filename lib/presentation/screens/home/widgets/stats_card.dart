import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../../../domain/entities/weather.dart';
import '../../../../core/theme/app_typography.dart';
import '../../../widgets/glassmorphism_card.dart';
import '../../../providers/settings_provider.dart';

class StatsCard extends ConsumerWidget {
  final Weather weather;

  const StatsCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsNotifierProvider);
    final wind = settings.useCelsius ? weather.windKph : weather.windMph;
    final windUnit = settings.useCelsius ? 'km/h' : 'mph';

    final stats = [
      _StatItem(icon: Icons.water_drop_outlined, value: '${weather.humidity}%', label: 'Humidity'),
      _StatItem(icon: Icons.air, value: '${wind.toStringAsFixed(1)} $windUnit', label: 'Wind'),
      _StatItem(icon: Icons.visibility_outlined, value: '${weather.visibilityKm} km', label: 'Visibility'),
      _StatItem(icon: Icons.compress, value: '${weather.pressureMb.round()} mb', label: 'Pressure'),
    ];

    return GlassmorphismCard(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2.5,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: stats.length,
        itemBuilder: (context, index) {
          final stat = stats[index];
          return Row(
            children: [
              Icon(stat.icon, color: Colors.white70, size: 24),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(stat.value, style: const TextStyle(fontFamily: 'SpaceGrotesk', fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
                  Text(stat.label, style: AppTypography.label(context, size: 12)),
                ],
              ),
            ],
          ).animate(delay: (index * 80).ms).fadeIn().slideX(begin: 0.2);
        },
      ),
    );
  }
}

class _StatItem {
  final IconData icon;
  final String value;
  final String label;

  _StatItem({required this.icon, required this.value, required this.label});
}
