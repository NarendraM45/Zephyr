class ServerException implements Exception {
  final int statusCode;
  final String message;

  ServerException({required this.statusCode, required this.message});
}

class CacheException implements Exception {
  final String message;

  CacheException({required this.message});
}

class LocationException implements Exception {
  final String message;

  LocationException({required this.message});
}
