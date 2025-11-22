import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_eshop/core/apis/api_error_model.dart';
import 'package:laza_eshop/features/home/data/models/products_response.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsState<T> with _$ProductsState<T> {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.productsLoading() = Loading;
  const factory ProductsState.productsSuccess(ProductsResponse data) =
      ProductsSuccess<T>;
  const factory ProductsState.productsFailure(ApiErrorModel apiErrorModel) =
      ProductsFailure<T>;
}
