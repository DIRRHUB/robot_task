import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/base/usecase.dart';
import 'package:robot_task/data/repositories/remote_repository.dart';
import 'package:robot_task/domain/entities/robot_item.dart';

class ListenRobotChangesUsecase extends UseCase<Stream<Either<Failure, RobotItem>>, NoParams> {
  ListenRobotChangesUsecase({required this.remoteRepository});
  final RemoteRepository remoteRepository;

  @override
  Stream<Either<Failure, RobotItem>> call(NoParams params) {
    return remoteRepository.listenRobotChanges();
  }
}
