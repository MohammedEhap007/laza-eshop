// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesResponse _$CategoriesResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CategoriesResponse', json, ($checkedConvert) {
      final val = CategoriesResponse(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        name: $checkedConvert('name', (v) => v as String),
        imageUrl: $checkedConvert('coverPictureUrl', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'coverPictureUrl'});

