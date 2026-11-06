import 'package:easy_movie/features/watchlists/domain/watched_movie.dart';

abstract class WatchlistRepository {
  Future<List<WatchedMovie>> getWatchedMovies();
  Future<void> markAsWatched(int id);
  Future<void> unmarkAsWatched(int id);
}
