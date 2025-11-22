import 'package:json_annotation/json_annotation.dart';

import 'products_item_model.dart';

part 'products_response.g.dart';

@JsonSerializable(checked: true)
class ProductsResponse {
  final List<ProductsItemModel> products;
  @JsonKey(name: 'page')
  final int pageNumber;
  final int pageSize;
  final int totalCount;
  @JsonKey(name: 'hasNextPage')
  final bool hasNext;
  @JsonKey(name: 'hasPreviousPage')
  final bool hasPrevious;

  ProductsResponse({
    required this.products,
    required this.pageNumber,
    required this.pageSize,
    required this.totalCount,
    required this.hasNext,
    required this.hasPrevious,
  });

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);
}
