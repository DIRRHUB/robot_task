import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/base/usecase.dart';
import 'package:robot_task/data/repositories/remote_repository.dart';
import 'package:robot_task/domain/entities/update_speed_item.dart';

class UpdateRobotSpeedUsecase extends UseCaseFutureEither<void, UpdateSpeedItem> {
  UpdateRobotSpeedUsecase({required this.remoteRepository});
  final RemoteRepository remoteRepository;

  @override
  Future<Either<Failure, void>> call(UpdateSpeedItem params) {
    return remoteRepository.updateRobotSpeed(params);
  }
}
