import 'package:beauty_store/domain/repository/base_products_repository.dart';
import 'package:beauty_store/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/services/service_locator.dart';
import '../entities/categories.dart';

class GetAllCategoriesUseCase extends BaseUseCaseNoParameters<List<Category>> {
  final BaseProductsRepository _baseProductsRepository;

  GetAllCategoriesUseCase(this._baseProductsRepository);

  @override
  Future<Either<Failure, List<Category>>> call() async {
    final categoriesEither = await _baseProductsRepository.getAllCategories();
    return categoriesEither;
  }
  static GetAllCategoriesUseCase get categories => sl<GetAllCategoriesUseCase>();
}
