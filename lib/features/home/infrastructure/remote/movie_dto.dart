class MovieDto {
  final int id;
  final String title;
  final String poster;
  final String director;
  final double rating;

  const new({
    required this.id,
    required this.title,
    required this.poster,
    required this.director,
    required this.rating,
  });

  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      id: json['id'] as int,
      title: json['title'] as String,
      poster: json['poster'] as String,
      director: json['director'] as String,
      rating: (json['rating'] as num).toDouble(),
    );
  }
}
