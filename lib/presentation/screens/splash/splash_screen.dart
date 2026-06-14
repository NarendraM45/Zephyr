import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';
import '../../../core/constants/app_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  VideoPlayerController? _videoController;
  bool _isFirstLaunch = true;

  @override
  void initState() {
    super.initState();

    // Fullscreen immersive mode
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
    );

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    _initialize();
  }

  Future<void> _initialize() async {
    await _initVideo();
    await _initServices();

    final prefs = await SharedPreferences.getInstance();
    _isFirstLaunch = prefs.getBool('firstLaunch') ?? true;

    // Listen for video completion
    _videoController!.addListener(() {
      final position = _videoController!.value.position;
      final duration = _videoController!.value.duration;

      if (position >= duration && mounted) {
        _navigateNext();
      }
    });

    _videoController!.play();
  }

  Future<void> _initVideo() async {
    _videoController = VideoPlayerController.asset(
      'assets/animation/An_second_dynamic_D_D_hybr.mp4',
    );

    await _videoController!.initialize();
    _videoController!.setLooping(false);

    if (mounted) {
      setState(() {});
    }
  }

  Future<void> _initServices() async {
    if (!Hive.isBoxOpen(CacheConstants.weatherBoxName)) {
      await Hive.openBox<String>(
        CacheConstants.weatherBoxName,
      );
    }

    if (!Hive.isBoxOpen(CacheConstants.favoritesBox)) {
      await Hive.openBox<String>(
        CacheConstants.favoritesBox,
      );
    }
  }

  void _navigateNext() {
    if (!mounted) return;
    if (_isFirstLaunch) {
      context.go('/onboarding');
    } else {
      context.go('/');
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();

    // Restore UI when leaving splash
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _videoController?.value.isInitialized == true
          ? Stack(
              children: [
                // Fullscreen Video
                SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: _videoController!.value.size.width,
                      height: _videoController!.value.size.height,
                      child: VideoPlayer(_videoController!),
                    ),
                  ),
                ),

                // App Title + Tagline
                Positioned(
                  top: MediaQuery.of(context).padding.top + 5,
                  left: 0,
                  right: 0,
                  child: const Column(
                    children: [
                      Text(
                        'Zephyr',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.5,
                          shadows: [
                            Shadow(
                              blurRadius: 10,
                              color: Colors.black54,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Where the sky tells its story',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.8,
                          shadows: [
                            Shadow(
                              blurRadius: 8,
                              color: Colors.black45,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            )
          : const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
    );
  }
}