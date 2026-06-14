import 'package:flutter/material.dart';

class OfflineBanner extends StatelessWidget {
  final bool isOffline;

  const OfflineBanner({super.key, required this.isOffline});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
      left: 0,
      right: 0,
      bottom: isOffline ? 0 : -48,
      height: 48,
      child: Container(
        color: const Color(0xFFB45309), // amber-dark
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.offline_bolt, color: Colors.white, size: 20),
                SizedBox(width: 8),
                Text(
                  'No internet connection — Showing cached data',
                  style: TextStyle(color: Colors.white, fontSize: 13, fontFamily: 'NunitoSans'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
