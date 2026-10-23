import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:easy_movie/features/home/presentation/home_view_model.dart';
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

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: viewModel.movies.length,
          itemBuilder: (context, index) {
            Movie movie = viewModel.movies[index];
            return Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.all(
                      Radius.circular(8.0),
                    ),
                    child: Image.network(
                      movie.poster,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Text(movie.title),
              ],
            );
          },
        );
      },
    );
  }
}
