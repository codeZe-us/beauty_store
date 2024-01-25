import 'package:beauty_store/data/datasources/product_remote_data_source.dart';
import 'package:beauty_store/data/repository/products_repository.dart';
import 'package:beauty_store/domain/repository/base_products_repository.dart';
import 'package:beauty_store/domain/usecases/get_all_products_use_case.dart';
import 'package:get_it/get_it.dart';

import '../../domain/usecases/gat_all_categories.dart';
import '../../domain/usecases/get_sorting_usecase.dart';

final sl = GetIt.instance;

class ServiceLocator {
  static void init() {
    //! DataSources
    sl.registerLazySingleton<BaseProductRemoteDataSource>(
        () => ProductRemoteDataSourceImpl());

    //! Repositories
    sl.registerLazySingleton<BaseProductsRepository>(
        () => ProductsRepository(sl()));

    //! Usecases
    sl.registerLazySingleton(() => GetAllProductsUseCase(sl()));
    sl.registerLazySingleton(() => GetAllCategoriesUseCase(sl()));
    sl.registerLazySingleton(() => SortingUseCase(sl()));
  }
}
