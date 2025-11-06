import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/apis/api_error_model.dart';
import '../../../data/models/verify_email_response.dart';

part 'verify_email_state.freezed.dart';

@freezed
class VerifyEmailState<T> with _$VerifyEmailState<T> {
  const factory VerifyEmailState.initial() = _Initial;

  const factory VerifyEmailState.verifyEmailLoading() = VerifyEmailLoading;
  const factory VerifyEmailState.verifyEmailSuccess(VerifyEmailResponse data) =
      VerifyEmailSuccess<T>;
  const factory VerifyEmailState.verifyEmailFailure(
    ApiErrorModel apiErrorModel,
  ) = VerifyEmailFailure<T>;
}
