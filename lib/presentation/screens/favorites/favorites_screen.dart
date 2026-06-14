import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../../providers/favorites_provider.dart';
import '../../providers/weather_provider.dart';
import '../../widgets/bottom_nav_bar.dart';
import 'widgets/favorite_city_card.dart';

class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritesState = ref.watch(favoritesNotifierProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF1E1E2C) : const Color(0xFFF0F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Saved Locations', style: TextStyle(fontFamily: 'SpaceGrotesk', fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.onSurface)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu_rounded, color: Theme.of(context).colorScheme.onSurface),
          onPressed: () => bottomNavScaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add, color: Theme.of(context).colorScheme.onSurface),
            onPressed: () => context.push('/search'),
          ),
        ],
      ),
      body: favoritesState.when(
        data: (weathers) {
          if (weathers.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.favorite_border, size: 64, color: Colors.grey),
                  const SizedBox(height: 16),
                  Text('No saved locations', style: TextStyle(color: Theme.of(context).colorScheme.onSurface.withOpacity(0.60), fontSize: 16)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.push('/search'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      foregroundColor: Colors.white,
                    ),
                    child: const Text('Add Location'),
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: () => ref.read(favoritesNotifierProvider.notifier).refresh(),
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
              padding: const EdgeInsets.all(16),
              itemCount: weathers.length,
              itemBuilder: (context, index) {
                final weather = weathers[index];
                return Dismissible(
                  key: Key(weather.cityName),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(Icons.delete, color: Theme.of(context).colorScheme.onSurface),
                  ),
                  onDismissed: (_) {
                    ref.read(favoritesNotifierProvider.notifier).toggleFavorite(weather.cityName);
                  },
                  child: FavoriteCityCard(
                    weather: weather,
                    onTap: () {
                      ref.read(weatherNotifierProvider.notifier).setCity(weather.cityName);
                      context.go('/');
                    },
                    onRemove: () {
                      ref.read(favoritesNotifierProvider.notifier).toggleFavorite(weather.cityName);
                    },
                  ).animate(delay: (index * 100).ms).fadeIn().slideX(begin: 0.1),
                );
              },
            ),
          );
        },
        loading: () => Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onSurface)),
        error: (err, _) => Center(child: Text('Error: $err', style: const TextStyle(color: Colors.red))),
      ),
    );
  }
}
