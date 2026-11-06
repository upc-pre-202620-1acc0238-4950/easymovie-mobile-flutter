import 'dart:convert';
import 'dart:io';

import 'package:easy_movie/core/storage/token_storage.dart';
import 'package:easy_movie/features/watchlists/infrastructure/remote/watched_movie_dto.dart';
import 'package:http/http.dart' as http;

class WatchlistApi {
  final TokenStorage _storage;

  const new({required this._storage});

  final String _url =
      'https://movieapp-buckehh3b8d9b0b3.eastus-01.azurewebsites.net/api/watchlists';

  Future<List<WatchedMovieDto>> getWatchedMovies() async {
    final Uri uri = Uri.parse(_url);
    final String? token = await _storage.getToken();

    http.Response response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );

    if (response.statusCode == HttpStatus.ok) {
      final Map<String, dynamic> json = jsonDecode(response.body);
      final List jsons = json['results'];

      return jsons.map((e) => WatchedMovieDto.fromJson(e)).toList();
    }
    throw Exception('Failed to load watchlist');
  }
}
