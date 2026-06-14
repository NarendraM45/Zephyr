// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$selectedCityHash() => r'3c84b58ada7198ea3902019c07438773848a6064';

/// See also [SelectedCity].
@ProviderFor(SelectedCity)
final selectedCityProvider = NotifierProvider<SelectedCity, String>.internal(
  SelectedCity.new,
  name: r'selectedCityProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$selectedCityHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SelectedCity = Notifier<String>;
String _$weatherNotifierHash() => r'4257113cee6c3929c546b31d07bc195e70b0902e';

/// See also [WeatherNotifier].
@ProviderFor(WeatherNotifier)
final weatherNotifierProvider =
    AsyncNotifierProvider<WeatherNotifier, Weather>.internal(
  WeatherNotifier.new,
  name: r'weatherNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$weatherNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WeatherNotifier = AsyncNotifier<Weather>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
