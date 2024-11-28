// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_task/core/helpers/serializable_interface.dart';
import 'package:robot_task/data/models/position_model.dart';

part '../../generated/data/models/robot_model.freezed.dart';
part '../../generated/data/models/robot_model.g.dart';

@freezed
class RobotModel with _$RobotModel {
  factory RobotModel({
    @JsonKey(name: 'position') required PositionModel position,
    @JsonKey(name: 'speed') required double speed,
    @JsonKey(name: 'battery') required double battery,
    @JsonKey(name: 'temperature') required double temperature,
  }) = _RobotModel;

  factory RobotModel.fromJson(Json json) => _$RobotModelFromJson(json);
}
