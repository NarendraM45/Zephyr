import 'dart:math';
import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_typography.dart';

class WindCompassWidget extends StatefulWidget {
  final double windDegree;
  final double windSpeed;
  final String windDir;
  final bool useMph;

  const WindCompassWidget({
    super.key,
    required this.windDegree,
    required this.windSpeed,
    required this.windDir,
    required this.useMph,
  });

  @override
  State<WindCompassWidget> createState() => _WindCompassWidgetState();
}

class _WindCompassWidgetState extends State<WindCompassWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 1200));
    _animation = Tween<double>(begin: 0, end: widget.windDegree * pi / 180)
      .animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
    _controller.forward();
  }

  @override
  void didUpdateWidget(covariant WindCompassWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.windDegree != widget.windDegree) {
      _animation = Tween<double>(begin: _animation.value, end: widget.windDegree * pi / 180)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.elasticOut));
      _controller.forward(from: 0);
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
          width: 80,
          height: 80,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return CustomPaint(
                painter: _WindCompassPainter(_animation.value),
              );
            },
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '${widget.windSpeed.toStringAsFixed(1)} ${widget.useMph ? 'mph' : 'km/h'}',
          style: AppTypography.body(context, size: 14),
        ),
        Text(
          widget.windDir,
          style: AppTypography.label(context, size: 12),
        ),
      ],
    );
  }
}

class _WindCompassPainter extends CustomPainter {
  final double angle;

  _WindCompassPainter(this.angle);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final circlePaint = Paint()
      ..color = AppColors.glassBorder
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    canvas.drawCircle(center, radius, circlePaint);

    final textPainter = TextPainter(textDirection: TextDirection.ltr);
    final labels = ['N', 'E', 'S', 'W'];
    
    for (int i = 0; i < 4; i++) {
      textPainter.text = TextSpan(
        text: labels[i],
        style: const TextStyle(color: AppColors.weatherTextMuted, fontSize: 10, fontWeight: FontWeight.bold, fontFamily: 'NunitoSans'),
      );
      textPainter.layout();
      final textAngle = i * pi / 2 - pi / 2;
      final offset = Offset(
        center.dx + (radius - 10) * cos(textAngle) - textPainter.width / 2,
        center.dy + (radius - 10) * sin(textAngle) - textPainter.height / 2,
      );
      textPainter.paint(canvas, offset);
    }

    final needlePaint = Paint()
      ..color = Colors.redAccent
      ..style = PaintingStyle.fill;

    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(angle);
    
    final path = Path()
      ..moveTo(0, -radius + 15)
      ..lineTo(4, 0)
      ..lineTo(-4, 0)
      ..close();
    
    canvas.drawPath(path, needlePaint);
    
    final tailPath = Path()
      ..moveTo(0, radius - 15)
      ..lineTo(2, 0)
      ..lineTo(-2, 0)
      ..close();
      
    final tailPaint = Paint()..color = Colors.white;
    canvas.drawPath(tailPath, tailPaint);

    canvas.drawCircle(Offset.zero, 3, Paint()..color = Colors.white);
    
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant _WindCompassPainter oldDelegate) => oldDelegate.angle != angle;
}
