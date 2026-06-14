import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';
import 'package:geolocator/geolocator.dart';
import '../providers/weather_provider.dart';
import '../providers/forecast_provider.dart';

enum LocationPermissionState {
  serviceDisabled,
  permissionDenied,
  permissionPermanent,
}

class LocationPermissionSheet extends ConsumerWidget {
  final LocationPermissionState reason;
  const LocationPermissionSheet({required this.reason, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(28)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: Theme.of(context).brightness == Brightness.dark
              ? [
                  const Color(0xFF1A1A2E).withOpacity(0.95),
                  const Color(0xFF16213E).withOpacity(0.95),
                ]
              : [
                  Colors.white.withOpacity(0.95),
                  const Color(0xFFF0F4FF).withOpacity(0.95),
                ],
        ),
      ),
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40, height: 4,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 24),
          Lottie.asset(
            'assets/lottie/sunny.json', // We don't have location_pulse.json, fallback to sunny or cloud
            width: 120, height: 120,
            repeat: true,
          ),
          const SizedBox(height: 20),
          Text(
            reason == LocationPermissionState.serviceDisabled
                ? 'Location Services Off'
                : 'Location Permission Needed',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            reason == LocationPermissionState.serviceDisabled
                ? 'Zephyr needs your device location to show accurate weather for your area. Please enable Location Services in Settings.'
                : reason == LocationPermissionState.permissionPermanent
                    ? 'Location access was permanently denied. Please go to App Settings to grant permission.'
                    : 'Zephyr uses your location to show real-time weather exactly where you are.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: FilledButton.icon(
              onPressed: () async {
                Navigator.pop(context);
                if (reason == LocationPermissionState.serviceDisabled) {
                  await Geolocator.openLocationSettings();
                } else if (reason == LocationPermissionState.permissionPermanent) {
                  await Geolocator.openAppSettings();
                } else {
                  await Geolocator.requestPermission();
                  ref.invalidate(weatherNotifierProvider);
                  ref.invalidate(forecastNotifierProvider);
                }
              },
              icon: Icon(
                reason == LocationPermissionState.serviceDisabled
                    ? Icons.location_on_rounded
                    : Icons.settings_rounded,
              ),
              label: Text(
                reason == LocationPermissionState.serviceDisabled
                    ? 'Enable Location Services'
                    : reason == LocationPermissionState.permissionPermanent
                        ? 'Open App Settings'
                        : 'Allow Location Access',
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: const Color(0xFF6C63FF),
              ),
            ),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              context.push('/search'); // changed to push from go to keep stack
            },
            child: Text(
              'Search a city manually instead',
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
