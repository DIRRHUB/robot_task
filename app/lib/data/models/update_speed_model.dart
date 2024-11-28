// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_task/core/helpers/serializable_interface.dart';
import 'package:robot_task/domain/entities/update_speed_item.dart';

part '../../generated/data/models/update_speed_model.freezed.dart';
part '../../generated/data/models/update_speed_model.g.dart';

@freezed
class UpdateSpeedModel with _$UpdateSpeedModel implements Serializable {
  factory UpdateSpeedModel({
    @JsonKey(name: 'speed') required double speed,
  }) = _UpdateSpeedModel;

  factory UpdateSpeedModel.fromJson(Json json) => _$UpdateSpeedModelFromJson(json);

  factory UpdateSpeedModel.fromEntity(UpdateSpeedItem entity) {
    return UpdateSpeedModel(
      speed: entity.speed,
    );
  }
}
