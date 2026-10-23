import 'package:easy_movie/features/home/application/get_movies_use_case.dart';
import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  final GetMoviesUseCase useCase;

  HomeViewModel({required this.useCase});

  List<Movie> movies = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> loadMovies() async {

    isLoading = true;
    notifyListeners();

    movies = await useCase.execute();
    isLoading = false;
    notifyListeners();
  }

}
