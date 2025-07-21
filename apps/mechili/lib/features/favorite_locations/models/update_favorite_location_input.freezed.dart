// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_favorite_location_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UpdateFavoriteLocationInput {
  String get name;
  Enum$RiderAddressType get type;
  Place get place;
  (CountryCode countryCode, String? number) get phone;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UpdateFavoriteLocationInputCopyWith<UpdateFavoriteLocationInput>
      get copyWith => _$UpdateFavoriteLocationInputCopyWithImpl<
              UpdateFavoriteLocationInput>(
          this as UpdateFavoriteLocationInput, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateFavoriteLocationInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, place, phone);

  @override
  String toString() {
    return 'UpdateFavoriteLocationInput(name: $name, type: $type, place: $place, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class $UpdateFavoriteLocationInputCopyWith<$Res> {
  factory $UpdateFavoriteLocationInputCopyWith(
          UpdateFavoriteLocationInput value,
          $Res Function(UpdateFavoriteLocationInput) _then) =
      _$UpdateFavoriteLocationInputCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Enum$RiderAddressType type,
      Place place,
      (CountryCode countryCode, String? number) phone});
}

/// @nodoc
class _$UpdateFavoriteLocationInputCopyWithImpl<$Res>
    implements $UpdateFavoriteLocationInputCopyWith<$Res> {
  _$UpdateFavoriteLocationInputCopyWithImpl(this._self, this._then);

  final UpdateFavoriteLocationInput _self;
  final $Res Function(UpdateFavoriteLocationInput) _then;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? place = null,
    Object? phone = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as Enum$RiderAddressType,
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as (CountryCode countryCode, String? number),
    ));
  }
}

/// @nodoc

class _UpdateFavoriteLocationInput extends UpdateFavoriteLocationInput {
  const _UpdateFavoriteLocationInput(
      {required this.name,
      required this.type,
      required this.place,
      required this.phone})
      : super._();

  @override
  final String name;
  @override
  final Enum$RiderAddressType type;
  @override
  final Place place;
  @override
  final (CountryCode countryCode, String? number) phone;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UpdateFavoriteLocationInputCopyWith<_UpdateFavoriteLocationInput>
      get copyWith => __$UpdateFavoriteLocationInputCopyWithImpl<
          _UpdateFavoriteLocationInput>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateFavoriteLocationInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, type, place, phone);

  @override
  String toString() {
    return 'UpdateFavoriteLocationInput(name: $name, type: $type, place: $place, phone: $phone)';
  }
}

/// @nodoc
abstract mixin class _$UpdateFavoriteLocationInputCopyWith<$Res>
    implements $UpdateFavoriteLocationInputCopyWith<$Res> {
  factory _$UpdateFavoriteLocationInputCopyWith(
          _UpdateFavoriteLocationInput value,
          $Res Function(_UpdateFavoriteLocationInput) _then) =
      __$UpdateFavoriteLocationInputCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Enum$RiderAddressType type,
      Place place,
      (CountryCode countryCode, String? number) phone});
}

/// @nodoc
class __$UpdateFavoriteLocationInputCopyWithImpl<$Res>
    implements _$UpdateFavoriteLocationInputCopyWith<$Res> {
  __$UpdateFavoriteLocationInputCopyWithImpl(this._self, this._then);

  final _UpdateFavoriteLocationInput _self;
  final $Res Function(_UpdateFavoriteLocationInput) _then;

  /// Create a copy of UpdateFavoriteLocationInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? place = null,
    Object? phone = null,
  }) {
    return _then(_UpdateFavoriteLocationInput(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as Enum$RiderAddressType,
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as Place,
      phone: null == phone
          ? _self.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as (CountryCode countryCode, String? number),
    ));
  }
}

// dart format on
