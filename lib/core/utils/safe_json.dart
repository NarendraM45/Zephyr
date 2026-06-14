class SafeJson {
  static int toInt(dynamic value) {
    return (value as num?)?.toInt() ?? 0;
  }

  static double toDouble(dynamic value) {
    return (value as num?)?.toDouble() ?? 0.0;
  }
}
