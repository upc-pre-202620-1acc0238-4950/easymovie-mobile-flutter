import 'package:easy_movie/features/favorites/application/get_favorites_use_case.dart';
import 'package:easy_movie/features/favorites/application/toggle_favorite_use_case.dart';
import 'package:easy_movie/features/home/application/get_movies_use_case.dart';
import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final GetMoviesUseCase getMovies;
  final GetFavoritesUseCase getFavorites;
  final ToggleFavoriteUseCase toggleFavorite;

  HomeViewModel({
    required this.getMovies,
    required this.getFavorites,
    required this.toggleFavorite,
  }) {
    loadMovies();
  }

  List<Movie> movies = [];
  List<int> favoriteIds = [];
  bool isLoading = false;
  String? errorMessage;

  List<Movie> get favorites =>
      movies.where((movie) => favoriteIds.contains(movie.id)).toList();

  Future<void> loadMovies() async {
    isLoading = true;
    notifyListeners();

    movies = await getMovies.execute();
    favoriteIds = await getFavorites.execute();
    isLoading = false;
    notifyListeners();
  }

  bool isFavorite(int id) {
    return favoriteIds.contains(id);
  }

  Future<void> toggleFavoriteMovie(int id) async {
    await toggleFavorite.execute(id);
    favoriteIds = await getFavorites.execute();
    notifyListeners();
  }
}
