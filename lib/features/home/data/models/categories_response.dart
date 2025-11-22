import 'package:freezed_annotation/freezed_annotation.dart';

import 'categories_item_model.dart';

part 'categories_response.g.dart';

@JsonSerializable(checked: true)
class CategoriesResponse {
  final List<CategoriesItemModel> categories;

  CategoriesResponse({required this.categories});

  factory CategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesResponseFromJson(json);
}
