import 'package:json_annotation/json_annotation.dart';

part 'categories_response.g.dart';

@JsonSerializable(checked: true)
class CategoriesResponse {
  final int id;
  final String name;
  @JsonKey(name: 'coverPictureUrl')
  final String imageUrl;

  CategoriesResponse({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
