import 'package:freezed_annotation/freezed_annotation.dart';

part 'resend_otp_response.g.dart';

@JsonSerializable(checked: true)
class ResendOtpResponse {
  final String message;

  ResendOtpResponse({required this.message});

  factory ResendOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$ResendOtpResponseFromJson(json);
}
