import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/apis/api_error_model.dart';
import '../../../data/models/resend_otp_response.dart';

part 'resend_otp_state.freezed.dart';

@freezed
class ResendOtpState<T> with _$ResendOtpState<T> {
  const factory ResendOtpState.initial() = _Initial;
  const factory ResendOtpState.resendOtpLoading() = ResendOtpLoading;
  const factory ResendOtpState.resendOtpSuccess(ResendOtpResponse data) =
      ResendOtpSuccess<T>;
  const factory ResendOtpState.resendOtpFailure(ApiErrorModel apiErrorModel) =
      ResendOtpFailure<T>;
}
