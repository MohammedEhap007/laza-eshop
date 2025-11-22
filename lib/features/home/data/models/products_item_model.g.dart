// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsItemModel _$ProductsItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProductsItemModel',
      json,
      ($checkedConvert) {
        final val = ProductsItemModel(
          id: $checkedConvert('id', (v) => v as String?),
          code: $checkedConvert('productCode', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          description: $checkedConvert('description', (v) => v as String?),
          arabicName: $checkedConvert('arabicName', (v) => v as String?),
          arabicDescription: $checkedConvert(
            'arabicDescription',
            (v) => v as String?,
          ),
          coverPicture: $checkedConvert('coverPictureUrl', (v) => v as String?),
          productPictures: $checkedConvert(
            'productPictures',
            (v) => v as List<dynamic>?,
          ),
          price: $checkedConvert('price', (v) => (v as num?)?.toDouble()),
          quantityInStock: $checkedConvert(
            'stock',
            (v) => (v as num?)?.toInt(),
          ),
          weight: $checkedConvert('weight', (v) => (v as num?)?.toDouble()),
          color: $checkedConvert('color', (v) => v as String?),
          rating: $checkedConvert('rating', (v) => (v as num?)?.toInt()),
          reviewsCount: $checkedConvert(
            'reviewsCount',
            (v) => (v as num?)?.toInt(),
          ),
          discountPercentage: $checkedConvert(
            'discountPercentage',
            (v) => (v as num?)?.toInt(),
          ),
          sellerId: $checkedConvert('sellerId', (v) => v as String?),
          categories: $checkedConvert('categories', (v) => v as List<dynamic>?),
        );
        return val;
      },
      fieldKeyMap: const {
        'code': 'productCode',
        'coverPicture': 'coverPictureUrl',
        'quantityInStock': 'stock',
      },
    );
