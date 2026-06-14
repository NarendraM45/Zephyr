import 'dart:math';
import 'package:flutter/material.dart';
import '../../core/theme/app_typography.dart';

class SunriseSunsetArcWidget extends StatefulWidget {
  final String sunriseStr;
  final String sunsetStr;

  const SunriseSunsetArcWidget({
    super.key,
    required this.sunriseStr,
    required this.sunsetStr,
  });

  @override
  State<SunriseSunsetArcWidget> createState() => _SunriseSunsetArcWidgetState();
}

class _SunriseSunsetArcWidgetState extends State<SunriseSunsetArcWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1500));
    _animation = Tween<double>(begin: 0, end: _calculateProgress())
      .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant SunriseSunsetArcWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.sunriseStr != widget.sunriseStr || oldWidget.sunsetStr != widget.sunsetStr) {
      _animation = Tween<double>(begin: _animation.value, end: _calculateProgress())
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
      _controller.forward(from: 0);
    }
  }

  double _calculateProgress() {
    // Basic approximation assuming am/pm formatting e.g. "06:45 AM"
    try {
      final now = DateTime.now();
      DateTime parseTime(String t) {
        final parts = t.split(' ');
        final timeParts = parts[0].split(':');
        int h = int.parse(timeParts[0]);
        int m = int.parse(timeParts[1]);
        if (parts[1].toLowerCase() == 'pm' && h < 12) h += 12;
        if (parts[1].toLowerCase() == 'am' && h == 12) h = 0;
        return DateTime(now.year, now.month, now.day, h, m);
      }
      
      final sunrise = parseTime(widget.sunriseStr);
      final sunset = parseTime(widget.sunsetStr);
      
      if (now.isBefore(sunrise)) return 0.0;
      if (now.isAfter(sunset)) return 1.0;
      
      final total = sunset.difference(sunrise).inMinutes.toDouble();
      final current = now.difference(sunrise).inMinutes.toDouble();
      return current / total;
    } catch (_) {
      return 0.5; // fallback
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: double.infinity,
          height: 60,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return CustomPaint(
                painter: _SunriseSunsetPainter(_animation.value),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.sunriseStr, style: AppTypography.body(context, size: 12, color: Colors.white60)),
            Text(widget.sunsetStr, style: AppTypography.body(context, size: 12, color: Colors.white60)),
          ],
        ),
      ],
    );
  }
}

class _SunriseSunsetPainter extends CustomPainter {
  final double progress;

  _SunriseSunsetPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height);
    final radius = size.width / 2 - 10;
    
    final bgPaint = Paint()
      ..color = const Color(0x33FFFFFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;
      
    final rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawArc(rect, pi, pi, false, bgPaint);

    if (progress > 0) {
      final gradient = const LinearGradient(
        colors: [Color(0xFFFF8C00), Color(0xFFFFF176)],
      ).createShader(rect);
      
      final activePaint = Paint()
        ..shader = gradient
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4
        ..strokeCap = StrokeCap.round;
        
      canvas.drawArc(rect, pi, progress * pi, false, activePaint);
    }

    final dotAngle = pi + progress * pi;
    final dotX = center.dx + radius * cos(dotAngle);
    final dotY = center.dy + radius * sin(dotAngle);
    
    final sunPaint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;
      
    // BoxShadow effect using drawShadow or blur
    final shadowPaint = Paint()
      ..color = Colors.amber.withOpacity(0.5)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);
      
    canvas.drawCircle(Offset(dotX, dotY), 8, shadowPaint);
    canvas.drawCircle(Offset(dotX, dotY), 6, sunPaint);
  }

  @override
  bool shouldRepaint(covariant _SunriseSunsetPainter oldDelegate) => oldDelegate.progress != progress;
}
