// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../domain/entities/position_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PositionItem {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;

  /// Create a copy of PositionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositionItemCopyWith<PositionItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionItemCopyWith<$Res> {
  factory $PositionItemCopyWith(
          PositionItem value, $Res Function(PositionItem) then) =
      _$PositionItemCopyWithImpl<$Res, PositionItem>;
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class _$PositionItemCopyWithImpl<$Res, $Val extends PositionItem>
    implements $PositionItemCopyWith<$Res> {
  _$PositionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositionItem
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
abstract class _$$PositionItemImplCopyWith<$Res>
    implements $PositionItemCopyWith<$Res> {
  factory _$$PositionItemImplCopyWith(
          _$PositionItemImpl value, $Res Function(_$PositionItemImpl) then) =
      __$$PositionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y});
}

/// @nodoc
class __$$PositionItemImplCopyWithImpl<$Res>
    extends _$PositionItemCopyWithImpl<$Res, _$PositionItemImpl>
    implements _$$PositionItemImplCopyWith<$Res> {
  __$$PositionItemImplCopyWithImpl(
      _$PositionItemImpl _value, $Res Function(_$PositionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
  }) {
    return _then(_$PositionItemImpl(
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

class _$PositionItemImpl extends _PositionItem {
  const _$PositionItemImpl({required this.x, required this.y}) : super._();

  @override
  final double x;
  @override
  final double y;

  @override
  String toString() {
    return 'PositionItem(x: $x, y: $y)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionItemImpl &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  /// Create a copy of PositionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionItemImplCopyWith<_$PositionItemImpl> get copyWith =>
      __$$PositionItemImplCopyWithImpl<_$PositionItemImpl>(this, _$identity);
}

abstract class _PositionItem extends PositionItem {
  const factory _PositionItem(
      {required final double x, required final double y}) = _$PositionItemImpl;
  const _PositionItem._() : super._();

  @override
  double get x;
  @override
  double get y;

  /// Create a copy of PositionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositionItemImplCopyWith<_$PositionItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
