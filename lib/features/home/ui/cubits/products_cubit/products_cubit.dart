import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/apis/api_result.dart';
import '../../../data/models/products_response.dart';
import '../../../data/repos/products_repo.dart';
import 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsRepo _productsRepo;
  int currentPage = 1;
  bool _isFetching = false;
  ProductsResponse? _allProducts;

  ProductsCubit(this._productsRepo) : super(const ProductsState.initial());

  void getProducts() async {
    emit(const ProductsState.productsLoading());
    final response = await _productsRepo.getProducts({
      'page': 1,
    });
    response.when(
      success: (ProductsResponse productsResponse) {
        _allProducts = productsResponse;
        currentPage = 2; // Next page to fetch
        emit(ProductsState.productsSuccess(productsResponse));
      },
      failure: (error) {
        emit(ProductsState.productsFailure(error));
      },
    );
  }

  void fetchMoreProducts() async {
    if (_isFetching || _allProducts == null) return;

    // Check if there are more pages to fetch
    if (_allProducts?.hasNext != true) return;

    _isFetching = true;
    final response = await _productsRepo.getProducts({
      'page': currentPage,
    });
    response.when(
      success: (ProductsResponse productsResponse) {
        // Append new products to existing ones
        final updatedProducts = ProductsResponse(
          products: [
            ...?_allProducts?.products,
            ...?productsResponse.products,
          ],
          pageNumber: productsResponse.pageNumber,
          pageSize: productsResponse.pageSize,
          totalCount: productsResponse.totalCount,
          hasNext: productsResponse.hasNext,
          hasPrevious: productsResponse.hasPrevious,
        );
        _allProducts = updatedProducts;
        currentPage++;
        emit(ProductsState.productsSuccess(updatedProducts));
        _isFetching = false;
      },
      failure: (error) {
        emit(ProductsState.productsFailure(error));
        _isFetching = false;
      },
    );
  }
}
