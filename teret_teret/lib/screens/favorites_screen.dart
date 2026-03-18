import 'package:flutter/material.dart';
import '../data/stories.dart';
import '../services/favorites_service.dart';
import 'story_detail_screen.dart';
import 'package:teret_teret/models/story.dart';

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});
  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  List<Story> _favorites = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    final ids = await FavoritesService.getFavoriteIds();
    setState(() {
      _favorites = allStories.where((s) => ids.contains(s.id)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return _favorites.isEmpty
        ? const Center(child: Text('እስካሁን ምንም ተረት አልወደዱም', style: TextStyle(fontSize: 18)))
        : ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: _favorites.length,
            itemBuilder: (context, index) {
              final story = _favorites[index];
              return ListTile(
                leading: const Icon(Icons.favorite, color: Colors.red),
                title: Text(story.titleAm),
                subtitle: Text(story.summary),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => StoryDetailScreen(story: story)),
                ),
              );
            },
          );
  }
}
