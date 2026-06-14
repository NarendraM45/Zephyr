import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:geolocator/geolocator.dart';
import 'weather_map_provider.dart';
import '../../widgets/bottom_nav_bar.dart';
import '../../providers/weather_provider.dart';

class WeatherMapScreen extends ConsumerStatefulWidget {
  const WeatherMapScreen({super.key});

  @override
  ConsumerState<WeatherMapScreen> createState() => _WeatherMapScreenState();
}

class _WeatherMapScreenState extends ConsumerState<WeatherMapScreen> {
  final MapController _mapController = MapController();

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mapState = ref.watch(weatherMapNotifierProvider);
    final mapNotifier = ref.read(weatherMapNotifierProvider.notifier);
    final weatherAsync = ref.watch(weatherNotifierProvider);
    
    final initialCenter = weatherAsync.maybeWhen(
      data: (weather) => LatLng(weather.lat, weather.lon),
      orElse: () => const LatLng(39.8283, -98.5795),
    );
    
    int currentIndex = mapState.currentIndex;
    int prevIndex = currentIndex > 0 ? currentIndex - 1 : currentIndex;
    
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          // Layer 1 & 2: Base Map & Overlays
          FlutterMap(
            mapController: _mapController,
            options: MapOptions(
              initialCenter: initialCenter,
              initialZoom: 4.0,
              minZoom: 2.0,
              maxZoom: 18.0,
            ),
            children: [
              // Layer 1: Base Map (CartoDB Dark Matter)
              TileLayer(
                urlTemplate: 'https://a.basemaps.cartocdn.com/dark_all/{z}/{x}/{y}@2x.png',
                userAgentPackageName: 'com.zephyr.app',
              ),
              
              // Layer 2: Weather Overlay (RainViewer)
              if ((mapState.activeLayer == MapLayer.radar || mapState.activeLayer == MapLayer.satellite) && mapState.frames.isNotEmpty && mapState.rainviewerData != null) ...[
                // Layer A: The Buffer (Previous Frame)
                Opacity(
                  opacity: 0.75,
                  child: TileLayer(
                    urlTemplate: '${mapState.rainviewerData!.host}${mapState.frames[prevIndex].path}/256/{z}/{x}/{y}/2/1_1.png',
                    userAgentPackageName: 'com.zephyr.app',
                    backgroundColor: Colors.transparent,
                  ),
                ),
                
                // Layer B: The Active Frame
                if (currentIndex != prevIndex)
                  Opacity(
                    opacity: 0.75,
                    child: TileLayer(
                      urlTemplate: '${mapState.rainviewerData!.host}${mapState.frames[currentIndex].path}/256/{z}/{x}/{y}/2/1_1.png',
                      userAgentPackageName: 'com.zephyr.app',
                      backgroundColor: Colors.transparent,
                    ),
                  ),
              ],
              
              // OpenWeatherMap Static Layers (Wind, Temp, Pressure)
              if (mapState.activeLayer == MapLayer.wind || mapState.activeLayer == MapLayer.temperature || mapState.activeLayer == MapLayer.pressure)
                Opacity(
                  opacity: 0.65,
                  child: TileLayer(
                    urlTemplate: 'https://tile.openweathermap.org/map/${_getOwmLayerName(mapState.activeLayer)}/{z}/{x}/{y}.png?appid=b1b15e88fa797225412429c1c50c122a1',
                    userAgentPackageName: 'com.zephyr.app',
                    backgroundColor: Colors.transparent,
                  ),
                ),
            ],
          ),
          
