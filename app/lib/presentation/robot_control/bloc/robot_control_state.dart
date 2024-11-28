import 'package:equatable/equatable.dart';
import 'package:robot_task/domain/entities/enums/one_status.dart';
import 'package:robot_task/domain/entities/robot_item.dart';

class RobotControlState extends Equatable {
  const RobotControlState({
    required this.status,
    required this.errorMessage,
    required this.robot,
    required this.previousRobot,
    required this.speed,
  });

  factory RobotControlState.loading() {
    return RobotControlState(
      errorMessage: '',
      robot: RobotItem.empty(),
      status: OneStatus.loading,
      previousRobot: RobotItem.empty(),
      speed: 0,
    );
  }
  final String errorMessage;
  final OneStatus status;
  final RobotItem robot;
  final RobotItem previousRobot;
  final double speed;

  @override
  List<Object?> get props => [
        errorMessage,
        status,
        robot,
        previousRobot,
        speed,
      ];

  RobotControlState copyWith({
    String? errorMessage,
    OneStatus? status,
    RobotItem? robot,
    RobotItem? previousRobot,
    double? speed,
  }) {
    return RobotControlState(
      errorMessage: errorMessage ?? '',
      status: status ?? this.status,
      robot: robot ?? this.robot,
      previousRobot: previousRobot ?? this.previousRobot,
      speed: speed ?? this.speed,
    );
  }
}
