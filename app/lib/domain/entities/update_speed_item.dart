import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_task/data/models/update_speed_model.dart';

part '../../generated/domain/entities/update_speed_item.freezed.dart';

@freezed
class UpdateSpeedItem with _$UpdateSpeedItem {
  const factory UpdateSpeedItem({
    required double speed,
  }) = _UpdateSpeedItem;

  const UpdateSpeedItem._();

  factory UpdateSpeedItem.fromModel(UpdateSpeedModel model) {
    return UpdateSpeedItem(speed: model.speed);
  }
}
