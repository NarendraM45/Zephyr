import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../core/utils/condition_mapper.dart';

class LottieWeatherIcon extends StatelessWidget {
  final int conditionCode;
  final bool isDay;
  final double width;
  final double height;

  const LottieWeatherIcon({
    super.key,
    required this.conditionCode,
    required this.isDay,
    this.width = 64,
    this.height = 64,
  });

  @override
  Widget build(BuildContext context) {
    final assetPath = ConditionMapper.lottieAsset(conditionCode, isDay);
    return Lottie.asset(
      assetPath,
      width: width,
      height: height,
      fit: BoxFit.contain,
    );
  }
}
