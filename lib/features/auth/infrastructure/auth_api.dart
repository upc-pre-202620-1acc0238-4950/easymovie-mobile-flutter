import 'dart:convert';
import 'dart:io';

import 'package:easy_movie/features/auth/infrastructure/login_request_dto.dart';
import 'package:easy_movie/features/auth/infrastructure/login_response_dto.dart';
import 'package:http/http.dart' as http;

class AuthApi {
  final String url =
      'https://movieapp-buckehh3b8d9b0b3.eastus-01.azurewebsites.net/api/users/login';

  Future<LoginResponseDto> login(String email, String password) async {
    final Uri uri = Uri.parse(url);

    final http.Response response = await http.post(
      uri,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(
        LoginRequestDto(email: email, password: password).toJson(),
      ),
    );

    if (response.statusCode == HttpStatus.ok) {
      final Map<String,dynamic> json = jsonDecode(response.body);
      return LoginResponseDto.fromJson(json);
    }

    throw Exception('Failed authentication');
  }
}
