import "package:teret_teret/models/story.dart";
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/story.dart';
import '../services/favorites_service.dart';

class StoryDetailScreen extends StatefulWidget {
  final Story story;
  const StoryDetailScreen({super.key, required this.story});

  @override
  State<StoryDetailScreen> createState() => _StoryDetailScreenState();
}

class _StoryDetailScreenState extends State<StoryDetailScreen> {
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavorite();
  }

  Future<void> _loadFavorite() async {
    _isFavorite = await FavoritesService.isFavorite(widget.story.id);
    setState(() {});
  }

  Future<void> _toggleFavorite() async {
    await FavoritesService.toggleFavorite(widget.story.id);
    setState(() => _isFavorite = !_isFavorite);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.story.titleAm),
        actions: [
          IconButton(
            icon: Icon(_isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: _toggleFavorite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: CachedNetworkImage(imageUrl: widget.story.imageUrl),
            ),
            const SizedBox(height: 20),
            Text(widget.story.titleAm, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('${widget.story.readingTime} ደቂቃ • ${widget.story.category}'),
            const Divider(height: 40),
            Text(
              widget.story.content,
              style: const TextStyle(fontSize: 18, height: 1.8),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
