import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_task/data/models/robot_model.dart';
import 'package:robot_task/domain/entities/position_item.dart';

part '../../generated/domain/entities/robot_item.freezed.dart';

@freezed
class RobotItem with _$RobotItem {
  const factory RobotItem({
    required PositionItem position,
    required double speed,
    required double battery,
    required double temperature,
  }) = _RobotStateItem;

  const RobotItem._();

  factory RobotItem.fromModel(RobotModel model) {
    return RobotItem(
      position: PositionItem.fromModel(model.position),
      speed: double.parse(model.speed.toStringAsFixed(2)),
      battery: double.parse(model.battery.toStringAsFixed(2)),
      temperature: double.parse(model.temperature.toStringAsFixed(2)),
    );
  }

  factory RobotItem.empty() {
    return RobotItem(
      position: PositionItem.empty(),
      speed: 0,
      battery: 0,
      temperature: 0,
    );
  }
}
