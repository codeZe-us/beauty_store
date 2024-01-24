
import 'package:beauty_store/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../entities/product.dart';
import '../repository/base_products_repository.dart';


class GetAllProductsUseCase extends BaseUseCaseNoParameters<List<Product>> {
  final BaseProductsRepository _baseProductsRepository;

  GetAllProductsUseCase(this._baseProductsRepository);

  @override
  Future<Either<Failure, List<Product>>> call() async =>
      await _baseProductsRepository.getAllProduct();
}
