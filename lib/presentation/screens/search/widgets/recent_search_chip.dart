import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';

class RecentSearchChip extends StatelessWidget {
  final String cityName;
  final VoidCallback onTap;
  final VoidCallback onLongPress;

  const RecentSearchChip({
    super.key,
    required this.cityName,
    required this.onTap,
    required this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    String displayName = cityName;
    if (displayName.contains('|')) {
      displayName = displayName.split('|').last;
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;

    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.glassWhite,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.glassBorder),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.history, color: isDark ? Colors.white70 : Colors.black54, size: 16),
            const SizedBox(width: 8),
            Text(
              displayName,
              style: TextStyle(
                color: isDark ? Colors.white : Colors.black87,
                fontFamily: 'NunitoSans',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