          // Custom App Bar
          Positioned(
            top: MediaQuery.of(context).padding.top + 8,
            left: 16,
            right: 16,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildGlassButton(
                  icon: Icons.menu_rounded,
                  onTap: () {
                    bottomNavScaffoldKey.currentState?.openDrawer();
                  },
                ),
                Text(
                  _layerTitle(mapState.activeLayer),
                  style: const TextStyle(
                    fontFamily: 'SpaceGrotesk',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [Shadow(color: Colors.black54, blurRadius: 8)],
                  ),
                ),
                _buildGlassButton(
                  icon: Icons.my_location_rounded,
                  onTap: () async {
                    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
                    if (!serviceEnabled) return;
                    LocationPermission permission = await Geolocator.checkPermission();
                    if (permission == LocationPermission.denied) {
                      permission = await Geolocator.requestPermission();
                      if (permission == LocationPermission.denied) return;
                    }
                    if (permission == LocationPermission.deniedForever) return;
                    
                    final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                    _mapController.move(LatLng(position.latitude, position.longitude), 6.0);
                  },
                ),
              ],
            ),
          ),
          
          // Layer 3: Overlay Sidebar Control
          Positioned(
            left: 16,
            top: MediaQuery.of(context).size.height * 0.25,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: 56,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white.withOpacity(0.1)),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _SidebarButton(
                        icon: Icons.radar_rounded,
                        isActive: mapState.activeLayer == MapLayer.radar,
                        onTap: () => mapNotifier.setLayer(MapLayer.radar),
                      ),
                      const SizedBox(height: 16),
                      _SidebarButton(
                        icon: Icons.satellite_alt_rounded,
                        isActive: mapState.activeLayer == MapLayer.satellite,
                        onTap: () => mapNotifier.setLayer(MapLayer.satellite),
                      ),
                      const SizedBox(height: 16),
                      _SidebarButton(
                        icon: Icons.air_rounded,
                        isActive: mapState.activeLayer == MapLayer.wind,
                        onTap: () => mapNotifier.setLayer(MapLayer.wind),
                      ),
                      const SizedBox(height: 16),
                      _SidebarButton(
                        icon: Icons.thermostat_rounded,
                        isActive: mapState.activeLayer == MapLayer.temperature,
                        onTap: () => mapNotifier.setLayer(MapLayer.temperature),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          // Layer 4: Timeline Controller Bottom Bar
          if (mapState.frames.isNotEmpty)
            Positioned(
              left: 24,
              right: 24,
              bottom: 120, // Adjusted to sit above the global bottom nav bar
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                  child: Container(
                    height: 60,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white.withOpacity(0.15)),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            mapState.isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
                            color: Colors.white,
                          ),
                          onPressed: () => mapNotifier.togglePlayback(),
                        ),
                        Expanded(
                          child: SliderTheme(
                            data: SliderThemeData(
                              trackHeight: 4,
                              activeTrackColor: const Color(0xFF00C9FF),
                              inactiveTrackColor: Colors.white24,
                              thumbColor: Colors.white,
                              overlayColor: const Color(0xFF00C9FF).withOpacity(0.2),
                              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6),
                            ),
                            child: Slider(
                              value: mapState.currentIndex.toDouble(),
                              min: 0,
                              max: (mapState.frames.length - 1).toDouble(),
                              divisions: mapState.frames.isEmpty ? 1 : mapState.frames.length,
                              onChanged: (val) {
                                if (mapState.isPlaying) {
                                  mapNotifier.togglePlayback();
                                }
                                mapNotifier.setIndex(val.toInt());
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 16.0, left: 8.0),
                          child: Text(
                            _formatTime(mapState.frames[mapState.currentIndex].time),
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: 'NunitoSans',
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  String _layerTitle(MapLayer layer) {
    switch (layer) {
      case MapLayer.radar: return 'Live Radar';
      case MapLayer.satellite: return 'Satellite';
      case MapLayer.wind: return 'Wind';
      case MapLayer.temperature: return 'Temperature';
      case MapLayer.pressure: return 'Pressure';
    }
  }

  String _formatTime(int unixTime) {
    final date = DateTime.fromMillisecondsSinceEpoch(unixTime * 1000);
    return DateFormat('h:mm a').format(date);
  }

  String _getOwmLayerName(MapLayer layer) {
    switch (layer) {
      case MapLayer.wind: return 'wind_new';
      case MapLayer.temperature: return 'temp_new';
      case MapLayer.pressure: return 'pressure_new';
      default: return 'temp_new';
    }
  }

  Widget _buildGlassButton({required IconData icon, required VoidCallback onTap}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: Icon(icon, color: Colors.white, size: 24),
          ),
        ),
      ),
    );
  }
}

class _SidebarButton extends StatelessWidget {
  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;

  const _SidebarButton({
    required this.icon,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? const Color(0xFF00C9FF).withOpacity(0.2) : Colors.transparent,
        ),
        child: Icon(
          icon,
          color: isActive ? const Color(0xFF00C9FF) : Colors.white70,
          size: 24,
        ),
      ),
    );
  }
}
