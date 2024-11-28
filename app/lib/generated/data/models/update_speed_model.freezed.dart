// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../data/models/update_speed_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateSpeedModel _$UpdateSpeedModelFromJson(Map<String, dynamic> json) {
  return _UpdateSpeedModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateSpeedModel {
  @JsonKey(name: 'speed')
  double get speed => throw _privateConstructorUsedError;

  /// Serializes this UpdateSpeedModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSpeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSpeedModelCopyWith<UpdateSpeedModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSpeedModelCopyWith<$Res> {
  factory $UpdateSpeedModelCopyWith(
          UpdateSpeedModel value, $Res Function(UpdateSpeedModel) then) =
      _$UpdateSpeedModelCopyWithImpl<$Res, UpdateSpeedModel>;
  @useResult
  $Res call({@JsonKey(name: 'speed') double speed});
}

/// @nodoc
class _$UpdateSpeedModelCopyWithImpl<$Res, $Val extends UpdateSpeedModel>
    implements $UpdateSpeedModelCopyWith<$Res> {
  _$UpdateSpeedModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSpeedModel
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
abstract class _$$UpdateSpeedModelImplCopyWith<$Res>
    implements $UpdateSpeedModelCopyWith<$Res> {
  factory _$$UpdateSpeedModelImplCopyWith(_$UpdateSpeedModelImpl value,
          $Res Function(_$UpdateSpeedModelImpl) then) =
      __$$UpdateSpeedModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'speed') double speed});
}

/// @nodoc
class __$$UpdateSpeedModelImplCopyWithImpl<$Res>
    extends _$UpdateSpeedModelCopyWithImpl<$Res, _$UpdateSpeedModelImpl>
    implements _$$UpdateSpeedModelImplCopyWith<$Res> {
  __$$UpdateSpeedModelImplCopyWithImpl(_$UpdateSpeedModelImpl _value,
      $Res Function(_$UpdateSpeedModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateSpeedModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? speed = null,
  }) {
    return _then(_$UpdateSpeedModelImpl(
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSpeedModelImpl implements _UpdateSpeedModel {
  _$UpdateSpeedModelImpl({@JsonKey(name: 'speed') required this.speed});

  factory _$UpdateSpeedModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateSpeedModelImplFromJson(json);

  @override
  @JsonKey(name: 'speed')
  final double speed;

  @override
  String toString() {
    return 'UpdateSpeedModel(speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSpeedModelImpl &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, speed);

  /// Create a copy of UpdateSpeedModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSpeedModelImplCopyWith<_$UpdateSpeedModelImpl> get copyWith =>
      __$$UpdateSpeedModelImplCopyWithImpl<_$UpdateSpeedModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSpeedModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateSpeedModel implements UpdateSpeedModel {
  factory _UpdateSpeedModel(
          {@JsonKey(name: 'speed') required final double speed}) =
      _$UpdateSpeedModelImpl;

  factory _UpdateSpeedModel.fromJson(Map<String, dynamic> json) =
      _$UpdateSpeedModelImpl.fromJson;

  @override
  @JsonKey(name: 'speed')
  double get speed;

  /// Create a copy of UpdateSpeedModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSpeedModelImplCopyWith<_$UpdateSpeedModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
