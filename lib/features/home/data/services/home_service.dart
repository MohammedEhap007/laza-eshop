import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../../../../core/apis/api_constants.dart';
import '../models/categories_response.dart';
import '../models/products_response.dart';

part 'home_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class HomeService {
  factory HomeService(Dio dio) = _HomeService;

  @GET(ApiConstants.categories)
  Future<CategoriesResponse> getCategories();

  @GET(ApiConstants.products)
  Future<ProductsResponse> getProducts(
    @Body() Map<String, dynamic> body,
  );
}
