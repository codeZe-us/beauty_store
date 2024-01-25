import 'package:beauty_store/features/presentation/logic/counter/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  void increment() {
    if (state is CounterWithCountState) {
      final currentCount = (state as CounterWithCountState).count;
      emit(CounterWithCountState(currentCount + 1));
    } else {
      emit(CounterWithCountState(1));
    }
  }

  void decrement() {
    if (state is CounterWithCountState) {
      final currentCount = (state as CounterWithCountState).count;
      emit(CounterWithCountState(currentCount - 1));
    } else {
      emit(CounterWithCountState(0)); 
    }
  }
}