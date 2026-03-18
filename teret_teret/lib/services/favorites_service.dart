import 'package:shared_preferences/shared_preferences.dart';
import '../models/story.dart';

class FavoritesService {
  static const String _key = 'favorites';

  static Future<List<String>> getFavoriteIds() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key) ?? [];
  }

  static Future<void> toggleFavorite(String id) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favorites = prefs.getStringList(_key) ?? [];
    if (favorites.contains(id)) {
      favorites.remove(id);
    } else {
      favorites.add(id);
    }
    await prefs.setStringList(_key, favorites);
  }

  static Future<bool> isFavorite(String id) async {
    final favorites = await getFavoriteIds();
    return favorites.contains(id);
  }
}
