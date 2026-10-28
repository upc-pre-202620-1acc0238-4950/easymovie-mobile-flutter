import 'package:easy_movie/features/home/domain/movie.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const new({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.all(Radius.circular(8.0)),
            child: Hero(
              tag: movie.id,
              child: Image.network(
                movie.poster,
                height: 160,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    spacing: 4,
                    children: [
                      Icon(
                        Icons.star_outline,
                        color: Theme.of(context).colorScheme.primary,
                      ),

                      Text('${movie.rating}'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
