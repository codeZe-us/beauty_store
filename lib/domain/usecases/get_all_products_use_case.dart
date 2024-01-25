// import 'package:beauty_store/core/services/service_locator.dart';
// import 'package:beauty_store/domain/entities/product.dart';
// import 'package:beauty_store/domain/repository/base_products_repository.dart';
// import 'package:beauty_store/domain/usecases/base_use_case.dart';
// import 'package:dartz/dartz.dart';

// import '../../core/errors/failure.dart';

import 'package:beauty_store/core/services/service_locator.dart';
import 'package:beauty_store/data/models/product_model.dart';
import 'package:beauty_store/domain/repository/base_products_repository.dart';
import 'package:beauty_store/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';

class GetAllProductsUseCase
    extends BaseUseCaseNoParameters<List<ProductModel>> {
  final BaseProductsRepository _baseProductsRepository;

  GetAllProductsUseCase(this._baseProductsRepository);

  @override
  Future<Either<Failure, List<ProductModel>>> call() async {
    return await _baseProductsRepository.allProducts();
  }

  static GetAllProductsUseCase get allProducts => sl<GetAllProductsUseCase>();
}
