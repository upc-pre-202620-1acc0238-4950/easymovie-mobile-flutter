class WatchedMovie {
  final int id;
  final String title;
  final String poster;
  final String director;
  final double rating;
  final DateTime addedAt;

  const new({
    required this.id,
    required this.title,
    required this.poster,
    required this.director,
    required this.rating,
    required this.addedAt
  });
}
