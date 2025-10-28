import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_eshop/core/apis/api_result.dart';
import 'package:laza_eshop/features/auth/data/models/login_response.dart';

import '../../../data/models/login_request_body.dart';
import '../../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void login(String email, String password) async {
    emit(const LoginState.loginLoading());
    final response = await _loginRepo.login(
      LoginRequestBody(
        email: email,
        password: password,
      ),
    );
    response.when(
      success: (LoginResponse loginResponse) {
        emit(LoginState.loginSuccess(loginResponse));
      },
      failure: (error) {
        emit(LoginState.loginFailure(error));
      },
    );
  }
}
