import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/base/usecase.dart';
import 'package:robot_task/data/repositories/remote_repository.dart';
import 'package:robot_task/domain/entities/update_speed_item.dart';

class GetInitialSpeedUsecase extends UseCaseFutureEither<UpdateSpeedItem, NoParams> {
  GetInitialSpeedUsecase({required this.remoteRepository});
  final RemoteRepository remoteRepository;

  @override
  Future<Either<Failure, UpdateSpeedItem>> call(NoParams params) {
    return remoteRepository.getInitialSpeed();
  }
}
