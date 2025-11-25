import '../../../../core/apis/api_error_handler.dart';
import '../../../../core/apis/api_result.dart';
import '../../../../core/utils/app_logger.dart';
import '../models/categories_response.dart';
import '../services/home_service.dart';

class CategoriesRepo {
  final HomeService _homeService;
  CategoriesRepo(this._homeService);
  Future<ApiResult<CategoriesResponse>> getCategories() async {
    try {
      final response = await _homeService.getCategories();
      AppLogger.success('Categories Repo Succeeded To Handle The Response');
      return ApiResult.success(response);
    } catch (error) {
      AppLogger.error('Categories Repo Failed To Handle The Response');
      AppLogger.error('Error details: $error');
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
