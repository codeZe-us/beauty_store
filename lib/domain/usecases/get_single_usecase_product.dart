// import 'package:beauty_store/domain/entities/product.dart';
// import 'package:beauty_store/domain/repository/base_products_repository.dart';
// import 'package:beauty_store/domain/usecases/base_use_case.dart';
// import 'package:dartz/dartz.dart';

// import '../../core/errors/failure.dart';

// class GetSingleProductUseCase extends BaseUseCaseWithParameters<int, Product> {
//   final BaseProductsRepository _baseProductsRepository;

//   GetSingleProductUseCase(this._baseProductsRepository);

//   @override
//   Future<Either<Failure, Product>> call(int productId) async {
//     try {
//       final productEither =
//           await _baseProductsRepository.getSingleProduct(productId);
//       return productEither;
//     } catch (e) {
//       return const Left(ServerFailure(message: 'Unexpected error occurred.'));
//     }
//   }
// }
