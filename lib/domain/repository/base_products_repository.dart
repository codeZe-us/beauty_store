import 'package:beauty_store/data/models/category_model.dart';
import 'package:beauty_store/data/models/product_model.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';

abstract class BaseProductsRepository {
  Future<Either<Failure, List<CategoryModel>>> getAllCategories();
  Future<Either<Failure, List<ProductModel>>> sorting({String? sortBy});
  Future<Either<Failure, List<ProductModel>>> allProducts();
  // Future<Either<Failure, List<Cart>>> allCart();
}
