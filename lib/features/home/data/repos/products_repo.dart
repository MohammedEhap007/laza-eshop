import '../../../../core/apis/api_error_handler.dart';
import '../../../../core/apis/api_error_model.dart';
import '../../../../core/apis/api_result.dart';
import '../../../../core/utils/app_logger.dart';

import '../models/products_response.dart';
import '../services/home_service.dart';

class ProductsRepo {
  final HomeService _homeService;
  ProductsRepo(this._homeService);

  Future<ApiResult<ProductsResponse>> getProducts(
    Map<String, dynamic> body,
  ) async {
    try {
      final response = await _homeService.getProducts(
        body,
      );
      AppLogger.success('Products Repo Succeeded To Handle The Response');
      return ApiResult.success(response);
    } catch (error) {
      AppLogger.error('Products Repo Failed To Handle The Response');
      AppLogger.error('Error details: $error');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
