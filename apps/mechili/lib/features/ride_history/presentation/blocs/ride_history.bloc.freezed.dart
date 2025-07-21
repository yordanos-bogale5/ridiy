// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_history.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideHistoryState {
  ApiResponse<Query$RideHistory> get rideHistoryState;

  /// Create a copy of RideHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideHistoryStateCopyWith<RideHistoryState> get copyWith =>
      _$RideHistoryStateCopyWithImpl<RideHistoryState>(
          this as RideHistoryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideHistoryState &&
            (identical(other.rideHistoryState, rideHistoryState) ||
                other.rideHistoryState == rideHistoryState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rideHistoryState);

  @override
  String toString() {
    return 'RideHistoryState(rideHistoryState: $rideHistoryState)';
  }
}

/// @nodoc
abstract mixin class $RideHistoryStateCopyWith<$Res> {
  factory $RideHistoryStateCopyWith(
          RideHistoryState value, $Res Function(RideHistoryState) _then) =
      _$RideHistoryStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$RideHistory> rideHistoryState});

  $ApiResponseCopyWith<Query$RideHistory, $Res> get rideHistoryState;
}

/// @nodoc
class _$RideHistoryStateCopyWithImpl<$Res>
    implements $RideHistoryStateCopyWith<$Res> {
  _$RideHistoryStateCopyWithImpl(this._self, this._then);

  final RideHistoryState _self;
  final $Res Function(RideHistoryState) _then;

  /// Create a copy of RideHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rideHistoryState = null,
  }) {
    return _then(_self.copyWith(
      rideHistoryState: null == rideHistoryState
          ? _self.rideHistoryState
          : rideHistoryState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$RideHistory>,
    ));
  }

  /// Create a copy of RideHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$RideHistory, $Res> get rideHistoryState {
    return $ApiResponseCopyWith<Query$RideHistory, $Res>(_self.rideHistoryState,
        (value) {
      return _then(_self.copyWith(rideHistoryState: value));
    });
  }
}

/// @nodoc

class _RideHistoryState implements RideHistoryState {
  const _RideHistoryState({this.rideHistoryState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$RideHistory> rideHistoryState;

  /// Create a copy of RideHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideHistoryStateCopyWith<_RideHistoryState> get copyWith =>
      __$RideHistoryStateCopyWithImpl<_RideHistoryState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideHistoryState &&
            (identical(other.rideHistoryState, rideHistoryState) ||
                other.rideHistoryState == rideHistoryState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rideHistoryState);

  @override
  String toString() {
    return 'RideHistoryState(rideHistoryState: $rideHistoryState)';
  }
}

/// @nodoc
abstract mixin class _$RideHistoryStateCopyWith<$Res>
    implements $RideHistoryStateCopyWith<$Res> {
  factory _$RideHistoryStateCopyWith(
          _RideHistoryState value, $Res Function(_RideHistoryState) _then) =
      __$RideHistoryStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$RideHistory> rideHistoryState});

  @override
  $ApiResponseCopyWith<Query$RideHistory, $Res> get rideHistoryState;
}

/// @nodoc
class __$RideHistoryStateCopyWithImpl<$Res>
    implements _$RideHistoryStateCopyWith<$Res> {
  __$RideHistoryStateCopyWithImpl(this._self, this._then);

  final _RideHistoryState _self;
  final $Res Function(_RideHistoryState) _then;

  /// Create a copy of RideHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rideHistoryState = null,
  }) {
    return _then(_RideHistoryState(
      rideHistoryState: null == rideHistoryState
          ? _self.rideHistoryState
          : rideHistoryState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$RideHistory>,
    ));
  }

  /// Create a copy of RideHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$RideHistory, $Res> get rideHistoryState {
    return $ApiResponseCopyWith<Query$RideHistory, $Res>(_self.rideHistoryState,
        (value) {
      return _then(_self.copyWith(rideHistoryState: value));
    });
  }
}

// dart format on
