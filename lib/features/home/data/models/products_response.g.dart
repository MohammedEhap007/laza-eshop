// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsResponse _$ProductsResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ProductsResponse',
      json,
      ($checkedConvert) {
        final val = ProductsResponse(
          products: $checkedConvert(
            'products',
            (v) => (v as List<dynamic>)
                .map(
                  (e) => ProductsItemModel.fromJson(e as Map<String, dynamic>),
                )
                .toList(),
          ),
          pageNumber: $checkedConvert('page', (v) => (v as num).toInt()),
          pageSize: $checkedConvert('pageSize', (v) => (v as num).toInt()),
          totalCount: $checkedConvert('totalCount', (v) => (v as num).toInt()),
          hasNext: $checkedConvert('hasNextPage', (v) => v as bool),
          hasPrevious: $checkedConvert('hasPreviousPage', (v) => v as bool),
        );
        return val;
      },
      fieldKeyMap: const {
        'pageNumber': 'page',
        'hasNext': 'hasNextPage',
        'hasPrevious': 'hasPreviousPage',
      },
    );
