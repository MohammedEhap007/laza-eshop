// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoriesItemModel _$CategoriesItemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CategoriesItemModel', json, ($checkedConvert) {
      final val = CategoriesItemModel(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        imageUrl: $checkedConvert('coverPictureUrl', (v) => v as String),
      );
      return val;
    }, fieldKeyMap: const {'imageUrl': 'coverPictureUrl'});
