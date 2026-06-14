import 'dart:math';
import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_typography.dart';

class UVIndexMeterWidget extends StatefulWidget {
  final double uvIndex;

  const UVIndexMeterWidget({super.key, required this.uvIndex});

  @override
  State<UVIndexMeterWidget> createState() => _UVIndexMeterWidgetState();
}

class _UVIndexMeterWidgetState extends State<UVIndexMeterWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));
    _animation = Tween<double>(begin: 0, end: widget.uvIndex)
      .animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant UVIndexMeterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.uvIndex != widget.uvIndex) {
      _animation = Tween<double>(begin: _animation.value, end: widget.uvIndex)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
      _controller.forward(from: 0);
    }
  }

  String _getDescriptor(double uv) {
    if (uv <= 2) return 'Low';
    if (uv <= 5) return 'Moderate';
    if (uv <= 7) return 'High';
    if (uv <= 10) return 'Very High';
    return 'Extreme';
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
          width: 80,
          height: 60, // Semicircle + some padding
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  CustomPaint(
                    size: const Size(80, 80),
                    painter: _UVMeterPainter(_animation.value),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Text(
                      _animation.value.toStringAsFixed(1),
                      style: const TextStyle(fontFamily: 'JetBrainsMono', fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        const SizedBox(height: 4),
        Text(
          _getDescriptor(widget.uvIndex),
          style: AppTypography.label(context, size: 12),
        ),
      ],
    );
  }
}

class _UVMeterPainter extends CustomPainter {
  final double uv;

  _UVMeterPainter(this.uv);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height - 10);
    final radius = size.width / 2 - 10;
    
    // 270 degrees arc from 135 to 405 (-225)
    final rect = Rect.fromCircle(center: center, radius: radius);
    
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    const segmentAngle = (270 * pi / 180) / 5;
    double currentAngle = 135 * pi / 180;
    
    for (int i = 0; i < AppColors.uvColors.length; i++) {
      paint.color = AppColors.uvColors[i].withOpacity(0.4);
      canvas.drawArc(rect, currentAngle, segmentAngle, false, paint);
      currentAngle += segmentAngle;
    }
    
    // Active part
    double progress = (uv / 11.0).clamp(0.0, 1.0);
    double activeAngle = progress * (270 * pi / 180);
    
    // Create a sweep gradient
    const gradient = SweepGradient(
      startAngle: 135 * pi / 180,
      endAngle: 405 * pi / 180,
      colors: AppColors.uvColors,
      transform: GradientRotation(-pi / 2),
    );
    
    final activePaint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;
      
    canvas.drawArc(rect, 135 * pi / 180, activeAngle, false, activePaint);

    // Needle
    final needleAngle = 135 * pi / 180 + activeAngle;
    final needleX = center.dx + (radius - 5) * cos(needleAngle);
    final needleY = center.dy + (radius - 5) * sin(needleAngle);
    
    final needlePaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;
      
    canvas.drawLine(center, Offset(needleX, needleY), needlePaint);
    canvas.drawCircle(center, 4, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant _UVMeterPainter oldDelegate) => oldDelegate.uv != uv;
}
