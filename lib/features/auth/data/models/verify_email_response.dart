import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_email_response.g.dart';

@JsonSerializable(checked: true)
class VerifyEmailResponse {
  final String message;

  VerifyEmailResponse({required this.message});

  factory VerifyEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyEmailResponseFromJson(json);
}
