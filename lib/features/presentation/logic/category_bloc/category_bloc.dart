import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/request_state.dart';
import '../../../../domain/usecases/gat_all_categories.dart';
import 'category_event.dart';
import 'category_state.dart';

class AllCategoriesBloc extends Bloc<AllCategoriesEvent, AllCategoriesState> {


  AllCategoriesBloc() : super(AllCategoriesInitial()) {
    on<GetAllCategoriesEvent>(_getAllCategories);
  }

  FutureOr<void> _getAllCategories(
    GetAllCategoriesEvent event, Emitter<AllCategoriesState> emit) async {
    final results = await GetAllCategoriesUseCase.categories.call();
    results.fold(
      (l) => emit(
        AllCategoriesErrorState(
          categoriesErrorMessage: l.message,
        ),
      ),
      (r) => emit(
        GetAllCategoriesState(
          categoriesList: r,
          categoriesRequestState: RequestState.loaded,
        ),
      ),
    );
  }
}

class AllCategoriesErrorState extends AllCategoriesState {
  final String categoriesErrorMessage;

  const AllCategoriesErrorState({
    this.categoriesErrorMessage = '',
  });

  @override
  List<Object> get props => [categoriesErrorMessage];
}
