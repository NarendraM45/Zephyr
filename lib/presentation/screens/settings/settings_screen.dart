import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/theme/app_typography.dart';
import '../../../core/theme/app_colors.dart';
import '../../providers/settings_provider.dart';
import '../../providers/theme_provider.dart';
import '../../widgets/temperature_toggle.dart';
import '../../widgets/bottom_nav_bar.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settings = ref.watch(settingsNotifierProvider);
    final notifier = ref.read(settingsNotifierProvider.notifier);

    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF1E1E2C) : const Color(0xFFF0F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Settings', style: TextStyle(fontFamily: 'SpaceGrotesk', fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => bottomNavScaffoldKey.currentState?.openDrawer(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionHeader(context, 'Units'),
          Container(
            decoration: BoxDecoration(color: AppColors.glassWhite, borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              title: Text('Temperature Unit', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
              trailing: TemperatureToggle(
                useCelsius: settings.useCelsius,
                onChanged: (_) => notifier.toggleUnit(),
              ),
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionHeader(context, 'Appearance'),
          Container(
            decoration: BoxDecoration(color: AppColors.glassWhite, borderRadius: BorderRadius.circular(16)),
            child: Column(
              children: [
                RadioListTile<ThemeMode>(
                  title: Text('System', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
                  value: ThemeMode.system,
                  groupValue: ref.watch(themeModeNotifierProvider),
                  onChanged: (mode) => ref.read(themeModeNotifierProvider.notifier).setMode(mode!),
                  activeColor: Colors.blueAccent,
                ),
                RadioListTile<ThemeMode>(
                  title: Text('Light', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
                  value: ThemeMode.light,
                  groupValue: ref.watch(themeModeNotifierProvider),
                  onChanged: (mode) => ref.read(themeModeNotifierProvider.notifier).setMode(mode!),
                  activeColor: Colors.blueAccent,
                ),
                RadioListTile<ThemeMode>(
                  title: Text('Dark', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
                  value: ThemeMode.dark,
                  groupValue: ref.watch(themeModeNotifierProvider),
                  onChanged: (mode) => ref.read(themeModeNotifierProvider.notifier).setMode(mode!),
                  activeColor: Colors.blueAccent,
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _buildSectionHeader(context, 'Notifications'),
          Container(
            decoration: BoxDecoration(color: AppColors.glassWhite, borderRadius: BorderRadius.circular(16)),
            child: SwitchListTile(
              title: Text('Weather Alerts', style: TextStyle(color: Theme.of(context).colorScheme.onSurface)),
              subtitle: Text('Get notified about severe weather', style: AppTypography.label(context)),
              value: settings.notificationsEnabled,
              onChanged: (_) => notifier.toggleNotifications(),
              activeColor: Colors.blueAccent,
            ),
          ),
          const SizedBox(height: 48),
          Center(
            child: Text(
              'Zephyr v1.0.0\nMade with Flutter',
              textAlign: TextAlign.center,
              style: AppTypography.label(context, size: 12),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.54), fontSize: 12, fontWeight: FontWeight.bold, letterSpacing: 1),
      ),
    );
  }
}
