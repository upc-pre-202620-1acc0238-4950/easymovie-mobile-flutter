import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:easy_movie/features/home/domain/movie_repository.dart';
import 'package:easy_movie/features/home/infrastructure/remote/movie_api.dart';
import 'package:easy_movie/features/home/infrastructure/remote/movie_dto.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieApi api;

  const new({required this.api});

  @override
  Future<List<Movie>> getMovies() async {
    List<MovieDto> dtos = await api.getMovies();

    return dtos
        .map(
          ((dto) => Movie(
            id: dto.id,
            title: dto.title,
            poster: dto.poster,
            director: dto.director,
            rating: dto.rating,
          )),
        )
        .toList();
  }
}
