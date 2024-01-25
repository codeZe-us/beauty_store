import 'package:beauty_store/core/errors/exceptions.dart';
import 'package:beauty_store/core/errors/failure.dart';
import 'package:beauty_store/data/datasources/product_remote_data_source.dart';
import 'package:beauty_store/data/models/category_model.dart';
import 'package:beauty_store/data/models/product_model.dart';
import 'package:beauty_store/domain/repository/base_products_repository.dart';
import 'package:dartz/dartz.dart';

class ProductsRepository extends BaseProductsRepository {
  final BaseProductRemoteDataSource _baseProductRemoteDataSource;

  ProductsRepository(this._baseProductRemoteDataSource);

  List<T> _mapToEntities<T>(
      List<dynamic> results, T Function(Map<String, dynamic>) fromJson) {
    return results.map((model) => fromJson(model)).toList();
  }

  @override
  Future<Either<Failure, List<CategoryModel>>> getAllCategories() async {
    try {
      final results = await _baseProductRemoteDataSource.getAllCategories();

      return Right(results);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.message));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> sorting({String? sortBy}) async {
    try {
      final results =
          await _baseProductRemoteDataSource.sorting(sortBy: sortBy);

      return Right(results);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.message));
    }
  }

  @override
  Future<Either<Failure, List<ProductModel>>> allProducts() async {
    try {
      final results = await _baseProductRemoteDataSource.allProducts();

      return Right(results);
    } on ServerException catch (failure) {
      return Left(ServerFailure(message: failure.message));
    }
  }

  // @override
  // Future<Either<Failure, List<Cart>>> allCart() async {
  //   try {
  //     final results = await _baseProductRemoteDataSource.allCart();
  //     final orders = _mapToEntities(results, (json) => Cart(
  //       id: json['id'],
  //       userId: json['userId'],
  //       date: DateTime.parse(json['date']),
  //       products: (json['products'] as List<dynamic>)
  //           .map((productJson) => ProductQuantity(
  //             productId: productJson['productId'],
  //             quantity: productJson['quantity'],
  //           ))
  //           .toList(),
  //     ));

  //     return Right(orders);
  //   } on ServerException catch (failure) {
  //     return Left(ServerFailure(message: failure.message));
  //   }
  // }
}
