import 'package:dartz/dartz.dart';

import '../../core/errors/exceptions.dart';
import '../../core/errors/failure.dart';
import '../../domain/entities/categories.dart';
import '../../domain/entities/product.dart';
import '../../domain/repository/base_products_repository.dart';
import '../datasources/product_remote_data_source.dart';

class ProductsRepository extends BaseProductsRepository {
  final BaseProductRemoteDataSource _baseProductRemoteDataSource;

  ProductsRepository(this._baseProductRemoteDataSource);

  @override
  Future<Either<Failure, List<Product>>> getAllProduct() async {
    try {
      final results = await _baseProductRemoteDataSource.getAllProducts();
      return Right(results);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.message));
    }
  }

  @override
  Future<Either<Failure, List<Category>>> getAllCategories() async {
    try {
      final results = await _baseProductRemoteDataSource.getAllCategories();
      final categories = results
          .map((categoryModel) => Category(name: categoryModel.name))
          .toList();

      return Right(categories);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.message));
    }
  }

  @override
  Future<Either<Failure, Product>> getSingleProduct(int productId) async {
    try {
      final result =
          await _baseProductRemoteDataSource.getSingleProduct(productId);
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.message));
    }
  }
}
