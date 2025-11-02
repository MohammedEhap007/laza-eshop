import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/apis/api_error_model.dart';
import '../../../data/models/login_response.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess(LoginResponse data) = LoginSuccess<T>;
  const factory LoginState.loginFailure(ApiErrorModel apiErrorModel) =
      LoginFailure<T>;
}
