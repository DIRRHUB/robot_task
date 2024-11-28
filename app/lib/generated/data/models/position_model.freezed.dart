// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../data/models/position_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PositionModel _$PositionModelFromJson(Map<String, dynamic> json) {
  return _PositionModel.fromJson(json);
}

/// @nodoc
mixin _$PositionModel {
  @JsonKey(name: 'x')
  double get x => throw _privateConstructorUsedError;
  @JsonKey(name: 'y')
  double get y => throw _privateConstructorUsedError;

  /// Serializes this PositionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionModelCopyWith<PositionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionModelCopyWith<$Res> {
  factory $PositionModelCopyWith(
          PositionModel value, $Res Function(PositionModel) then) =
      _$PositionModelCopyWithImpl<$Res, PositionModel>;
  @useResult
  $Res call({@JsonKey(name: 'x') double x, @JsonKey(name: 'y') double y});
}

/// @nodoc
class _$PositionModelCopyWithImpl<$Res, $Val extends PositionModel>
    implements $PositionModelCopyWith<$Res> {
  _$PositionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositionModelImplCopyWith<$Res>
    implements $PositionModelCopyWith<$Res> {
  factory _$$PositionModelImplCopyWith(
          _$PositionModelImpl value, $Res Function(_$PositionModelImpl) then) =
      __$$PositionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'x') double x, @JsonKey(name: 'y') double y});
}

/// @nodoc
class __$$PositionModelImplCopyWithImpl<$Res>
    extends _$PositionModelCopyWithImpl<$Res, _$PositionModelImpl>
    implements _$$PositionModelImplCopyWith<$Res> {
  __$$PositionModelImplCopyWithImpl(
      _$PositionModelImpl _value, $Res Function(_$PositionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$PositionModelImpl(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositionModelImpl implements _PositionModel {
  _$PositionModelImpl(
      {@JsonKey(name: 'x') required this.x,
      @JsonKey(name: 'y') required this.y});

  factory _$PositionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositionModelImplFromJson(json);

  @override
  @JsonKey(name: 'x')
  final double x;
  @override
  @JsonKey(name: 'y')
  final double y;

  @override
  String toString() {
    return 'PositionModel(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionModelImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      __$$PositionModelImplCopyWithImpl<_$PositionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PositionModelImplToJson(
      this,
    );
  }
}

abstract class _PositionModel implements PositionModel {
  factory _PositionModel(
      {@JsonKey(name: 'x') required final double x,
      @JsonKey(name: 'y') required final double y}) = _$PositionModelImpl;

  factory _PositionModel.fromJson(Map<String, dynamic> json) =
      _$PositionModelImpl.fromJson;

  @override
  @JsonKey(name: 'x')
  double get x;
  @override
  @JsonKey(name: 'y')
  double get y;

  /// Create a copy of PositionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionModelImplCopyWith<_$PositionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
