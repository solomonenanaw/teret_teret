class Story {
  final String id;
  final String titleAm; // Amharic
  final String titleAa; // Qafar Af
  final String summary;
  final String content;
  final String imageUrl;
  final String category;
  final int readingTime;

  Story({
    required this.id,
    required this.titleAm,
    required this.titleAa,
    required this.summary,
    required this.content,
    required this.imageUrl,
    required this.category,
    required this.readingTime,
  });
}
