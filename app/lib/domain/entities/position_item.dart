import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:robot_task/data/models/position_model.dart';

part '../../generated/domain/entities/position_item.freezed.dart';

@freezed
class PositionItem with _$PositionItem {
  const factory PositionItem({
    required double x,
    required double y,
  }) = _PositionItem;

  const PositionItem._();

  factory PositionItem.fromModel(PositionModel model) {
    return PositionItem(
      x: model.x,
      y: model.y,
    );
  }

  factory PositionItem.empty() {
    return const PositionItem(
      x: 0,
      y: 0,
    );
  }
}
