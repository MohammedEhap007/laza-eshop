import 'package:json_annotation/json_annotation.dart';

part 'products_item_model.g.dart';

@JsonSerializable(checked: true)
class ProductsItemModel {
  final String id;
  @JsonKey(name: 'productCode')
  final String code;
  final String name;
  final String description;
  final String arabicName;
  final String arabicDescription;
  @JsonKey(name: 'coverPictureUrl')
  final String coverPicture;
  final List<String>? productPictures;
  final double price;
  @JsonKey(name: 'stock')
  final int quantityInStock;
  final double weight;
  final String color;
  final int rating;
  final int reviewsCount;
  final int discountPercentage;
  final String sellerId;
  final List<String> categories;

  ProductsItemModel({
    required this.id,
    required this.code,
    required this.name,
    required this.description,
    required this.arabicName,
    required this.arabicDescription,
    required this.coverPicture,
    this.productPictures = const [],
    required this.price,
    required this.quantityInStock,
    required this.weight,
    required this.color,
    required this.rating,
    required this.reviewsCount,
    required this.discountPercentage,
    required this.sellerId,
    required this.categories,
  });
  
  factory ProductsItemModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsItemModelFromJson(json);
}
