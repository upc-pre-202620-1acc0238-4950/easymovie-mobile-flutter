import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:flutter/material.dart';

class MovieDetailPage extends StatelessWidget {
  const new({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            expandedHeight: MediaQuery.sizeOf(context).height * 0.25,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: movie.id,
                child: Image.network(
                  movie.poster,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
        body: Text('Detail'),
      ),
    );
  }
}
