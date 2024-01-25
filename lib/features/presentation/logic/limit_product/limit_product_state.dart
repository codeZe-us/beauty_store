// abstract class HomePopularProductEvent {
//   const HomePopularProductEvent();

//   @override
//   List<Object> get props => [];
// }

// class LoadHomePopularProductEvent extends HomePopularProductEvent {
//   final int limit;

//   LoadHomePopularProductEvent({required this.limit});

//   @override
//   List<Object> get props => [limit];
// }


abstract class HomePopularProductEvent {
  const HomePopularProductEvent();

  @override
  List<Object> get props => [];
}

class LoadHomePopularProductEvent extends HomePopularProductEvent {
  // Remove the 'limit' parameter from the event
  LoadHomePopularProductEvent();

  @override
  List<Object> get props => [];
}
