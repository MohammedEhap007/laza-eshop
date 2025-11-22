// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefreshTokenResponse _$RefreshTokenResponseFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RefreshTokenResponse', json, ($checkedConvert) {
  final val = RefreshTokenResponse(
    accessToken: $checkedConvert('accessToken', (v) => v as String),
    expiresAtUtc: $checkedConvert('expiresAtUtc', (v) => v as String),
    refreshToken: $checkedConvert('refreshToken', (v) => v as String),
  );
  return val;
});
