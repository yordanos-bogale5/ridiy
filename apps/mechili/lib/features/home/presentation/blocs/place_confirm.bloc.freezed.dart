// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_confirm.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceConfirmState {
  ApiResponse<Place> get place;

  /// Create a copy of PlaceConfirmState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceConfirmStateCopyWith<PlaceConfirmState> get copyWith =>
      _$PlaceConfirmStateCopyWithImpl<PlaceConfirmState>(
          this as PlaceConfirmState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceConfirmState &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @override
  String toString() {
    return 'PlaceConfirmState(place: $place)';
  }
}

/// @nodoc
abstract mixin class $PlaceConfirmStateCopyWith<$Res> {
  factory $PlaceConfirmStateCopyWith(
          PlaceConfirmState value, $Res Function(PlaceConfirmState) _then) =
      _$PlaceConfirmStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Place> place});

  $ApiResponseCopyWith<Place, $Res> get place;
}

/// @nodoc
class _$PlaceConfirmStateCopyWithImpl<$Res>
    implements $PlaceConfirmStateCopyWith<$Res> {
  _$PlaceConfirmStateCopyWithImpl(this._self, this._then);

  final PlaceConfirmState _self;
  final $Res Function(PlaceConfirmState) _then;

  /// Create a copy of PlaceConfirmState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
  }) {
    return _then(_self.copyWith(
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Place>,
    ));
  }

  /// Create a copy of PlaceConfirmState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Place, $Res> get place {
    return $ApiResponseCopyWith<Place, $Res>(_self.place, (value) {
      return _then(_self.copyWith(place: value));
    });
  }
}

/// @nodoc

class _PlaceConfirmState implements PlaceConfirmState {
  const _PlaceConfirmState({this.place = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Place> place;

  /// Create a copy of PlaceConfirmState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceConfirmStateCopyWith<_PlaceConfirmState> get copyWith =>
      __$PlaceConfirmStateCopyWithImpl<_PlaceConfirmState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceConfirmState &&
            (identical(other.place, place) || other.place == place));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place);

  @override
  String toString() {
    return 'PlaceConfirmState(place: $place)';
  }
}

/// @nodoc
abstract mixin class _$PlaceConfirmStateCopyWith<$Res>
    implements $PlaceConfirmStateCopyWith<$Res> {
  factory _$PlaceConfirmStateCopyWith(
          _PlaceConfirmState value, $Res Function(_PlaceConfirmState) _then) =
      __$PlaceConfirmStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Place> place});

  @override
  $ApiResponseCopyWith<Place, $Res> get place;
}

/// @nodoc
class __$PlaceConfirmStateCopyWithImpl<$Res>
    implements _$PlaceConfirmStateCopyWith<$Res> {
  __$PlaceConfirmStateCopyWithImpl(this._self, this._then);

  final _PlaceConfirmState _self;
  final $Res Function(_PlaceConfirmState) _then;

  /// Create a copy of PlaceConfirmState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? place = null,
  }) {
    return _then(_PlaceConfirmState(
      place: null == place
          ? _self.place
          : place // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Place>,
    ));
  }

  /// Create a copy of PlaceConfirmState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Place, $Res> get place {
    return $ApiResponseCopyWith<Place, $Res>(_self.place, (value) {
      return _then(_self.copyWith(place: value));
    });
  }
}

// dart format on
