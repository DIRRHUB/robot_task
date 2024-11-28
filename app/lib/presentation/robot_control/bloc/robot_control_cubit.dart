import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_task/core/base/failure.dart';
import 'package:robot_task/core/base/usecase.dart';
import 'package:robot_task/core/constants/api_constants.dart';
import 'package:robot_task/domain/entities/enums/one_status.dart';
import 'package:robot_task/domain/entities/robot_item.dart';
import 'package:robot_task/domain/entities/update_speed_item.dart';
import 'package:robot_task/domain/usecases/connect_to_websocket_usecase.dart';
import 'package:robot_task/domain/usecases/get_initial_speed_usecase.dart';
import 'package:robot_task/domain/usecases/listen_robot_changes_usecase.dart';
import 'package:robot_task/domain/usecases/update_robot_speed_usecase.dart';
import 'package:robot_task/presentation/robot_control/bloc/robot_control_state.dart';

class RobotControlCubit extends Cubit<RobotControlState> {
  RobotControlCubit(this._listenRobotChangesUsecase, this._connectToWebsocketUsecase, this._updateRobotSpeedUsecase,
      this._getInitialSpeedUsecase)
      : super(RobotControlState.loading());
  final ConnectToWebsocketUsecase _connectToWebsocketUsecase;
  final ListenRobotChangesUsecase _listenRobotChangesUsecase;
  final UpdateRobotSpeedUsecase _updateRobotSpeedUsecase;
  final GetInitialSpeedUsecase _getInitialSpeedUsecase;

  void init() async {
    final Either<Failure, void> connectionResult = await _connectToWebsocketUsecase(ApiConstants.webSocketUrl);
    connectionResult.fold(
      (l) {
        emit(state.copyWith(status: OneStatus.error, errorMessage: l.message));
      },
      (_) {
        Stream<Either<Failure, RobotItem>> stream = _listenRobotChangesUsecase(const NoParams());
        stream.listen((event) {
          event.fold(
            (l) {
              emit(state.copyWith(errorMessage: l.message));
            },
            (robot) {
              emit(state.copyWith(
                  status: OneStatus.initial, robot: robot, previousRobot: state.robot, speed: robot.speed));
            },
          );
        });
      },
    );
  }

  void updateSpeed(double speed) async {
    emit(state.copyWith(speed: speed));
    final Either<Failure, void> result = await _updateRobotSpeedUsecase(UpdateSpeedItem(speed: speed));
    result.fold(
      (l) {
        emit(state.copyWith(status: OneStatus.error, errorMessage: l.message, speed: state.robot.speed));
      },
      (_) {
        emit(state.copyWith(status: OneStatus.initial));
      },
    );
  }

  void startOrStop() {
    if (state.robot.speed == 0) {
      updateSpeed(100);
    } else {
      updateSpeed(0);
    }
  }

  void getInitialSpeed() async {
    final Either<Failure, UpdateSpeedItem> result = await _getInitialSpeedUsecase(const NoParams());
    result.fold(
      (l) {
        emit(state.copyWith(errorMessage: l.message));
      },
      (result) {
        emit(state.copyWith(speed: result.speed));
        updateSpeed(result.speed);
      },
    );
  }
}
