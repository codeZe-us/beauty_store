import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/categories.dart';
import '../entities/product.dart';

abstract class BaseProductsRepository {
  Future<Either<Failure, List<Product>>> getAllProduct();
  Future<Either<Failure, List<Category>>> getAllCategories();  
  Future<Either<Failure, Product>> getSingleProduct(int productId);
}
