import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error_model.g.dart';

@JsonSerializable(checked: true)
class ApiErrorModel {
  final int? statusCode;
  final String? message;
  final List<String> errors;
  @JsonKey(includeFromJson: false)
  final IconData? icon;

  ApiErrorModel({
    required this.statusCode,
    required this.message,
    required this.errors,
    this.icon,
  });
  
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
}
