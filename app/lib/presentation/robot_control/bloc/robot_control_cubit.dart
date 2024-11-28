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

/// A [Cubit] that manages the state of the robot control page. It connects to a WebSocket
/// to listen for changes in the robot's state, updates the robot's speed, and handles
/// the logic to start/stop the robot and retrieve the initial speed.
class RobotControlCubit extends Cubit<RobotControlState> {
  /// Constructor for [RobotControlCubit].
  ///
  /// Initializes the [RobotControlCubit] with the provided use cases for handling robot control logic.
  RobotControlCubit(
    this._listenRobotChangesUsecase,
    this._connectToWebsocketUsecase,
    this._updateRobotSpeedUsecase,
    this._getInitialSpeedUsecase,
  ) : super(RobotControlState.loading());

  final ConnectToWebsocketUsecase _connectToWebsocketUsecase;
  final ListenRobotChangesUsecase _listenRobotChangesUsecase;
  final UpdateRobotSpeedUsecase _updateRobotSpeedUsecase;
  final GetInitialSpeedUsecase _getInitialSpeedUsecase;

  /// Initializes the WebSocket connection and listens for robot state changes.
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
                status: OneStatus.initial,
                robot: robot,
                previousRobot: state.robot,
                speed: robot.speed,
              ));
            },
          );
        });
      },
    );
  }

  /// Updates the speed of the robot.
  ///
  /// Takes the new speed value and triggers an update of the robot's speed.
  void updateSpeed(double speed) async {
    emit(state.copyWith(speed: speed)); // update the UI with the new speed.
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

  /// Toggles the robot's speed between 0 and 100.
  /// If the robot is currently stopped (speed is 0), it will start the robot with maximum speed.
  /// If the robot is already moving, it will stop the robot (set speed to 0).
  void startOrStop() {
    if (state.robot.speed == 0) {
      updateSpeed(100);
    } else {
      updateSpeed(0);
    }
  }

  /// Fetches the initial speed of the robot from the API.
  /// Emits the initial speed state and triggers the speed update.
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
