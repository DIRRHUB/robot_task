import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message});
  final String message;
}

class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
  });

  @override
  List<Object?> get props => [message];
}

class UndefinedTypeFailure extends Failure {
  const UndefinedTypeFailure({
    required super.message,
  });

  @override
  List<Object?> get props => [message];
}

class ConnectionFailure extends Failure {
  const ConnectionFailure({
    required super.message,
  });

  @override
  List<Object?> get props => [message];
}
