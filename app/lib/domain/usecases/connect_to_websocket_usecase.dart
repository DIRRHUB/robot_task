import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/base/usecase.dart';
import 'package:robot_task/data/repositories/remote_repository.dart';

class ConnectToWebsocketUsecase extends UseCaseFutureEither<void, String> {
  ConnectToWebsocketUsecase({required this.remoteRepository});
  final RemoteRepository remoteRepository;

  @override
  Future<Either<Failure, void>> call(String params) {
    return remoteRepository.connectToWebsocket(params);
  }
}
