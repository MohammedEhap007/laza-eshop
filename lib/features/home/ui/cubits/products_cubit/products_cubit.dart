import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:laza_eshop/core/apis/api_result.dart';
import 'package:laza_eshop/features/home/data/models/products_response.dart';
import 'package:laza_eshop/features/home/data/repos/products_repo.dart';

import 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;
  ProductsCubit(this._productsRepo) : super(const ProductsState.initial());

  void getProducts() async {
    emit(const ProductsState.productsLoading());
    final response = await _productsRepo.getProducts();
    response.when(
      success: (ProductsResponse productsResponse) {
        emit(ProductsState.productsSuccess(productsResponse));
      },
      failure: (error) {
        emit(ProductsState.productsFailure(error));
      },
    );
  }
}
