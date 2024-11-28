// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/entities/robot_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RobotItem {
  PositionItem get position => throw _privateConstructorUsedError;
  double get speed => throw _privateConstructorUsedError;
  double get battery => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  /// Create a copy of RobotItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RobotItemCopyWith<RobotItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotItemCopyWith<$Res> {
  factory $RobotItemCopyWith(RobotItem value, $Res Function(RobotItem) then) =
      _$RobotItemCopyWithImpl<$Res, RobotItem>;
  @useResult
  $Res call(
      {PositionItem position,
      double speed,
      double battery,
      double temperature});

  $PositionItemCopyWith<$Res> get position;
}

/// @nodoc
class _$RobotItemCopyWithImpl<$Res, $Val extends RobotItem>
    implements $RobotItemCopyWith<$Res> {
  _$RobotItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotItem
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
              as PositionItem,
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

  /// Create a copy of RobotItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PositionItemCopyWith<$Res> get position {
    return $PositionItemCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RobotStateItemImplCopyWith<$Res>
    implements $RobotItemCopyWith<$Res> {
  factory _$$RobotStateItemImplCopyWith(_$RobotStateItemImpl value,
          $Res Function(_$RobotStateItemImpl) then) =
      __$$RobotStateItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PositionItem position,
      double speed,
      double battery,
      double temperature});

  @override
  $PositionItemCopyWith<$Res> get position;
}

/// @nodoc
class __$$RobotStateItemImplCopyWithImpl<$Res>
    extends _$RobotItemCopyWithImpl<$Res, _$RobotStateItemImpl>
    implements _$$RobotStateItemImplCopyWith<$Res> {
  __$$RobotStateItemImplCopyWithImpl(
      _$RobotStateItemImpl _value, $Res Function(_$RobotStateItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
    Object? speed = null,
    Object? battery = null,
    Object? temperature = null,
  }) {
    return _then(_$RobotStateItemImpl(
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionItem,
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

class _$RobotStateItemImpl extends _RobotStateItem {
  const _$RobotStateItemImpl(
      {required this.position,
      required this.speed,
      required this.battery,
      required this.temperature})
      : super._();

  @override
  final PositionItem position;
  @override
  final double speed;
  @override
  final double battery;
  @override
  final double temperature;

  @override
  String toString() {
    return 'RobotItem(position: $position, speed: $speed, battery: $battery, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobotStateItemImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, position, speed, battery, temperature);

  /// Create a copy of RobotItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RobotStateItemImplCopyWith<_$RobotStateItemImpl> get copyWith =>
      __$$RobotStateItemImplCopyWithImpl<_$RobotStateItemImpl>(
          this, _$identity);
}

abstract class _RobotStateItem extends RobotItem {
  const factory _RobotStateItem(
      {required final PositionItem position,
      required final double speed,
      required final double battery,
      required final double temperature}) = _$RobotStateItemImpl;
  const _RobotStateItem._() : super._();

  @override
  PositionItem get position;
  @override
  double get speed;
  @override
  double get battery;
  @override
  double get temperature;

  /// Create a copy of RobotItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RobotStateItemImplCopyWith<_$RobotStateItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
