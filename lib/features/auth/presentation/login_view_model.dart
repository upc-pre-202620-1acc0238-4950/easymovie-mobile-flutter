import 'package:easy_movie/features/auth/application/login_use_case.dart';
import 'package:easy_movie/features/auth/domain/user.dart';
import 'package:easy_movie/features/auth/presentation/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewModel extends Cubit<LoginState> {
  final LoginUseCase _login;
  new({required this._login}) : super(LoginInitial());

  Future<void> signIn(String email, String password) async {
    emit(LoginLoading());

    try {
      final User user = await _login.execute(email, password);
      emit(LoginSuccess(user: user));
    } catch (e) {
      emit(LoginFailure(message: e.toString()));
    }
  }
}
