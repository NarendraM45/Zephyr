class ApiConstants {
  static const baseUrl    = 'https://api.weatherapi.com/v1';
  static const apiKey     = '5daa1624fb134726a9655832261006'; // Replace with actual API key
  static const current    = '/current.json';
  static const forecast   = '/forecast.json';
  static const search     = '/search.json';
  static const connectTimeout = Duration(seconds: 15);
  static const receiveTimeout = Duration(seconds: 30);
  static const forecastDays   = 7;
}
