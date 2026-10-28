import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
import 'package:easy_movie/features/home/presentation/movie_card.dart';
import 'package:easy_movie/features/home/presentation/movie_detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final HomeViewModel viewModel;
  const new({super.key, required this.viewModel});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.loadMovies();
  }

  @override
  Widget build(BuildContext context) {
    HomeViewModel viewModel = widget.viewModel;
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, child) {
        if (viewModel.isLoading) {
          return Center(child: CircularProgressIndicator());
        }

        return ListView.builder(
          itemCount: viewModel.movies.length,
          itemBuilder: (context, index) {
            Movie movie = viewModel.movies[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MovieDetailPage(movie: movie),
                  ),
                );
              },
              child: MovieCard(movie: movie),
            );
          },
        );
      },
    );
  }
}
