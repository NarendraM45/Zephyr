import 'package:flutter/material.dart';
import '../../core/theme/app_typography.dart';

class TemperatureToggle extends StatelessWidget {
  final bool useCelsius;
  final ValueChanged<bool> onChanged;

  const TemperatureToggle({
    super.key,
    required this.useCelsius,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(!useCelsius),
      child: Container(
        width: 100,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              left: useCelsius ? 2 : 50,
              top: 2,
              bottom: 2,
              width: 48,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Center(
                    child: Text('°C', 
                      style: AppTypography.label(context, size: 14).copyWith(
                        color: useCelsius ? Colors.black : Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text('°F', 
                      style: AppTypography.label(context, size: 14).copyWith(
                        color: !useCelsius ? Colors.black : Colors.white70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
