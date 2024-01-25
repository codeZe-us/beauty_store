


import 'dart:async';

import 'package:beauty_store/domain/usecases/get_all_products_use_case.dart';
import 'package:beauty_store/features/presentation/logic/limit_product/limit_product_event.dart';
import 'package:beauty_store/features/presentation/logic/limit_product/limit_product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


// class HomePopularProductBloc
//     extends Bloc<HomePopularProductEvent, HomePopularProductState> {

//   HomePopularProductBloc()
//       : super(HomePopularProductInitial()) {
//     on<LoadHomePopularProductEvent>(_mapLoadHomePopularProductEventToState);
//   }

//   Stream<HomePopularProductState> _mapLoadHomePopularProductEventToState(
//     LoadHomePopularProductEvent event, Emitter<HomePopularProductState> emit) async* {
//     yield HomePopularProductLoading();

//     final result = await GetAllProductsUseCase.allProducts.call(event.limit);

//     yield result.fold(
//       (failure) => HomePopularProductError(errorMessage: failure.message),
//       (products) => HomePopularProductLoaded(products: products),
//     );
//   }
// }




class HomePopularProductBloc
    extends Bloc<HomePopularProductEvent, HomePopularProductState> {

  HomePopularProductBloc()
      : super(HomePopularProductInitial()) {
    on<LoadHomePopularProductEvent>(_mapLoadHomePopularProductEventToState);
  }

  Stream<HomePopularProductState> _mapLoadHomePopularProductEventToState(
    LoadHomePopularProductEvent event, Emitter<HomePopularProductState> emit) async* {
    yield HomePopularProductLoading();

    final result = await GetAllProductsUseCase.allProducts.call();

    yield result.fold(
      (failure) => HomePopularProductError(errorMessage: failure.message),
      (products) => HomePopularProductLoaded(products: products),
    );
  }
}

