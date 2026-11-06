import 'package:easy_movie/features/watchlists/domain/watched_movie.dart';
import 'package:easy_movie/features/watchlists/domain/watchlist_repository.dart';

class GetWatchedMoviesUseCase {
  final WatchlistRepository _repository;

  const new({required this._repository});

  Future<List<WatchedMovie>> execute() {
    return _repository.getWatchedMovies();
  }
}
