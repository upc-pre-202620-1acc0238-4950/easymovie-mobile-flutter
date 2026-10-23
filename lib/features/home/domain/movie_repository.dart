import 'package:easy_movie/features/home/domain/movie.dart';

abstract class MovieRepository {

  Future<List<Movie>> getMovies();
}