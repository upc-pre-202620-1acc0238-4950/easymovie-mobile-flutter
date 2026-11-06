class WatchedMovieDto {
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
    required this.addedAt,
  });

  factory WatchedMovieDto.fromJson(Map<String, dynamic> json) {
    return WatchedMovieDto(
      id: json['movieId'],
      title: json['title'],
      poster: json['poster'],
      director: json['director'],
      rating: json['rating'],
      addedAt: DateTime.parse(json['addedAt']),
    );
  }
}
