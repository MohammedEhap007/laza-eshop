import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/apis/api_error_model.dart';
import '../../../data/models/sign_up_response.dart';

part 'sign_up_state.freezed.dart';

@freezed
class SignUpState<T> with _$SignUpState<T> {
  const factory SignUpState.initial() = _Initial;

  const factory SignUpState.signUpLoading() = SignUpLoading;
  const factory SignUpState.signUpSuccess(SignUpResponse data) =
      SignUpSuccess<T>;
  const factory SignUpState.signUpFailure(ApiErrorModel apiErrorModel) =
      SignUpFailure<T>;
}
