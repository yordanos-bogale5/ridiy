// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_drivers.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteDriversState {
  ApiResponse<Query$FavoriteDrivers> get favoriteDriversState;
  ApiResponse<Mutation$DeleteFavoriteDriver> get deleteFavoriteDriverState;

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteDriversStateCopyWith<FavoriteDriversState> get copyWith =>
      _$FavoriteDriversStateCopyWithImpl<FavoriteDriversState>(
          this as FavoriteDriversState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteDriversState &&
            (identical(other.favoriteDriversState, favoriteDriversState) ||
                other.favoriteDriversState == favoriteDriversState) &&
            (identical(other.deleteFavoriteDriverState,
                    deleteFavoriteDriverState) ||
                other.deleteFavoriteDriverState == deleteFavoriteDriverState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, favoriteDriversState, deleteFavoriteDriverState);

  @override
  String toString() {
    return 'FavoriteDriversState(favoriteDriversState: $favoriteDriversState, deleteFavoriteDriverState: $deleteFavoriteDriverState)';
  }
}

/// @nodoc
abstract mixin class $FavoriteDriversStateCopyWith<$Res> {
  factory $FavoriteDriversStateCopyWith(FavoriteDriversState value,
          $Res Function(FavoriteDriversState) _then) =
      _$FavoriteDriversStateCopyWithImpl;
  @useResult
  $Res call(
      {ApiResponse<Query$FavoriteDrivers> favoriteDriversState,
      ApiResponse<Mutation$DeleteFavoriteDriver> deleteFavoriteDriverState});

  $ApiResponseCopyWith<Query$FavoriteDrivers, $Res> get favoriteDriversState;
  $ApiResponseCopyWith<Mutation$DeleteFavoriteDriver, $Res>
      get deleteFavoriteDriverState;
}

/// @nodoc
class _$FavoriteDriversStateCopyWithImpl<$Res>
    implements $FavoriteDriversStateCopyWith<$Res> {
  _$FavoriteDriversStateCopyWithImpl(this._self, this._then);

  final FavoriteDriversState _self;
  final $Res Function(FavoriteDriversState) _then;

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favoriteDriversState = null,
    Object? deleteFavoriteDriverState = null,
  }) {
    return _then(_self.copyWith(
      favoriteDriversState: null == favoriteDriversState
          ? _self.favoriteDriversState
          : favoriteDriversState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$FavoriteDrivers>,
      deleteFavoriteDriverState: null == deleteFavoriteDriverState
          ? _self.deleteFavoriteDriverState
          : deleteFavoriteDriverState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$DeleteFavoriteDriver>,
    ));
  }

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$FavoriteDrivers, $Res> get favoriteDriversState {
    return $ApiResponseCopyWith<Query$FavoriteDrivers, $Res>(
        _self.favoriteDriversState, (value) {
      return _then(_self.copyWith(favoriteDriversState: value));
    });
  }

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$DeleteFavoriteDriver, $Res>
      get deleteFavoriteDriverState {
    return $ApiResponseCopyWith<Mutation$DeleteFavoriteDriver, $Res>(
        _self.deleteFavoriteDriverState, (value) {
      return _then(_self.copyWith(deleteFavoriteDriverState: value));
    });
  }
}

/// @nodoc

class _FavoriteDriversState implements FavoriteDriversState {
  const _FavoriteDriversState(
      {this.favoriteDriversState = const ApiResponseInitial(),
      this.deleteFavoriteDriverState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$FavoriteDrivers> favoriteDriversState;
  @override
  @JsonKey()
  final ApiResponse<Mutation$DeleteFavoriteDriver> deleteFavoriteDriverState;

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FavoriteDriversStateCopyWith<_FavoriteDriversState> get copyWith =>
      __$FavoriteDriversStateCopyWithImpl<_FavoriteDriversState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FavoriteDriversState &&
            (identical(other.favoriteDriversState, favoriteDriversState) ||
                other.favoriteDriversState == favoriteDriversState) &&
            (identical(other.deleteFavoriteDriverState,
                    deleteFavoriteDriverState) ||
                other.deleteFavoriteDriverState == deleteFavoriteDriverState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, favoriteDriversState, deleteFavoriteDriverState);

  @override
  String toString() {
    return 'FavoriteDriversState(favoriteDriversState: $favoriteDriversState, deleteFavoriteDriverState: $deleteFavoriteDriverState)';
  }
}

/// @nodoc
abstract mixin class _$FavoriteDriversStateCopyWith<$Res>
    implements $FavoriteDriversStateCopyWith<$Res> {
  factory _$FavoriteDriversStateCopyWith(_FavoriteDriversState value,
          $Res Function(_FavoriteDriversState) _then) =
      __$FavoriteDriversStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ApiResponse<Query$FavoriteDrivers> favoriteDriversState,
      ApiResponse<Mutation$DeleteFavoriteDriver> deleteFavoriteDriverState});

  @override
  $ApiResponseCopyWith<Query$FavoriteDrivers, $Res> get favoriteDriversState;
  @override
  $ApiResponseCopyWith<Mutation$DeleteFavoriteDriver, $Res>
      get deleteFavoriteDriverState;
}

/// @nodoc
class __$FavoriteDriversStateCopyWithImpl<$Res>
    implements _$FavoriteDriversStateCopyWith<$Res> {
  __$FavoriteDriversStateCopyWithImpl(this._self, this._then);

  final _FavoriteDriversState _self;
  final $Res Function(_FavoriteDriversState) _then;

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? favoriteDriversState = null,
    Object? deleteFavoriteDriverState = null,
  }) {
    return _then(_FavoriteDriversState(
      favoriteDriversState: null == favoriteDriversState
          ? _self.favoriteDriversState
          : favoriteDriversState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$FavoriteDrivers>,
      deleteFavoriteDriverState: null == deleteFavoriteDriverState
          ? _self.deleteFavoriteDriverState
          : deleteFavoriteDriverState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$DeleteFavoriteDriver>,
    ));
  }

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$FavoriteDrivers, $Res> get favoriteDriversState {
    return $ApiResponseCopyWith<Query$FavoriteDrivers, $Res>(
        _self.favoriteDriversState, (value) {
      return _then(_self.copyWith(favoriteDriversState: value));
    });
  }

  /// Create a copy of FavoriteDriversState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$DeleteFavoriteDriver, $Res>
      get deleteFavoriteDriverState {
    return $ApiResponseCopyWith<Mutation$DeleteFavoriteDriver, $Res>(
        _self.deleteFavoriteDriverState, (value) {
      return _then(_self.copyWith(deleteFavoriteDriverState: value));
    });
  }
}

// dart format on
