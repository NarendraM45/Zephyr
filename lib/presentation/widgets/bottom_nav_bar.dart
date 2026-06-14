import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'zephyr_drawer.dart';

// Global scaffold key — child screens use this to open the drawer
final bottomNavScaffoldKey = GlobalKey<ScaffoldState>();

class BottomNavBarScaffold extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const BottomNavBarScaffold({super.key, required this.navigationShell});

  void _onTap(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: bottomNavScaffoldKey,
      drawer: const ZephyrDrawer(),
      extendBody: true,
      body: navigationShell,
      bottomNavigationBar: _buildFloatingNav(context),
    );
  }

  Widget _buildFloatingNav(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(36),
        boxShadow: [
          BoxShadow(
            color: isDark ? Colors.black.withOpacity(0.5) : Colors.black.withOpacity(0.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
            spreadRadius: 2,
          ),
          if (isDark)
            BoxShadow(
              color: Colors.white.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, -1),
              spreadRadius: 0,
            ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(36),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            height: 75,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: isDark
                  ? Colors.black.withOpacity(0.4)
                  : Colors.white.withOpacity(0.7),
              border: Border.all(
                color: isDark
                    ? Colors.white.withOpacity(0.15)
                    : Colors.black.withOpacity(0.05),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(36),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _NavItem(icon: Icons.home_rounded, label: 'Home',
                    isSelected: navigationShell.currentIndex == 0, onTap: () => _onTap(0)),
                _NavItem(icon: Icons.public_rounded, label: 'Map',
                    isSelected: navigationShell.currentIndex == 1, onTap: () => _onTap(1)),
                _NavItem(icon: Icons.calendar_month_rounded, label: 'Forecast',
                    isSelected: navigationShell.currentIndex == 2, onTap: () => _onTap(2)),
                _NavItem(icon: Icons.favorite_rounded, label: 'Saved',
                    isSelected: navigationShell.currentIndex == 3, onTap: () => _onTap(3)),
                _NavItem(icon: Icons.settings_rounded, label: 'Settings',
                    isSelected: navigationShell.currentIndex == 4, onTap: () => _onTap(4)),
              ],
            ),
          ),
        ),
      ),
    ).animate().slideY(begin: 1, duration: 800.ms, curve: Curves.easeOutExpo);
  }
}

class _NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavItem({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutCubic,
        padding: EdgeInsets.symmetric(horizontal: isSelected ? 20 : 12, vertical: 12),
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  colors: isDark 
                    ? [const Color(0xFF00C9FF).withOpacity(0.3), const Color(0xFF92FE9D).withOpacity(0.3)]
                    : [const Color(0xFF00C9FF).withOpacity(0.2), const Color(0xFF92FE9D).withOpacity(0.2)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : null,
          color: isSelected ? null : Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          border: isSelected 
              ? Border.all(color: (isDark ? Colors.white : Colors.black).withOpacity(0.1), width: 1)
              : Border.all(color: Colors.transparent, width: 1),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon, 
              color: isSelected 
                  ? (isDark ? Colors.white : Colors.black87) 
                  : (isDark ? Colors.white54 : Colors.black45), 
              size: 24
            ),
            AnimatedSize(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOutBack,
              child: isSelected
                  ? Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        label, 
                        style: TextStyle(
                          color: isDark ? Colors.white : Colors.black87,
                          fontFamily: 'NunitoSans',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
