import 'package:laza_eshop/core/apis/api_error_handler.dart';
import 'package:laza_eshop/core/apis/api_error_model.dart';
import 'package:laza_eshop/core/apis/api_result.dart';
import 'package:laza_eshop/core/utils/app_logger.dart';

import '../models/products_response.dart';
import '../services/home_service.dart';

class ProductsRepo {
  final HomeService _homeService;
  ProductsRepo(this._homeService);

  Future<ApiResult<ProductsResponse>> getProducts() async {
    try {
      final response = await _homeService.getProducts();
      AppLogger.success('Products Repo Succeeded To Handle The Response');
      return ApiResult.success(response);
    } catch (error) {
      AppLogger.error('Products Repo Failed To Handle The Response');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
