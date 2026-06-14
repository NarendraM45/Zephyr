import 'dart:math';
import 'package:flutter/material.dart';

enum ParticleType { rain, snow, sunRay, fog }

class WeatherParticle {
  double x, y, vx, vy, size, opacity, phase;
  ParticleType type;

  WeatherParticle({
    required this.x,
    required this.y,
    required this.vx,
    required this.vy,
    required this.size,
    required this.opacity,
    required this.phase,
    required this.type,
  });
}

class WeatherParticleSystem extends StatefulWidget {
  final int conditionCode;
  final bool isDay;

  const WeatherParticleSystem({super.key, required this.conditionCode, required this.isDay});

  @override
  State<WeatherParticleSystem> createState() => _WeatherParticleSystemState();
}

class _WeatherParticleSystemState extends State<WeatherParticleSystem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<WeatherParticle> particles = [];
  ParticleType? currentType;
  int count = 0;
  final Random random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(days: 365))
      ..addListener(() {
        _updateParticles();
        setState(() {});
      });
    _setupParticles(widget.conditionCode, widget.isDay);
    if (particles.isNotEmpty) _controller.repeat();
  }

  @override
  void didUpdateWidget(covariant WeatherParticleSystem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.conditionCode != widget.conditionCode || oldWidget.isDay != widget.isDay) {
      _setupParticles(widget.conditionCode, widget.isDay);
      if (particles.isNotEmpty) {
        if (!_controller.isAnimating) _controller.repeat();
      } else {
        _controller.stop();
      }
    }
  }

  void _setupParticles(int code, bool isDay) {
    particles.clear();
    if (code == 1000 && isDay) {
      currentType = ParticleType.sunRay;
      count = 8;
    } else if ([1030, 1135, 1147].contains(code)) {
      currentType = ParticleType.fog;
      count = 15;
    } else if (code >= 1180 && code <= 1246 || code == 1087 || (code >= 1273 && code <= 1276) || (code >= 1150 && code <= 1171)) {
      currentType = ParticleType.rain;
      count = (code >= 1240) ? 200 : (code >= 1189 ? 120 : 80);
    } else if (code >= 1210 && code <= 1258 || code == 1117 || code == 1237 || [1204, 1207, 1249, 1252].contains(code)) {
      currentType = ParticleType.snow;
      count = (code >= 1219 || code == 1117 || code == 1237) ? 120 : 60;
    } else {
      currentType = null;
      count = 0;
      return;
    }

    final screenWidth = WidgetsBinding.instance.window.physicalSize.width / WidgetsBinding.instance.window.devicePixelRatio;
    final screenHeight = WidgetsBinding.instance.window.physicalSize.height / WidgetsBinding.instance.window.devicePixelRatio;

    for (int i = 0; i < count; i++) {
      if (currentType == ParticleType.rain) {
        particles.add(WeatherParticle(
          x: random.nextDouble() * screenWidth,
          y: random.nextDouble() * screenHeight,
          vx: 1.5,
          vy: 10 + random.nextDouble() * 6,
          size: 1.5,
          opacity: 0.5 + random.nextDouble() * 0.4,
          phase: 0,
          type: ParticleType.rain,
        ));
      } else if (currentType == ParticleType.snow) {
        particles.add(WeatherParticle(
          x: random.nextDouble() * screenWidth,
          y: random.nextDouble() * screenHeight,
          vx: 0,
          vy: 0.8 + random.nextDouble() * 2.5,
          size: 2 + random.nextDouble() * 3,
          opacity: 0.6 + random.nextDouble() * 0.35,
          phase: random.nextDouble() * pi * 2,
          type: ParticleType.snow,
        ));
      } else if (currentType == ParticleType.sunRay) {
        particles.add(WeatherParticle(
          x: 0, y: 0, vx: 0, vy: 0, size: 0,
          opacity: 0.05 + random.nextDouble() * 0.04,
          phase: i * (pi / 4),
          type: ParticleType.sunRay,
        ));
      } else if (currentType == ParticleType.fog) {
        particles.add(WeatherParticle(
          x: random.nextDouble() * screenWidth,
          y: random.nextDouble() * screenHeight,
          vx: 0.4 + random.nextDouble() * 0.6,
          vy: 0,
          size: 60 + random.nextDouble() * 60,
          opacity: 0.08,
          phase: 0,
          type: ParticleType.fog,
        ));
      }
    }
  }

  void _updateParticles() {
    final size = MediaQuery.of(context).size;
    final time = _controller.lastElapsedDuration?.inMilliseconds.toDouble() ?? 0.0;

    for (var p in particles) {
      if (p.type == ParticleType.rain) {
        p.x += p.vx;
        p.y += p.vy;
        if (p.y > size.height + 20) {
          p.y = -20;
          p.x = random.nextDouble() * size.width;
        }
      } else if (p.type == ParticleType.snow) {
        p.x += sin(time * 0.0008 + p.phase) * 0.8;
        p.y += p.vy;
        if (p.y > size.height + 20) {
          p.y = -20;
          p.x = random.nextDouble() * size.width;
        }
      } else if (p.type == ParticleType.sunRay) {
        // Handled in painter based on time
      } else if (p.type == ParticleType.fog) {
        p.x += p.vx;
        if (p.x > size.width + 150) {
          p.x = -150;
        }
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (particles.isEmpty) return const SizedBox.shrink();
    return CustomPaint(
      size: Size.infinite,
      painter: _ParticlePainter(particles, _controller.lastElapsedDuration?.inMilliseconds.toDouble() ?? 0.0),
    );
  }
}

class _ParticlePainter extends CustomPainter {
  final List<WeatherParticle> particles;
  final double time;

  _ParticlePainter(this.particles, this.time);

  @override
  void paint(Canvas canvas, Size size) {
    for (var p in particles) {
      final paint = Paint()..color = (p.type == ParticleType.sunRay ? const Color(0xFFFFD700) : Colors.white).withOpacity(p.opacity);
      
      if (p.type == ParticleType.rain) {
        paint.color = Colors.lightBlue.withOpacity(p.opacity);
        canvas.drawOval(Rect.fromCenter(center: Offset(p.x, p.y), width: p.size, height: 8), paint);
      } else if (p.type == ParticleType.snow) {
        paint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 1.5);
        canvas.drawCircle(Offset(p.x, p.y), p.size, paint);
      } else if (p.type == ParticleType.sunRay) {
        final angle = p.phase + (time * 0.0002);
        canvas.save();
        canvas.translate(size.width / 2, -50);
        canvas.rotate(angle);
        final path = Path()
          ..moveTo(-15, 0)
          ..lineTo(15, 0)
          ..lineTo(0, 300)
          ..close();
        canvas.drawPath(path, paint);
        canvas.restore();
      } else if (p.type == ParticleType.fog) {
        paint.color = Colors.grey.shade400.withOpacity(p.opacity);
        paint.maskFilter = const MaskFilter.blur(BlurStyle.normal, 40);
        canvas.drawCircle(Offset(p.x, p.y), p.size, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant _ParticlePainter oldDelegate) => true;
}
