import 'package:beauty_store/data/models/category_model.dart';
import 'package:beauty_store/domain/repository/base_products_repository.dart';
import 'package:beauty_store/domain/usecases/base_use_case.dart';
import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';
import '../../core/services/service_locator.dart';

class GetAllCategoriesUseCase
    extends BaseUseCaseNoParameters<List<CategoryModel>> {
  final BaseProductsRepository _baseProductsRepository;

  GetAllCategoriesUseCase(this._baseProductsRepository);

  @override
  Future<Either<Failure, List<CategoryModel>>> call() async {
    final categoriesEither = await _baseProductsRepository.getAllCategories();
    return categoriesEither;
  }

  static GetAllCategoriesUseCase get categories =>
      sl<GetAllCategoriesUseCase>();
}
