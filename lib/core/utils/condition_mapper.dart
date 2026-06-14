import 'package:flutter/material.dart';
import '../constants/asset_paths.dart';

enum ConditionGroup {
  sunny, partlyCloudy, cloudy, foggy,
  drizzle, rainy, heavyRain, thunderstorm,
  snowy, heavySnow, blizzard, icePellets,
}

class ConditionMapper {
  static ConditionGroup groupFromCode(int code) => switch (code) {
    1000 => ConditionGroup.sunny,
    1003 => ConditionGroup.partlyCloudy,
    1006 || 1009 => ConditionGroup.cloudy,
    1030 || 1135 || 1147 => ConditionGroup.foggy,
    >= 1150 && <= 1171 => ConditionGroup.drizzle,
    >= 1180 && <= 1201 => ConditionGroup.rainy,
    >= 1240 && <= 1246 => ConditionGroup.heavyRain,
    1087 || (>= 1273 && <= 1276) => ConditionGroup.thunderstorm,
    >= 1210 && <= 1225 => ConditionGroup.snowy,
    >= 1255 && <= 1258 => ConditionGroup.heavySnow,
    1117 || 1237 => ConditionGroup.blizzard,
    1204 || 1207 || 1249 || 1252 => ConditionGroup.icePellets,
    _ => ConditionGroup.cloudy,
  };

  static String lottieAsset(int code, bool isDay) {
    final group = groupFromCode(code);
    return switch (group) {
      ConditionGroup.sunny => isDay ? AssetPaths.sunny : AssetPaths.clearNight,
      ConditionGroup.partlyCloudy => isDay ? AssetPaths.partlyCloudyDay : AssetPaths.partlyCloudyNight,
      ConditionGroup.cloudy || ConditionGroup.foggy => AssetPaths.cloudy,
      ConditionGroup.drizzle => AssetPaths.drizzle,
      ConditionGroup.rainy => AssetPaths.rainy,
      ConditionGroup.heavyRain => AssetPaths.heavyRain,
      ConditionGroup.thunderstorm => AssetPaths.thunderstorm,
      ConditionGroup.snowy => AssetPaths.snowy,
      ConditionGroup.heavySnow || ConditionGroup.blizzard => AssetPaths.heavySnow,
      ConditionGroup.icePellets => AssetPaths.icePellets,
    };
  }

  static String gradientKey(int code) => switch (groupFromCode(code)) {
    ConditionGroup.sunny => 'sunny',
    ConditionGroup.partlyCloudy => 'partlyCloudy',
    ConditionGroup.cloudy || ConditionGroup.foggy => 'cloudy',
    ConditionGroup.rainy || ConditionGroup.drizzle => 'rainy',
    ConditionGroup.heavyRain => 'heavy_rain',
    ConditionGroup.thunderstorm || ConditionGroup.blizzard => 'stormy',
    ConditionGroup.snowy || ConditionGroup.heavySnow || ConditionGroup.icePellets => 'snowy',
  };

  static IconData getIconData(int code) {
    return switch (groupFromCode(code)) {
      ConditionGroup.sunny => Icons.wb_sunny,
      ConditionGroup.partlyCloudy => Icons.cloud_queue,
      ConditionGroup.cloudy || ConditionGroup.foggy => Icons.cloud,
      ConditionGroup.rainy || ConditionGroup.drizzle => Icons.water_drop,
      ConditionGroup.heavyRain => Icons.thunderstorm,
      ConditionGroup.thunderstorm || ConditionGroup.blizzard => Icons.flash_on,
      ConditionGroup.snowy || ConditionGroup.heavySnow || ConditionGroup.icePellets => Icons.ac_unit,
    };
  }
}
