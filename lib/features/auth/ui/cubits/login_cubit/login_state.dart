import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/apis/api_error_model.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState<T> with _$LoginState<T> {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loginLoading() = _LoginLoading;
  const factory LoginState.loginSuccess(T data) = _LoginSuccess<T>;
  const factory LoginState.loginFailure(ApiErrorModel apiErrorModel) =
      _LoginFailure<T>;
}
