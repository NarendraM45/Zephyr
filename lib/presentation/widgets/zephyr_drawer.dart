import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import '../providers/theme_provider.dart';
import '../providers/weather_provider.dart';
import 'bottom_nav_bar.dart';

class ZephyrDrawer extends ConsumerStatefulWidget {
  const ZephyrDrawer({super.key});

  @override
  ConsumerState<ZephyrDrawer> createState() => _ZephyrDrawerState();
}

class _ZephyrDrawerState extends ConsumerState<ZephyrDrawer> {
  String? _activeRoute;

  void _navigate(String route) {
    setState(() => _activeRoute = route);
    bottomNavScaffoldKey.currentState?.closeDrawer();
    Future.delayed(const Duration(milliseconds: 250), () {
      if (mounted) context.go(route);
    });
  }

  void _pushRoute(String route) {
    bottomNavScaffoldKey.currentState?.closeDrawer();
    Future.delayed(const Duration(milliseconds: 250), () {
      if (mounted) context.push(route);
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    final isDark = themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system &&
            MediaQuery.platformBrightnessOf(context) == Brightness.dark);
    final weatherAsync = ref.watch(weatherNotifierProvider);
    final cityName = weatherAsync.valueOrNull?.cityName ?? 'Your Location';
    final condition = weatherAsync.valueOrNull?.conditionText ?? '';

    final drawerBg = isDark
        ? const Color(0xFF0D0D1A).withOpacity(0.92)
        : Colors.white.withOpacity(0.88);
    final borderColor = isDark
        ? Colors.white.withOpacity(0.10)
        : Colors.black.withOpacity(0.08);
    final textColor = isDark ? Colors.white : Colors.black87;
    final subtextColor = isDark ? Colors.white60 : Colors.black45;

    return Drawer(
      width: MediaQuery.of(context).size.width * 0.78,
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(28),
          bottomRight: Radius.circular(28),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 24, sigmaY: 24),
          child: Container(
            decoration: BoxDecoration(
              color: drawerBg,
              border: Border(
                right: BorderSide(color: borderColor, width: 1),
              ),
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Header ──
                  Container(
                    padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 56,
                          height: 56,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [Color(0xFF6C63FF), Color(0xFF3B82F6)],
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0xFF6C63FF).withOpacity(0.4),
                                blurRadius: 16,
                                offset: const Offset(0, 4),
                              )
                            ],
                          ),
                          child: const Icon(Icons.wb_sunny_rounded,
                              color: Colors.white, size: 28),
                        ).animate().scale(
                            begin: const Offset(0.6, 0.6),
                            duration: 400.ms,
                            curve: Curves.elasticOut),
                        const SizedBox(height: 16),
                        Text(cityName,
                            style: TextStyle(
                              fontFamily: 'SpaceGrotesk',
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: textColor,
                            )).animate().fadeIn(duration: 350.ms, delay: 100.ms),
                        const SizedBox(height: 4),
                        Text(condition,
                            style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontSize: 14,
                                color: subtextColor))
                            .animate()
                            .fadeIn(duration: 350.ms, delay: 150.ms),
                      ],
                    ),
                  ),

                  Divider(color: borderColor, height: 1, thickness: 1),
                  const SizedBox(height: 12),

                  // ── Nav Items ──
                  _DrawerItem(
                    icon: Icons.home_rounded,
                    label: 'Home',
                    isActive: _activeRoute == '/',
                    delay: 0,
                    onTap: () => _navigate('/'),
                  ),
                  _DrawerItem(
                    icon: Icons.calendar_month_rounded,
                    label: 'Forecast',
                    isActive: _activeRoute == '/forecast',
                    delay: 40,
                    onTap: () => _navigate('/forecast'),
                  ),
                  _DrawerItem(
                    icon: Icons.search_rounded,
                    label: 'Search City',
                    isActive: false,
                    delay: 80,
                    onTap: () => _pushRoute('/search'),
                  ),
                  _DrawerItem(
                    icon: Icons.favorite_rounded,
                    label: 'Saved Locations',
                    isActive: _activeRoute == '/favorites',
                    delay: 120,
                    onTap: () => _navigate('/favorites'),
                  ),
                  _DrawerItem(
                    icon: Icons.settings_rounded,
                    label: 'Settings',
                    isActive: _activeRoute == '/settings',
                    delay: 160,
                    onTap: () => _navigate('/settings'),
                  ),
                  _DrawerItem(
                    icon: Icons.info_outline_rounded,
                    label: 'About',
                    isActive: false,
                    delay: 200,
                    onTap: () {
                      bottomNavScaffoldKey.currentState?.closeDrawer();
                      showAboutDialog(
                        context: context,
                        applicationName: 'Zephyr',
                        applicationVersion: '1.0.0',
                        applicationLegalese: '© 2024 Zephyr Weather',
                      );
                    },
                  ),

                  const Spacer(),
                  Divider(color: borderColor, height: 1, thickness: 1),

                  // ── Theme Toggle ──
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Row(
                      children: [
                        Icon(
                          isDark ? Icons.nightlight_round : Icons.wb_sunny_rounded,
                          color: subtextColor,
                          size: 20,
                        ),
                        const SizedBox(width: 12),
                        Text(isDark ? 'Dark Mode' : 'Light Mode',
                            style: TextStyle(
                                fontFamily: 'NunitoSans',
                                fontSize: 15,
                                color: textColor)),
                        const Spacer(),
                        Switch.adaptive(
                          value: isDark,
                          onChanged: (val) =>
                              ref.read(themeModeNotifierProvider.notifier).toggle(),
                          activeColor: const Color(0xFF6C63FF),
                        ),
                      ],
                    ),
                  ).animate().fadeIn(duration: 300.ms, delay: 250.ms),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20, left: 20),
                    child: Text('Zephyr v1.0.0',
                        style: TextStyle(
                            fontFamily: 'NunitoSans',
                            fontSize: 12,
                            color: subtextColor)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;
  final int delay;
  final VoidCallback onTap;

  const _DrawerItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.delay,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    const activeColor = Color(0xFF6C63FF);
    final textColor = isDark ? Colors.white : Colors.black87;
    final subColor = isDark ? Colors.white54 : Colors.black38;

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: BoxDecoration(
          color: isActive
              ? activeColor.withOpacity(0.12)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(14),
          border: isActive
              ? Border.all(color: activeColor.withOpacity(0.3), width: 1)
              : null,
        ),
        child: Row(
          children: [
            Icon(icon,
                color: isActive ? activeColor : subColor,
                size: 22),
            const SizedBox(width: 14),
            Text(label,
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  fontSize: 15,
                  fontWeight: isActive ? FontWeight.w700 : FontWeight.w500,
                  color: isActive ? activeColor : textColor,
                )),
            if (isActive) ...[
              const Spacer(),
              Container(
                width: 6,
                height: 6,
                decoration: const BoxDecoration(
                  color: activeColor,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ],
        ),
      ),
    )
        .animate(delay: Duration(milliseconds: delay))
        .fadeIn(duration: 300.ms)
        .slideX(begin: -0.1, duration: 300.ms, curve: Curves.easeOut);
  }
}
