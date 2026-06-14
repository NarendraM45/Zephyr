import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/theme/app_colors.dart';
import '../../providers/search_provider.dart';
import '../../providers/location_provider.dart';
import '../../providers/favorites_provider.dart';
import 'widgets/recent_search_chip.dart';
import 'widgets/search_result_tile.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  List<String> _recentSearches = [];

  @override
  void initState() {
    super.initState();
    _loadRecentSearches();
  }

  Future<void> _loadRecentSearches() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _recentSearches = prefs.getStringList('recentSearches') ?? [];
    });
  }

  Future<void> _addRecentSearch(String city) async {
    final prefs = await SharedPreferences.getInstance();
    if (_recentSearches.contains(city)) {
      _recentSearches.remove(city);
    }
    _recentSearches.insert(0, city);
    if (_recentSearches.length > 8) _recentSearches.removeLast();
    await prefs.setStringList('recentSearches', _recentSearches);
    setState(() {});
  }

  Future<void> _removeRecentSearch(String city) async {
    final prefs = await SharedPreferences.getInstance();
    _recentSearches.remove(city);
    await prefs.setStringList('recentSearches', _recentSearches);
    setState(() {});
  }

  void _onCitySelected(String query) {
    _addRecentSearch(query);
    ref.read(favoritesNotifierProvider.notifier).toggleFavorite(query);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$query added to favorites!'),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color(0xFF6C63FF),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final searchState = ref.watch(searchNotifierProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDark ? const Color(0xFF1E1E2C) : const Color(0xFFF0F4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: isDark ? Colors.white : Colors.black87),
        title: Hero(
          tag: 'search_bar',
          child: Material(
            color: Colors.transparent,
            child: TextField(
              controller: _controller,
              autofocus: true,
              style: TextStyle(color: isDark ? Colors.white : Colors.black87, fontFamily: 'NunitoSans'),
              onChanged: (val) => ref.read(searchNotifierProvider.notifier).search(val),
              decoration: InputDecoration(
                hintText: 'Search city...',
                hintStyle: TextStyle(color: isDark ? Colors.white54 : Colors.black54),
                filled: true,
                fillColor: AppColors.glassWhite,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: AppColors.glassBorder),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: AppColors.glassBorder),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: isDark ? Colors.white : Colors.black87),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear, color: isDark ? Colors.white70 : Colors.black54),
                  onPressed: () {
                    _controller.clear();
                    ref.read(searchNotifierProvider.notifier).search('');
                  },
                ),
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                tileColor: AppColors.glassWhite,
                leading: const Icon(Icons.my_location, color: Colors.blueAccent),
                title: Text('Use my location', style: TextStyle(color: isDark ? Colors.white : Colors.black87, fontFamily: 'NunitoSans', fontWeight: FontWeight.bold)),
                onTap: () async {
                  final locProvider = ref.read(locationNotifierProvider.notifier);
                  final query = await locProvider.fetchDeviceLocation();
                  if (query != null && mounted) {
                    _onCitySelected(query);
                  }
                },
              ).animate().fadeIn(duration: 400.ms),
            ),
          ),
          if (_controller.text.isEmpty && _recentSearches.isNotEmpty) ...[
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Recent Searches', style: TextStyle(color: Colors.white.withOpacity(0.6), fontFamily: 'SpaceGrotesk', fontSize: 16)),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverGrid(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 3,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return RecentSearchChip(
                      cityName: _recentSearches[index],
                      onTap: () => _onCitySelected(_recentSearches[index]),
                      onLongPress: () => _removeRecentSearch(_recentSearches[index]),
                    );
                  },
                  childCount: _recentSearches.length,
                ),
              ),
            ),
          ],
          if (_controller.text.isNotEmpty)
            searchState.when(
              data: (results) {
                if (results.isEmpty) {
                  return SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Center(child: Text('No results found', style: TextStyle(color: Colors.white.withOpacity(0.6)))),
                    ),
                  );
                }
                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final r = results[index];
                      return SearchResultTile(
                        result: r,
                        onTap: () => _onCitySelected(r.name),
                      ).animate(delay: (index * 50).ms).fadeIn().slideX();
                    },
                    childCount: results.length,
                  ),
                );
              },
              loading: () => const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Center(child: CircularProgressIndicator(color: Colors.white)),
                ),
              ),
              error: (err, _) => SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Center(child: Text('Error searching', style: TextStyle(color: Colors.red.withOpacity(0.8)))),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
