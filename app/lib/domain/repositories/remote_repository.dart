import 'package:dartz/dartz.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/services/web_socket_service.dart';
import 'package:robot_task/data/datasources/remote_datasource.dart';
import 'package:robot_task/data/models/robot_model.dart';
import 'package:robot_task/data/models/update_speed_model.dart';
import 'package:robot_task/domain/entities/robot_item.dart';
import 'package:robot_task/domain/entities/update_speed_item.dart';

class RemoteRepository {
  RemoteRepository(this._webSocketService, this._remoteDataSource);
  final WebSocketService _webSocketService;
  final RemoteDatasource _remoteDataSource;

  Future<Either<Failure, void>> connectToWebsocket(String url) async {
    return _webSocketService.connect(url);
  }

  Stream<Either<Failure, RobotItem>> listenRobotChanges() {
    final Stream<Either<Failure, RobotModel>> result = _webSocketService.listen(fromJson: RobotModel.fromJson);
    return result.map((either) {
      return either.fold(
        (l) {
          return Left(l);
        },
        (model) {
          return Right(RobotItem.fromModel(model));
        },
      );
    });
  }

  Future<Either<Failure, void>> updateRobotSpeed(UpdateSpeedItem entity) async {
    return _webSocketService.send<UpdateSpeedModel>(model: UpdateSpeedModel.fromEntity(entity));
  }

  Future<Either<Failure, UpdateSpeedItem>> getInitialSpeed() async {
    try {
      final UpdateSpeedModel result = await _remoteDataSource.getInitialSpeed();
      return Right(UpdateSpeedItem.fromModel(result));
    } catch (e) {
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
