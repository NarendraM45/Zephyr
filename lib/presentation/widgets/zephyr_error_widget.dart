import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/errors/failures.dart';
import '../../core/theme/app_typography.dart';
import '../../core/constants/asset_paths.dart';

class ZephyrErrorWidget extends StatelessWidget {
  final Failure failure;
  final VoidCallback onRetry;

  const ZephyrErrorWidget({
    super.key,
    required this.failure,
    required this.onRetry,
  });

  String _getLottieForFailure() {
    return switch (failure) {
      NetworkFailure() => AssetPaths.thunderstorm,
      NotFoundFailure() => AssetPaths.clearNight,
      ServerFailure() => AssetPaths.cloudy,
      _ => AssetPaths.foggy,
    };
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(_getLottieForFailure(), width: 150, height: 150, repeat: true),
            const SizedBox(height: 24),
            Text(
              failure.primaryMessage,
              style: AppTypography.heading2(context),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            Text(
              failure.secondaryMessage,
              style: AppTypography.body(context, size: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white24,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
              ),
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}
