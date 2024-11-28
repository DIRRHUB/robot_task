// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../data/models/robot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RobotModel _$RobotModelFromJson(Map<String, dynamic> json) {
  return _RobotModel.fromJson(json);
}

/// @nodoc
mixin _$RobotModel {
  @JsonKey(name: 'position')
  PositionModel get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'speed')
  double get speed => throw _privateConstructorUsedError;
  @JsonKey(name: 'battery')
  double get battery => throw _privateConstructorUsedError;
  @JsonKey(name: 'temperature')
  double get temperature => throw _privateConstructorUsedError;

  /// Serializes this RobotModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RobotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RobotModelCopyWith<RobotModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotModelCopyWith<$Res> {
  factory $RobotModelCopyWith(
          RobotModel value, $Res Function(RobotModel) then) =
      _$RobotModelCopyWithImpl<$Res, RobotModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') PositionModel position,
      @JsonKey(name: 'speed') double speed,
      @JsonKey(name: 'battery') double battery,
      @JsonKey(name: 'temperature') double temperature});

  $PositionModelCopyWith<$Res> get position;
}

/// @nodoc
class _$RobotModelCopyWithImpl<$Res, $Val extends RobotModel>
    implements $RobotModelCopyWith<$Res> {
  _$RobotModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? speed = null,
    Object? battery = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionModel,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  /// Create a copy of RobotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionModelCopyWith<$Res> get position {
    return $PositionModelCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RobotModelImplCopyWith<$Res>
    implements $RobotModelCopyWith<$Res> {
  factory _$$RobotModelImplCopyWith(
          _$RobotModelImpl value, $Res Function(_$RobotModelImpl) then) =
      __$$RobotModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position') PositionModel position,
      @JsonKey(name: 'speed') double speed,
      @JsonKey(name: 'battery') double battery,
      @JsonKey(name: 'temperature') double temperature});

  @override
  $PositionModelCopyWith<$Res> get position;
}

/// @nodoc
class __$$RobotModelImplCopyWithImpl<$Res>
    extends _$RobotModelCopyWithImpl<$Res, _$RobotModelImpl>
    implements _$$RobotModelImplCopyWith<$Res> {
  __$$RobotModelImplCopyWithImpl(
      _$RobotModelImpl _value, $Res Function(_$RobotModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? speed = null,
    Object? battery = null,
    Object? temperature = null,
  }) {
    return _then(_$RobotModelImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionModel,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as double,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RobotModelImpl implements _RobotModel {
  _$RobotModelImpl(
      {@JsonKey(name: 'position') required this.position,
      @JsonKey(name: 'speed') required this.speed,
      @JsonKey(name: 'battery') required this.battery,
      @JsonKey(name: 'temperature') required this.temperature});

  factory _$RobotModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RobotModelImplFromJson(json);

  @override
  @JsonKey(name: 'position')
  final PositionModel position;
  @override
  @JsonKey(name: 'speed')
  final double speed;
  @override
  @JsonKey(name: 'battery')
  final double battery;
  @override
  @JsonKey(name: 'temperature')
  final double temperature;

  @override
  String toString() {
    return 'RobotModel(position: $position, speed: $speed, battery: $battery, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobotModelImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, speed, battery, temperature);

  /// Create a copy of RobotModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RobotModelImplCopyWith<_$RobotModelImpl> get copyWith =>
      __$$RobotModelImplCopyWithImpl<_$RobotModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RobotModelImplToJson(
      this,
    );
  }
}

abstract class _RobotModel implements RobotModel {
  factory _RobotModel(
          {@JsonKey(name: 'position') required final PositionModel position,
          @JsonKey(name: 'speed') required final double speed,
          @JsonKey(name: 'battery') required final double battery,
          @JsonKey(name: 'temperature') required final double temperature}) =
      _$RobotModelImpl;

  factory _RobotModel.fromJson(Map<String, dynamic> json) =
      _$RobotModelImpl.fromJson;

  @override
  @JsonKey(name: 'position')
  PositionModel get position;
  @override
  @JsonKey(name: 'speed')
  double get speed;
  @override
  @JsonKey(name: 'battery')
  double get battery;
  @override
  @JsonKey(name: 'temperature')
  double get temperature;

  /// Create a copy of RobotModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RobotModelImplCopyWith<_$RobotModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
