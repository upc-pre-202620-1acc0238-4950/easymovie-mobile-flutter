import 'package:easy_movie/features/watchlists/domain/watched_movie.dart';
import 'package:easy_movie/features/watchlists/presentation/watchlist_view_model.dart';
import 'package:flutter/material.dart';

class WatchlistPage extends StatelessWidget {
  final WatchlistViewModel _viewModel;
  const new({super.key, required this._viewModel});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, child) {
        if (_viewModel.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        if (_viewModel.movies.isNotEmpty) {
          return ListView.builder(
            itemCount: _viewModel.movies.length,
            itemBuilder: (context, index) {
              final WatchedMovie movie = _viewModel.movies[index];
              return ListTile(
                leading: Image.network(movie.poster),
                title: Text(movie.title),
              );
            },
          );
        }

        if (_viewModel.errorMessage != null) {
          return Center(child: Text(_viewModel.errorMessage!));
        }

        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Icon(Icons.movie_outlined), Text("Watchlist empty")],
          ),
        );
      },
    );
  }
}
