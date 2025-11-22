// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CategoriesResponse', json, ($checkedConvert) {
      final val = CategoriesResponse(
        categories: $checkedConvert(
          'categories',
          (v) => (v as List<dynamic>)
              .map(
                (e) => CategoriesItemModel.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });
