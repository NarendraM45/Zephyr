class UnitConverter {
  static double cToF(double celsius) => (celsius * 9 / 5) + 32;
  static double fToC(double fahrenheit) => (fahrenheit - 32) * 5 / 9;

  static double kphToMph(double kph) => kph / 1.609344;
  static double mphToKph(double mph) => mph * 1.609344;
}
