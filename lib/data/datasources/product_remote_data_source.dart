import 'package:beauty_store/data/models/category_model.dart';
import 'package:beauty_store/data/models/product_model.dart';
import 'package:dio/dio.dart';

import '../../core/errors/exceptions.dart';
import '../../core/network/api_constants.dart';

abstract class BaseProductRemoteDataSource {
  Future<List<ProductModel>> getAllProducts({int limit});
  Future<List<CategoryModel>> getAllCategories();
  Future<ProductModel> getSingleProduct(int productId);
}

class ProductRemoteDataSourceImpl extends BaseProductRemoteDataSource {
  @override
  Future<List<ProductModel>> getAllProducts({int limit = 5}) async {
    final response = await Dio().get(
      ApiConstants.BASE_PRODUCT_URL,
      queryParameters: {'limit': limit},
    );
    return _dataOrException<ProductModel>(
        response, (dynamic json) => ProductModel.fromJson(json));
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final response = await Dio().get(ApiConstants.CATEGORIES);
    return _dataOrException<CategoryModel>(
        response, (dynamic json) => CategoryModel.fromJson(json));
  }

  @override
  Future<ProductModel> getSingleProduct(int productId) async {
    final response =
        await Dio().get('${ApiConstants.BASE_PRODUCT_URL}/$productId');
    return _dataOrException<ProductModel>(
      response,
      (dynamic json) => ProductModel.fromJson(json as Map<String, dynamic>),
    ).first;
  }

  List<T> _dataOrException<T>(
      Response<dynamic> response, T Function(dynamic) fromJson) {
    if (response.statusCode == 200) {
      return List<T>.from(
        (response.data as List).map(
          (e) => fromJson(e),
        ),
      );
    } else {
      throw ServerException(response.data);
    }
  }
}
