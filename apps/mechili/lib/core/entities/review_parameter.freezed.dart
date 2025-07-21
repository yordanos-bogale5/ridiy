// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewParameterEntity {
  String get id;
  String get name;
  bool get isGood;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReviewParameterEntityCopyWith<ReviewParameterEntity> get copyWith =>
      _$ReviewParameterEntityCopyWithImpl<ReviewParameterEntity>(
          this as ReviewParameterEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReviewParameterEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isGood, isGood) || other.isGood == isGood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isGood);

  @override
  String toString() {
    return 'ReviewParameterEntity(id: $id, name: $name, isGood: $isGood)';
  }
}

/// @nodoc
abstract mixin class $ReviewParameterEntityCopyWith<$Res> {
  factory $ReviewParameterEntityCopyWith(ReviewParameterEntity value,
          $Res Function(ReviewParameterEntity) _then) =
      _$ReviewParameterEntityCopyWithImpl;
  @useResult
  $Res call({String id, String name, bool isGood});
}

/// @nodoc
class _$ReviewParameterEntityCopyWithImpl<$Res>
    implements $ReviewParameterEntityCopyWith<$Res> {
  _$ReviewParameterEntityCopyWithImpl(this._self, this._then);

  final ReviewParameterEntity _self;
  final $Res Function(ReviewParameterEntity) _then;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isGood = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isGood: null == isGood
          ? _self.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _ReviewParameterEntity implements ReviewParameterEntity {
  const _ReviewParameterEntity(
      {required this.id, required this.name, required this.isGood});

  @override
  final String id;
  @override
  final String name;
  @override
  final bool isGood;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReviewParameterEntityCopyWith<_ReviewParameterEntity> get copyWith =>
      __$ReviewParameterEntityCopyWithImpl<_ReviewParameterEntity>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewParameterEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isGood, isGood) || other.isGood == isGood));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, isGood);

  @override
  String toString() {
    return 'ReviewParameterEntity(id: $id, name: $name, isGood: $isGood)';
  }
}

/// @nodoc
abstract mixin class _$ReviewParameterEntityCopyWith<$Res>
    implements $ReviewParameterEntityCopyWith<$Res> {
  factory _$ReviewParameterEntityCopyWith(_ReviewParameterEntity value,
          $Res Function(_ReviewParameterEntity) _then) =
      __$ReviewParameterEntityCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String name, bool isGood});
}

/// @nodoc
class __$ReviewParameterEntityCopyWithImpl<$Res>
    implements _$ReviewParameterEntityCopyWith<$Res> {
  __$ReviewParameterEntityCopyWithImpl(this._self, this._then);

  final _ReviewParameterEntity _self;
  final $Res Function(_ReviewParameterEntity) _then;

  /// Create a copy of ReviewParameterEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? isGood = null,
  }) {
    return _then(_ReviewParameterEntity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isGood: null == isGood
          ? _self.isGood
          : isGood // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
