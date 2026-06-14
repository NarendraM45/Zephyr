import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart' hide LocationServiceDisabledException;
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import '../../../core/constants/api_constants.dart';
import '../../../core/exceptions/location_exceptions.dart';
import '../../models/weather_model.dart';
import '../../models/forecast_model.dart';
import '../../models/search_result_model.dart';

@injectable
class WeatherRemoteDataSource {
  const WeatherRemoteDataSource(this._dio);
  final Dio _dio;

  Future<String> _getLocationQuery(String fallbackQuery) async {
    if (fallbackQuery != 'auto:ip') return fallbackQuery;
    
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) throw LocationServiceDisabledException();

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) throw LocationPermissionDeniedException();
      }
      if (permission == LocationPermission.deniedForever) throw LocationPermissionPermanentlyDeniedException();

      Position? position;
      try {
        position = await Geolocator.getLastKnownPosition();
      } catch (_) {}
      
      position ??= await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low,
        timeLimit: const Duration(seconds: 4),
      );

      String alias = '';
      try {
        final placemarks = await placemarkFromCoordinates(position.latitude, position.longitude)
            .timeout(const Duration(seconds: 2));
        if (placemarks.isNotEmpty) {
          final p = placemarks.first;
          final locality = p.subLocality ?? p.locality ?? p.subAdministrativeArea;
          if (locality != null && locality.isNotEmpty) {
            alias = locality;
          }
        }
      } catch (_) {}

      if (alias.isNotEmpty) {
        return '${position.latitude},${position.longitude}|$alias';
      }
      return '${position.latitude},${position.longitude}';
    } catch (e) {
      if (e is LocationServiceDisabledException || e is LocationPermissionDeniedException || e is LocationPermissionPermanentlyDeniedException) {
        rethrow;
      }
      debugPrint('⚠️ Geolocator failed: $e — using IP fallback');
      return 'auto:ip';
    }
  }

  Future<WeatherModel> getCurrentWeather(String query) async {
    final fetchedQuery = await _getLocationQuery(query);
    
    String apiQuery = fetchedQuery;
    String displayAlias = '';
    
    if (fetchedQuery.contains('|')) {
      final parts = fetchedQuery.split('|');
      apiQuery = parts[0];
      if (parts.length > 1) displayAlias = parts[1];
    }

    final response = await _dio.get(ApiConstants.current, queryParameters: {
      'key': ApiConstants.apiKey, 'q': apiQuery, 'aqi': 'yes',
    });
    final Map<String, dynamic> data = response.data;
    data['cachedAt'] = DateTime.now().toIso8601String();
    
    if (displayAlias.isNotEmpty) {
      data['location']['name'] = displayAlias;
    }
    
    return WeatherModel.fromJson(data);
  }

  Future<List<ForecastDayModel>> getForecast(String query, {int days = 7}) async {
    final fetchedQuery = await _getLocationQuery(query);
    
    String apiQuery = fetchedQuery;
    if (fetchedQuery.contains('|')) {
      apiQuery = fetchedQuery.split('|')[0];
    }

    final response = await _dio.get(ApiConstants.forecast, queryParameters: {
      'key': ApiConstants.apiKey, 'q': apiQuery,
      'days': days, 'aqi': 'yes', 'alerts': 'yes',
    });
    final data = response.data as Map<String, dynamic>;
    final forecastDays = (data['forecast']['forecastday'] as List)
      .map((d) => ForecastDayModel.fromJson(d)).toList();
    return forecastDays;
  }

  Future<List<SearchResultModel>> searchLocations(String query) async {
    try {
      final response = await _dio.get(ApiConstants.search, queryParameters: {
        'key': ApiConstants.apiKey, 'q': query,
      });
      final results = (response.data as List)
        .map((r) => SearchResultModel.fromJson(r)).toList();
        
      if (results.isEmpty) {
        // Fallback: Forward geocoding
        final locations = await locationFromAddress(query);
        if (locations.isNotEmpty) {
          final loc = locations.first;
          final placemarks = await placemarkFromCoordinates(loc.latitude, loc.longitude);
          if (placemarks.isNotEmpty) {
            final p = placemarks.first;
            final name = p.subLocality ?? p.locality ?? p.subAdministrativeArea ?? query;
            results.add(SearchResultModel(
              id: 0,
              name: name,
              region: p.administrativeArea ?? '',
              country: p.country ?? '',
              lat: loc.latitude,
              lon: loc.longitude,
            ));
          }
        }
      }
      return results;
    } catch (_) {
      return [];
    }
  }
}
