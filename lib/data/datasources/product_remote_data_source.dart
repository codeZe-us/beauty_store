import 'package:beauty_store/data/models/category_model.dart';
import 'package:dio/dio.dart';

import '../../core/errors/exceptions.dart';
import '../../core/network/api_constants.dart';
import '../models/product_model.dart';

abstract class BaseProductRemoteDataSource {
  Future<List<CategoryModel>> getAllCategories();
  Future<List<ProductModel>> sorting({String? sortBy});
  Future<List<ProductModel>> allProducts();
  // Future<List<Cart>> allCart();
}

class ProductRemoteDataSourceImpl extends BaseProductRemoteDataSource {
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final response = await Dio().get(ApiConstants.categories);
    return _dataOrException<CategoryModel>(
        response, (dynamic json) => CategoryModel.fromJson(json));
  }

  @override
  Future<List<ProductModel>> sorting({String? sortBy}) async {
    final response = await Dio().get('${ApiConstants.baseurl}?sort=$sortBy');
    return _dataOrException<ProductModel>(
        response, (dynamic json) => ProductModel.fromJson(json));
  }

  @override
  Future<List<ProductModel>> allProducts() async {
    List<ProductModel> products = [];
    final response = await Dio().get(ApiConstants.allproducts);

    products = (response.data as List)
        .map((product) => ProductModel.fromJson(product))
        .toList();
    return products;
  }

  // @override
  // Future<List<Cart>> allCart() async {
  //   final response = await Dio().get(ApiConstants.allcart);
  //   return _dataOrException<Cart>(
  //       response, (dynamic json) => Cart.fromJson(json));
  // }

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
