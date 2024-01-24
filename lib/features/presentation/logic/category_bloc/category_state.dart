import '../../../../core/utils/request_state.dart';
import '../../../../domain/entities/categories.dart';

abstract class AllCategoriesState {
  const AllCategoriesState();

  @override
  List<Object> get props => [];
}

class AllCategoriesInitial extends AllCategoriesState {}

class GetAllCategoriesState extends AllCategoriesState {
  final List<Category>? categoriesList;
  final String categoriesErrorMessage;
  final RequestState categoriesRequestState;

  const GetAllCategoriesState({
    this.categoriesList,
    this.categoriesErrorMessage = '',
    this.categoriesRequestState = RequestState.loading,
  });

  // Add an error state
  GetAllCategoriesErrorState copyWith({
    String? categoriesErrorMessage,
  }) {
    return GetAllCategoriesErrorState(
      categoriesList: categoriesList,
      categoriesErrorMessage: categoriesErrorMessage ?? this.categoriesErrorMessage,
      categoriesRequestState: RequestState.error,
    );
  }
}

class GetAllCategoriesErrorState extends AllCategoriesState {
  final List<Category>? categoriesList;
  final String categoriesErrorMessage;
  final RequestState categoriesRequestState;

  const GetAllCategoriesErrorState({
    this.categoriesList,
    this.categoriesErrorMessage = '',
    this.categoriesRequestState = RequestState.error,
  });

  @override
  List<Object> get props => [categoriesList ?? [], categoriesErrorMessage, categoriesRequestState];
}
