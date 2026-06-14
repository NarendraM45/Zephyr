import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  VideoPlayerController? _videoController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _initVideo();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ));
  }

  Future<void> _initVideo() async {
    _videoController = VideoPlayerController.asset(
      'assets/animation/before_home_onboarding.mp4',
    );
    await _videoController!.initialize();
    _videoController!.setLooping(false);
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _videoController?.dispose();
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
    );
  }

  Future<void> _requestLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      if (mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: const Color(0xFF1A1A2E),
            title: const Text('Turn On GPS', style: TextStyle(color: Colors.white)),
            content: const Text(
              "Granting permission allows Zephyr to access your location, but your phone's GPS is currently turned off. Please turn on Location Services to continue.",
              style: TextStyle(color: Colors.white70),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancel', style: TextStyle(color: Colors.white54)),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.pop(context);
                  Geolocator.openLocationSettings();
                },
                style: FilledButton.styleFrom(backgroundColor: const Color(0xFF6C63FF)),
                child: const Text('Open Settings'),
              ),
            ],
          ),
        );
      }
      return;
    }
    
    await Geolocator.requestPermission();
    _nextPage();
  }

  Future<void> _finish() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('firstLaunch', false);
    if (mounted) context.go('/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Dynamic gradient background
          AnimatedContainer(
            duration: const Duration(milliseconds: 600),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: _getPageGradient(_currentPage),
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // Page content
          PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (i) {
              setState(() => _currentPage = i);
              if (i == 3) {
                _videoController?.play();
                Future.delayed(const Duration(milliseconds: 3800), _finish);
              } else {
                _videoController?.pause();
              }
            },
            children: [
              _buildHyperlocalPage(),
              _buildLocationPage(),
              _buildFeaturesPage(),
              _buildFinalVideoPage(),
            ],
          ),

          // Page indicators
          if (_currentPage < 3)
            Positioned(
              bottom: 48,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    width: _currentPage == index ? 28 : 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Colors.white
                          : Colors.white38,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  );
                }),
              ),
            ),
        ],
      ),
    );
  }

  List<Color> _getPageGradient(int page) => switch (page) {
    0 => [const Color(0xFF0F0C29), const Color(0xFF302B63), const Color(0xFF24243E)],
    1 => [const Color(0xFF0984E3), const Color(0xFF00B4DB), const Color(0xFF0052D4)],
    2 => [const Color(0xFF1A1A2E), const Color(0xFF16213E), const Color(0xFF0F3460)],
    _ => [Colors.black, Colors.black, Colors.black],
  };

  Widget _buildFinalVideoPage() {
    return Stack(
      children: [
        // Fullscreen Video
        if (_videoController?.value.isInitialized == true)
          Positioned.fill(
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _videoController!.value.size.width,
                height: _videoController!.value.size.height,
                child: VideoPlayer(_videoController!),
              ),
            ),
          )
        else
          const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ),

        // Loading Text Overlay
        Positioned(
          bottom: 90,
          left: 0,
          right: 0,
          child: Column(
            children: [
              const Text(
                'Your weather is loading',
                style: TextStyle(
                  fontFamily: 'SpaceGrotesk',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 18,
                      color: Colors.black54,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
              )
                  .animate(onPlay: (controller) => controller.repeat())
                  .fadeIn(duration: 700.ms)
                  .then(delay: 200.ms)
                  .fadeOut(duration: 700.ms),

              const SizedBox(height: 16),

              SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(
                  strokeWidth: 2.5,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildHyperlocalPage() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 48, 32, 80),
        child: Column(
          children: [
            const SizedBox(height: 24),
            const Icon(Icons.my_location_rounded, color: Colors.white, size: 72)
                .animate().scale(begin: const Offset(0.3, 0.3), duration: 600.ms,
                    curve: Curves.elasticOut),
            const SizedBox(height: 32),
            const Text('Hyperlocal\nPrecision',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk', fontSize: 36,
                fontWeight: FontWeight.w700, color: Colors.white, height: 1.2,
              ),
              textAlign: TextAlign.center,
            ).animate().fadeIn(duration: 600.ms, delay: 200.ms),
            const SizedBox(height: 20),
            Text(
              'Zephyr fetches weather for your exact GPS coordinates — not just your city. '
              'Rain two streets over? We\'ll know.',
              style: TextStyle(
                fontFamily: 'NunitoSans', fontSize: 17,
                color: Colors.white.withOpacity(0.80), height: 1.6,
              ),
              textAlign: TextAlign.center,
            ).animate().fadeIn(delay: 400.ms),
            const Spacer(),
            const _FeatureChip(icon: Icons.gps_fixed_rounded, label: 'Exact GPS'),
            const SizedBox(height: 12),
            const _FeatureChip(icon: Icons.update_rounded, label: 'Updated Every 30 Min'),
            const SizedBox(height: 12),
            const _FeatureChip(icon: Icons.offline_bolt_rounded, label: 'Works Offline (Cached)'),
            const Spacer(),
            _PrimaryButton(label: 'Next', onTap: _nextPage)
                .animate().fadeIn(delay: 600.ms),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationPage() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 48, 32, 80),
        child: Column(
          children: [
            const SizedBox(height: 24),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.white.withOpacity(0.25),
                    Colors.white.withOpacity(0.05),
                  ],
                ),
                border: Border.all(color: Colors.white.withOpacity(0.3), width: 2),
              ),
              child: const Icon(Icons.location_on_rounded, color: Colors.white, size: 56),
            )
                .animate(onPlay: (c) => c.repeat())
                .shimmer(duration: 2000.ms, color: Colors.white.withOpacity(0.3))
                .scale(begin: const Offset(0.8, 0.8), duration: 600.ms,
                    curve: Curves.elasticOut),
            const SizedBox(height: 36),
            const Text('Allow Location\nAccess',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk', fontSize: 34,
                fontWeight: FontWeight.w700, color: Colors.white, height: 1.2,
              ),
              textAlign: TextAlign.center,
            ).animate().fadeIn(delay: 200.ms),
            const SizedBox(height: 20),
            Text(
              'We only use your location to fetch weather data. '
              'Your coordinates are never stored or shared.',
              style: TextStyle(
                fontFamily: 'NunitoSans', fontSize: 17,
                color: Colors.white.withOpacity(0.80), height: 1.6,
              ),
              textAlign: TextAlign.center,
            ).animate().fadeIn(delay: 350.ms),
            const Spacer(),
            _PrimaryButton(
              label: 'Allow Location',
              onTap: _requestLocation,
            ).animate().fadeIn(delay: 500.ms),
            const SizedBox(height: 16),
            TextButton(
              onPressed: _nextPage,
              child: Text(
                'Maybe later — search manually',
                style: TextStyle(
                  fontFamily: 'NunitoSans',
                  color: Colors.white.withOpacity(0.65),
                  fontSize: 15,
                ),
              ),
            ).animate().fadeIn(delay: 650.ms),
          ],
        ),
      ),
    );
  }

  Widget _buildFeaturesPage() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 48, 32, 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Everything\nYou Need',
              style: TextStyle(
                fontFamily: 'SpaceGrotesk', fontSize: 36,
                fontWeight: FontWeight.w700, color: Colors.white, height: 1.2,
              ),
            ).animate().fadeIn(duration: 500.ms),
            const SizedBox(height: 32),
            const _OnboardingFeatureCard(
              icon: Icons.calendar_month_rounded,
              title: '7-Day Forecast',
              subtitle: 'Hourly breakdown with precipitation probabilities',
              delay: 100,
            ),
            const SizedBox(height: 12),
            const _OnboardingFeatureCard(
              icon: Icons.air_rounded,
              title: 'Air Quality Index',
              subtitle: 'Real-time AQI with health recommendations',
              delay: 200,
            ),
            const SizedBox(height: 12),
            const _OnboardingFeatureCard(
              icon: Icons.warning_amber_rounded,
              title: 'Weather Alerts',
              subtitle: 'Severe weather warnings before they hit',
              delay: 300,
            ),
            const SizedBox(height: 12),
            const _OnboardingFeatureCard(
              icon: Icons.favorite_rounded,
              title: 'Saved Locations',
              subtitle: 'Monitor multiple cities at a glance',
              delay: 400,
            ),
            const Spacer(),
            _PrimaryButton(
              label: 'Get Started',
              onTap: _nextPage,
            ).animate().fadeIn(delay: 600.ms).slideY(begin: 0.4),
          ],
        ),
      ),
    );
  }
}

