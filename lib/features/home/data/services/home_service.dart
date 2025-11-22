import 'package:dio/dio.dart';
import 'package:laza_eshop/core/apis/api_constants.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

import '../models/categories_item_model.dart';
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
