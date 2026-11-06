import 'package:easy_movie/features/watchlists/domain/watched_movie.dart';
import 'package:easy_movie/features/watchlists/domain/watchlist_repository.dart';
import 'package:easy_movie/features/watchlists/infrastructure/remote/watched_movie_dto.dart';
import 'package:easy_movie/features/watchlists/infrastructure/remote/watchlist_api.dart';
import 'package:intl/intl.dart';

class WatchlistRepositoryImpl implements WatchlistRepository {
  final WatchlistApi _api;

  const new({required this._api});

  @override
  Future<List<WatchedMovie>> getWatchedMovies() async {
    final List<WatchedMovieDto> dtos = await _api.getWatchedMovies();
    return dtos.map(
      (e) => WatchedMovie(
        id: e.id,
        title: e.title,
        poster: e.poster,
        director: e.director,
        rating: e.rating,
        addedAt: e.addedAt,
      ),
    ).toList();
  }

  @override
  Future<void> markAsWatched(int id) {
    throw UnimplementedError();
  }

  @override
  Future<void> unmarkAsWatched(int id) {
    throw UnimplementedError();
  }
}