// ─── Shared Widgets ──────────────────────────────────────────────────────────

class _PrimaryButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const _PrimaryButton({required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black87,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ),
        child: Text(label,
          style: const TextStyle(
            fontFamily: 'NunitoSans',
            fontSize: 17,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.3,
          )),
      ),
    );
  }
}

class _FeatureChip extends StatelessWidget {
  final IconData icon;
  final String label;

  const _FeatureChip({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.10),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white.withOpacity(0.18)),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 22),
          const SizedBox(width: 14),
          Text(label,
            style: const TextStyle(
              fontFamily: 'NunitoSans',
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            )),
        ],
      ),
    );
  }
}

class _OnboardingFeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final int delay;

  const _OnboardingFeatureCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.delay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.10),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Colors.white.withOpacity(0.15)),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white, size: 22),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: const TextStyle(
                    fontFamily: 'NunitoSans',
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  )),
                const SizedBox(height: 2),
                Text(subtitle,
                  style: TextStyle(
                    fontFamily: 'NunitoSans',
                    color: Colors.white.withOpacity(0.65),
                    fontSize: 13,
                  )),
              ],
            ),
          ),
        ],
      ),
    )
        .animate(delay: Duration(milliseconds: delay))
        .fadeIn(duration: 400.ms)
        .slideX(begin: 0.1, curve: Curves.easeOut);
  }
}
