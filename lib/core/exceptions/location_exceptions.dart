class LocationServiceDisabledException implements Exception {
  final String message = 'Location services are disabled on this device.';
}

class LocationPermissionDeniedException implements Exception {
  final String message = 'Location permission was denied by the user.';
}

class LocationPermissionPermanentlyDeniedException implements Exception {
  final String message = 'Location permission is permanently denied.';
}
