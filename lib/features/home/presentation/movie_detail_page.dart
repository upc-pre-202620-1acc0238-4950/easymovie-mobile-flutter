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
              centerTitle: false,
              title: Text(
                movie.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Release Date: ',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Rating: ${movie.rating}',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Description:',
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        )
      ),
    );
  }
}
