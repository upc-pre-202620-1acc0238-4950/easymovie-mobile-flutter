import 'dart:convert';
import 'dart:io';

import 'package:easy_movie/features/home/infrastructure/remote/movie_dto.dart';
import 'package:http/http.dart' as http;

class MovieApi {
  final String url =
      'https://movieapp-buckehh3b8d9b0b3.eastus-01.azurewebsites.net/api/movies';

  Future<List<MovieDto>> getMovies() async {
    Uri uri = Uri.parse(url);

    http.Response response = await http.get(uri);

    if (response.statusCode == HttpStatus.ok) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List jsons = json['results'];
      return jsons.map((e) => MovieDto.fromJson(e)).toList();
    }

    throw Exception('Failed to load movies');
  }
}
