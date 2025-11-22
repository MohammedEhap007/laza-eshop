import 'package:json_annotation/json_annotation.dart';

part 'categories_item_model.g.dart';

@JsonSerializable(checked: true)
class CategoriesItemModel {
  final String id;
  final String name;
  @JsonKey(name: 'coverPictureUrl')
  final String imageUrl;

  CategoriesItemModel({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory CategoriesItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesItemModelFromJson(json);
}
