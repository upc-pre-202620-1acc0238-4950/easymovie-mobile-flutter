import 'package:easy_movie/core/service_locator.dart';
import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
import 'package:easy_movie/features/home/presentation/movie_card.dart';
import 'package:easy_movie/features/home/presentation/movie_detail_page.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  final HomeViewModel viewModel;
  const new({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        return ListView.builder(
          itemCount: viewModel.favorites.length,
          itemBuilder: (context, index) {
            Movie movie = viewModel.favorites[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(
                      movie: movie,
                      viewModel: getIt<HomeViewModel>(),
                    ),
                  ),
                );
              },
              child: MovieCard(
                movie: movie,
                isFavorite: viewModel.isFavorite(movie.id),
                onToggleFavorite: () {
                  viewModel.toggleFavoriteMovie(movie.id);
                },
              ),
            );
          },
        );
      },
    );
  }
}
