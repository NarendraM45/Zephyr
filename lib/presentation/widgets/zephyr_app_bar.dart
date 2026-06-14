import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/theme_provider.dart';
import 'bottom_nav_bar.dart';

class ZephyrAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const ZephyrAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Icon color adapts: white on weather gradient backgrounds (home)
    // The home screen extends body behind app bar so gradient shows through
    // Other screens (settings etc.) use their own AppBar or none

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.menu_rounded, color: Colors.white),
        onPressed: () => bottomNavScaffoldKey.currentState?.openDrawer(),
        tooltip: 'Menu',
      ),
      title: const Text(
        'Zephyr',
        style: TextStyle(
          fontFamily: 'SpaceGrotesk',
          fontWeight: FontWeight.w700,
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      actions: [
        Consumer(builder: (context, ref, _) {
          final themeMode = ref.watch(themeModeNotifierProvider);
          final isDark = themeMode == ThemeMode.dark ||
              (themeMode == ThemeMode.system &&
                  MediaQuery.platformBrightnessOf(context) == Brightness.dark);
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: IconButton(
              key: ValueKey(isDark),
              icon: Icon(
                isDark ? Icons.wb_sunny_rounded : Icons.nightlight_round,
                color: Colors.white,
              ),
              onPressed: () =>
                  ref.read(themeModeNotifierProvider.notifier).toggle(),
            ),
          );
        }),
        const SizedBox(width: 8),
      ],
    );
  }
}
