import 'package:flutter/material.dart';
import '../../../../domain/entities/weather_alert.dart';

class AlertsBanner extends StatefulWidget {
  final List<WeatherAlert> alerts;

  const AlertsBanner({super.key, required this.alerts});

  @override
  State<AlertsBanner> createState() => _AlertsBannerState();
}

class _AlertsBannerState extends State<AlertsBanner> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    if (widget.alerts.isEmpty) return const SizedBox.shrink();

    final alert = widget.alerts.first;
    final isSevere = alert.severity.toLowerCase() == 'severe' || alert.severity.toLowerCase() == 'extreme';
    final color = isSevere ? Colors.red.shade800 : Colors.orange.shade800;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.9),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => setState(() => _expanded = !_expanded),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.warning_rounded, color: Colors.white),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        alert.headline,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontFamily: 'NunitoSans'),
                        maxLines: _expanded ? null : 1,
                        overflow: _expanded ? TextOverflow.visible : TextOverflow.ellipsis,
                      ),
                    ),
                    Icon(_expanded ? Icons.expand_less : Icons.expand_more, color: Colors.white),
                  ],
                ),
                if (_expanded) ...[
                  const SizedBox(height: 12),
                  Text(
                    alert.desc,
                    style: const TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'NunitoSans'),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Effective: ${alert.effective}\nExpires: ${alert.expires}',
                    style: const TextStyle(color: Colors.white70, fontSize: 12, fontFamily: 'NunitoSans'),
                  ),
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}
