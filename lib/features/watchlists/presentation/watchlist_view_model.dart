import 'package:easy_movie/features/watchlists/application/get_watched_movies_use_case.dart';
import 'package:easy_movie/features/watchlists/domain/watched_movie.dart';
import 'package:flutter/foundation.dart';

class WatchlistViewModel extends ChangeNotifier {
  final GetWatchedMoviesUseCase _getWatchedMovies;

  new({required this._getWatchedMovies}) {
    getWatchedMovies();
  }

  List<WatchedMovie> movies = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> getWatchedMovies() async {
    isLoading = true;
    notifyListeners();

    try {
      movies = await _getWatchedMovies.execute();
      isLoading = false;
    } catch (e) {
      errorMessage = e.toString();
      isLoading = false;
    }
    notifyListeners();
  }
}
