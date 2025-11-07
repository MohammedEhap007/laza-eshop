import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_request_body.g.dart';

@JsonSerializable()
class VerifyEmailRequestBody {
  final String email;
  @JsonKey(name: 'otp')
  final String verificationCode;

  VerifyEmailRequestBody({required this.email, required this.verificationCode});

  Map<String, dynamic> toJson() => _$VerifyEmailRequestBodyToJson(this);
}
