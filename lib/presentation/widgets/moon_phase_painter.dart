import 'package:flutter/material.dart';

class MoonPhasePainter extends StatelessWidget {
  final int moonIllumination;
  final String moonPhaseName;

  const MoonPhasePainter({
    super.key,
    required this.moonIllumination,
    required this.moonPhaseName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CustomPaint(
            painter: _MoonPainter(moonIllumination, moonPhaseName),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          moonPhaseName,
          style: const TextStyle(fontSize: 12, color: Colors.white, fontFamily: 'NunitoSans', fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        Text(
          '$moonIllumination%',
          style: const TextStyle(fontSize: 10, color: Colors.white70, fontFamily: 'NunitoSans'),
        ),
      ],
    );
  }
}

class _MoonPainter extends CustomPainter {
  final int illumination;
  final String phase;

  _MoonPainter(this.illumination, this.phase);

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Draw full moon as base
    final moonPaint = Paint()
      ..color = const Color(0xFFE2E8F0)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(center, radius, moonPaint);

    // Draw shadow
    final shadowPaint = Paint()
      ..color = const Color(0xFF1E293B).withOpacity(0.85)
      ..style = PaintingStyle.fill;

    // Approximate phase using simple geometric shapes
    // This is a simplification. A perfect moon phase needs complex paths.
    double illum = illumination / 100.0;
    
    if (phase.contains('New')) {
      canvas.drawCircle(center, radius, shadowPaint);
      canvas.drawCircle(center, radius, Paint()..color=Colors.white12..style=PaintingStyle.stroke..strokeWidth=1);
    } else if (phase.contains('Full')) {
      // Do nothing, base is full
    } else {
      // Draw shadow over part of the moon
      canvas.save();
      canvas.clipPath(Path()..addOval(Rect.fromCircle(center: center, radius: radius)));
      
      bool isWaxing = phase.contains('Waxing') || phase.contains('First Quarter');
      
      if (isWaxing) {
        if (illum < 0.5) {
          // Waxing crescent
          canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), shadowPaint);
          canvas.drawOval(Rect.fromCenter(center: center.translate(radius * (1 - illum * 2), 0), width: radius * 2 * illum * 2, height: radius * 2), moonPaint);
        } else {
          // Waxing gibbous
          canvas.drawRect(Rect.fromLTRB(0, 0, size.width/2, size.height), shadowPaint);
          canvas.drawOval(Rect.fromCenter(center: center, width: radius * 2 * ((illum - 0.5) * 2), height: radius * 2), moonPaint);
        }
      } else {
        if (illum > 0.5) {
          // Waning gibbous
          canvas.drawRect(Rect.fromLTRB(size.width/2, 0, size.width, size.height), shadowPaint);
          canvas.drawOval(Rect.fromCenter(center: center, width: radius * 2 * ((illum - 0.5) * 2), height: radius * 2), moonPaint);
        } else {
          // Waning crescent
          canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), shadowPaint);
          canvas.drawOval(Rect.fromCenter(center: center.translate(-radius * (1 - illum * 2), 0), width: radius * 2 * illum * 2, height: radius * 2), moonPaint);
        }
      }
      
      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(covariant _MoonPainter oldDelegate) => 
    oldDelegate.illumination != illumination || oldDelegate.phase != phase;
}
