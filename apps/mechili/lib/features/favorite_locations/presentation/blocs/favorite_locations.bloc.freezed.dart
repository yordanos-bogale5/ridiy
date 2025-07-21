// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_locations.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteLocationsState {
  ApiResponse<Query$FavoriteLocations> get favoriteLocationsState;

  /// Create a copy of FavoriteLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteLocationsStateCopyWith<FavoriteLocationsState> get copyWith =>
      _$FavoriteLocationsStateCopyWithImpl<FavoriteLocationsState>(
          this as FavoriteLocationsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteLocationsState &&
            (identical(other.favoriteLocationsState, favoriteLocationsState) ||
                other.favoriteLocationsState == favoriteLocationsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteLocationsState);

  @override
  String toString() {
    return 'FavoriteLocationsState(favoriteLocationsState: $favoriteLocationsState)';
  }
}

/// @nodoc
abstract mixin class $FavoriteLocationsStateCopyWith<$Res> {
  factory $FavoriteLocationsStateCopyWith(FavoriteLocationsState value,
          $Res Function(FavoriteLocationsState) _then) =
      _$FavoriteLocationsStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$FavoriteLocations> favoriteLocationsState});

  $ApiResponseCopyWith<Query$FavoriteLocations, $Res>
      get favoriteLocationsState;
}

/// @nodoc
class _$FavoriteLocationsStateCopyWithImpl<$Res>
    implements $FavoriteLocationsStateCopyWith<$Res> {
  _$FavoriteLocationsStateCopyWithImpl(this._self, this._then);

  final FavoriteLocationsState _self;
  final $Res Function(FavoriteLocationsState) _then;

  /// Create a copy of FavoriteLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteLocationsState = null,
  }) {
    return _then(_self.copyWith(
      favoriteLocationsState: null == favoriteLocationsState
          ? _self.favoriteLocationsState
          : favoriteLocationsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$FavoriteLocations>,
    ));
  }

  /// Create a copy of FavoriteLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$FavoriteLocations, $Res>
      get favoriteLocationsState {
    return $ApiResponseCopyWith<Query$FavoriteLocations, $Res>(
        _self.favoriteLocationsState, (value) {
      return _then(_self.copyWith(favoriteLocationsState: value));
    });
  }
}

/// @nodoc

class _FavoriteLocationsState implements FavoriteLocationsState {
  const _FavoriteLocationsState(
      {this.favoriteLocationsState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$FavoriteLocations> favoriteLocationsState;

  /// Create a copy of FavoriteLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoriteLocationsStateCopyWith<_FavoriteLocationsState> get copyWith =>
      __$FavoriteLocationsStateCopyWithImpl<_FavoriteLocationsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteLocationsState &&
            (identical(other.favoriteLocationsState, favoriteLocationsState) ||
                other.favoriteLocationsState == favoriteLocationsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, favoriteLocationsState);

  @override
  String toString() {
    return 'FavoriteLocationsState(favoriteLocationsState: $favoriteLocationsState)';
  }
}

/// @nodoc
abstract mixin class _$FavoriteLocationsStateCopyWith<$Res>
    implements $FavoriteLocationsStateCopyWith<$Res> {
  factory _$FavoriteLocationsStateCopyWith(_FavoriteLocationsState value,
          $Res Function(_FavoriteLocationsState) _then) =
      __$FavoriteLocationsStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$FavoriteLocations> favoriteLocationsState});

  @override
  $ApiResponseCopyWith<Query$FavoriteLocations, $Res>
      get favoriteLocationsState;
}

/// @nodoc
class __$FavoriteLocationsStateCopyWithImpl<$Res>
    implements _$FavoriteLocationsStateCopyWith<$Res> {
  __$FavoriteLocationsStateCopyWithImpl(this._self, this._then);

  final _FavoriteLocationsState _self;
  final $Res Function(_FavoriteLocationsState) _then;

  /// Create a copy of FavoriteLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? favoriteLocationsState = null,
  }) {
    return _then(_FavoriteLocationsState(
      favoriteLocationsState: null == favoriteLocationsState
          ? _self.favoriteLocationsState
          : favoriteLocationsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$FavoriteLocations>,
    ));
  }

  /// Create a copy of FavoriteLocationsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$FavoriteLocations, $Res>
      get favoriteLocationsState {
    return $ApiResponseCopyWith<Query$FavoriteLocations, $Res>(
        _self.favoriteLocationsState, (value) {
      return _then(_self.copyWith(favoriteLocationsState: value));
    });
  }
}

// dart format on
