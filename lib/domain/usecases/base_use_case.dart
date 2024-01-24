import 'package:dartz/dartz.dart';

import '../../core/errors/failure.dart';


// Callable Class
abstract class BaseUseCaseNoParameters<T> {
  Future<Either<Failure, T>> call();
}

abstract class BaseUseCaseWithParameters<Params, T> {
  Future<Either<Failure, T>> call(Params params);
}
