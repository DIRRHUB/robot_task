// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/entities/update_speed_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateSpeedItem {
  double get speed => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSpeedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSpeedItemCopyWith<UpdateSpeedItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSpeedItemCopyWith<$Res> {
  factory $UpdateSpeedItemCopyWith(
          UpdateSpeedItem value, $Res Function(UpdateSpeedItem) then) =
      _$UpdateSpeedItemCopyWithImpl<$Res, UpdateSpeedItem>;
  @useResult
  $Res call({double speed});
}

/// @nodoc
class _$UpdateSpeedItemCopyWithImpl<$Res, $Val extends UpdateSpeedItem>
    implements $UpdateSpeedItemCopyWith<$Res> {
  _$UpdateSpeedItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSpeedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_value.copyWith(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateSpeedItemImplCopyWith<$Res>
    implements $UpdateSpeedItemCopyWith<$Res> {
  factory _$$UpdateSpeedItemImplCopyWith(_$UpdateSpeedItemImpl value,
          $Res Function(_$UpdateSpeedItemImpl) then) =
      __$$UpdateSpeedItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double speed});
}

/// @nodoc
class __$$UpdateSpeedItemImplCopyWithImpl<$Res>
    extends _$UpdateSpeedItemCopyWithImpl<$Res, _$UpdateSpeedItemImpl>
    implements _$$UpdateSpeedItemImplCopyWith<$Res> {
  __$$UpdateSpeedItemImplCopyWithImpl(
      _$UpdateSpeedItemImpl _value, $Res Function(_$UpdateSpeedItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSpeedItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_$UpdateSpeedItemImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateSpeedItemImpl extends _UpdateSpeedItem {
  const _$UpdateSpeedItemImpl({required this.speed}) : super._();

  @override
  final double speed;

  @override
  String toString() {
    return 'UpdateSpeedItem(speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSpeedItemImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of UpdateSpeedItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSpeedItemImplCopyWith<_$UpdateSpeedItemImpl> get copyWith =>
      __$$UpdateSpeedItemImplCopyWithImpl<_$UpdateSpeedItemImpl>(
          this, _$identity);
}

abstract class _UpdateSpeedItem extends UpdateSpeedItem {
  const factory _UpdateSpeedItem({required final double speed}) =
      _$UpdateSpeedItemImpl;
  const _UpdateSpeedItem._() : super._();

  @override
  double get speed;

  /// Create a copy of UpdateSpeedItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSpeedItemImplCopyWith<_$UpdateSpeedItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
