import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:easy_movie/features/home/domain/movie_repository.dart';

class GetMoviesUseCase {
  final MovieRepository repository;

  const GetMoviesUseCase({required this.repository});

  Future<List<Movie>> execute() async {
    return await repository.getMovies();
  }
}
