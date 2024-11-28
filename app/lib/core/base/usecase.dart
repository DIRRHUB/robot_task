import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';

abstract class UseCase<T, P> {
  T call(P params);
}

abstract class UseCaseFuture<Type, Params> {
  Future<Type> call(Params params);
}

abstract class UseCaseFutureEither<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

abstract class UseCaseVoid<Type, Params> {
  void call(Params params);
}

class NoParams {
  const NoParams();
}
