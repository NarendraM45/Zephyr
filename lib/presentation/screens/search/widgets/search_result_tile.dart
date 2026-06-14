import 'package:flutter/material.dart';
import '../../../../domain/entities/search_result.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';

class SearchResultTile extends StatelessWidget {
  final SearchResult result;
  final VoidCallback onTap;

  const SearchResultTile({
    super.key,
    required this.result,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    String displayName = result.name;
    if (displayName.contains('|')) {
      displayName = displayName.split('|').last;
    }

    final isDark = Theme.of(context).brightness == Brightness.dark;
    
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.glassWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.glassBorder),
      ),
      child: ListTile(
        onTap: onTap,
        title: Text(displayName, style: TextStyle(color: isDark ? Colors.white : Colors.black87, fontWeight: FontWeight.bold, fontFamily: 'NunitoSans')),
        subtitle: Text('${result.region}, ${result.country}', style: AppTypography.label(context)),
        trailing: Icon(Icons.chevron_right, color: isDark ? Colors.white60 : Colors.black54),
      ),
    );
  }
}
