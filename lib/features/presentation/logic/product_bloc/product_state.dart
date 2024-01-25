import 'package:beauty_store/data/models/product_model.dart';

import '../../../../core/utils/request_state.dart';

abstract class AllProductState {
  const AllProductState();

  List<Object> get props => [];
}

class AllProductInitial extends AllProductState {}

class GetAllProductState extends AllProductState {
  final List<ProductModel>? productList;
  final String productErrorMessage;
  final RequestState productRequestState;

  const GetAllProductState({
    this.productList,
    this.productErrorMessage = '',
    this.productRequestState = RequestState.loading,
  });

  // Add an error state
  GetAllProductErrorState copyWith({
    String? productErrorMessage,
  }) {
    return GetAllProductErrorState(
      productList: productList,
      productErrorMessage: productErrorMessage ?? this.productErrorMessage,
      productRequestState: RequestState.error,
    );
  }
}

class GetAllProductErrorState extends AllProductState {
  final List<ProductModel>? productList;
  final String productErrorMessage;
  final RequestState productRequestState;

  const GetAllProductErrorState({
    this.productList,
    this.productErrorMessage = '',
    this.productRequestState = RequestState.error,
  });

  @override
  List<Object> get props =>
      [productList ?? [], productErrorMessage, productRequestState];
}
