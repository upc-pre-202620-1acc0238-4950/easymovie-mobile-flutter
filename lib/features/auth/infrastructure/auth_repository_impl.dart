import 'package:easy_movie/core/storage/token_storage.dart';
import 'package:easy_movie/features/auth/domain/auth_repository.dart';
import 'package:easy_movie/features/auth/domain/user.dart';
import 'package:easy_movie/features/auth/infrastructure/auth_api.dart';
import 'package:easy_movie/features/auth/infrastructure/login_response_dto.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApi _api;
  final TokenStorage _storage;
  const new({required this._api, required this._storage});

  @override
  Future<User> login(String email, String password) async {
    final LoginResponseDto dto = await _api.login(email, password);
    final User user = User(
      firstName: dto.firstName,
      lastName: dto.lastName,
      email: dto.email,
    );
    await _storage.saveToken(dto.token);
    return user;
  }
}
