abstract class CounterState {}

class CounterInitialState extends CounterState {}

class CounterWithCountState extends CounterState {
  final int count;

  CounterWithCountState(this.count);
}

class CounterErrorState extends CounterState {
  final String errorMessage;

  CounterErrorState(this.errorMessage);
}