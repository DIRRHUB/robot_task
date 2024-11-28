// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_task/core/helpers/serializable_interface.dart';

part '../../generated/data/models/position_model.freezed.dart';
part '../../generated/data/models/position_model.g.dart';

@freezed
class PositionModel with _$PositionModel {
  factory PositionModel({
    @JsonKey(name: 'x') required double x,
    @JsonKey(name: 'y') required double y,
  }) = _PositionModel;

  factory PositionModel.fromJson(Json json) => _$PositionModelFromJson(json);
}
