import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/apis/api_error_model.dart';
import '../../../data/models/verify_email_response.dart';

part 'verify_email_state.freezed.dart';

@freezed
class VerifyEmailState<T> with _$VerifyEmailState<T> {
  const factory VerifyEmailState.initial() = _Initial;

  const factory VerifyEmailState.loading() = VerifyEmailLoading;
  const factory VerifyEmailState.success(VerifyEmailResponse data) =
      VerifyEmailSuccess<T>;
  const factory VerifyEmailState.failure(ApiErrorModel apiErrorModel) =
      VerifyEmailFailure<T>;
}
