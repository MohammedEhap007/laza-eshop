import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_eshop/core/apis/api_error_model.dart';
import '../../../data/models/categories_response.dart';

part 'categories_state.freezed.dart';

@freezed
class CategoriesState<T> with _$CategoriesState<T> {
  const factory CategoriesState.initial() = _Initial;
  const factory CategoriesState.categoriesLoading() = CategoriesLoading;
  const factory CategoriesState.categoriesSuccess(CategoriesResponse data) =
      CategoriesSuccess<T>;
  const factory CategoriesState.categoriesFailure(ApiErrorModel apiErrorModel) =
      CategoriesFailure<T>;
}
