import 'package:beauty_store/data/models/product_model.dart';
import 'package:equatable/equatable.dart';

abstract class HomePopularProductState extends Equatable {
  const HomePopularProductState();

  @override
  List<Object> get props => [];
}

class HomePopularProductInitial extends HomePopularProductState {}

class HomePopularProductLoading extends HomePopularProductState {}

class HomePopularProductLoaded extends HomePopularProductState {
  final List<ProductModel> products;

  const HomePopularProductLoaded({required this.products});

  @override
  List<Object> get props => [products];
}

class HomePopularProductError extends HomePopularProductState {
  final String errorMessage;

  const HomePopularProductError({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}
