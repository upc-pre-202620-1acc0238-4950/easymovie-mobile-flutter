import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:easy_movie/features/home/domain/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  @override
  Future<List<Movie>> getMovies() async {
    await Future.delayed(Duration(seconds: 2));
    return [
      Movie(
        id: 1,
        title: 'Inception',
        poster:
            'https://image.tmdb.org/t/p/w500/oYuLEt3zVCKq57qu2F8dT7NIa6f.jpg',
        director: 'Christopher Nolan',
        rating: 4.8,
      ),
    ];
  }
}
