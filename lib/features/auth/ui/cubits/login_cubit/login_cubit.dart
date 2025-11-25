import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/apis/api_result.dart';
import '../../../data/models/login_request_body.dart';
import '../../../data/models/login_response.dart';
import '../../../data/repos/login_repo.dart';
import 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void login({required String email, required String password}) async {
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
