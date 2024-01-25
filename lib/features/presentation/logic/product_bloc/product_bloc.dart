import 'dart:async';

import 'package:beauty_store/domain/usecases/get_all_products_use_case.dart';
import 'package:beauty_store/features/presentation/logic/product_bloc/product_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/request_state.dart';
import 'product_event.dart';

class AllProductBloc extends Bloc<GetAllProductEvent, AllProductState> {
  AllProductBloc() : super(AllProductInitial()) {
    on<GetAllProductEvent>(_getAllProduct);
  }

  Future<void> _getAllProduct(
      GetAllProductEvent event, Emitter<AllProductState> emit) async {
    final results = await GetAllProductsUseCase.allProducts.call();
    results.fold(
      (l) => emit(
        AllProductErrorState(
          productErrorMessage: l.message,
        ),
      ),
      (r) => emit(
        GetAllProductState(
          productList: r,
          productRequestState: RequestState.loaded,
        ),
      ),
    );
  }
}

class AllProductErrorState extends AllProductState {
  final String productErrorMessage;

  const AllProductErrorState({
    this.productErrorMessage = '',
  });

  @override
  List<Object> get props => [productErrorMessage];
}
