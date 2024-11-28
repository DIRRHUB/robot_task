// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../../data/models/robot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RobotModelImpl _$$RobotModelImplFromJson(Map<String, dynamic> json) =>
    _$RobotModelImpl(
      position:
          PositionModel.fromJson(json['position'] as Map<String, dynamic>),
      speed: (json['speed'] as num).toDouble(),
      battery: (json['battery'] as num).toDouble(),
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$RobotModelImplToJson(_$RobotModelImpl instance) =>
    <String, dynamic>{
      'position': instance.position.toJson(),
      'speed': instance.speed,
      'battery': instance.battery,
      'temperature': instance.temperature,
    };
