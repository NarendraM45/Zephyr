class CacheConstants {
  static const weatherBoxName      = 'weatherBox';
  static const forecastBoxName     = 'forecastBox';
  static const settingsBoxName     = 'settingsBox';
  static const recentSearchesBox   = 'recentSearches';
  static const favoritesBox        = 'favorites';
  static const weatherTTL          = Duration(minutes: 30);
  static const forecastTTL         = Duration(hours: 2);
  static const maxRecentSearches   = 8;
}

class AppConstants {
  static const defaultCity = 'auto:ip';
}
