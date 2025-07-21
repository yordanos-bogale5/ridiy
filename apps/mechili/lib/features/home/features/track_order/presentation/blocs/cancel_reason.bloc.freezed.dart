// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cancel_reason.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CancelReasonState {
  ApiResponse<Query$CancelReasons> get cancelOrderState;

  /// Create a copy of CancelReasonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CancelReasonStateCopyWith<CancelReasonState> get copyWith =>
      _$CancelReasonStateCopyWithImpl<CancelReasonState>(
          this as CancelReasonState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelReasonState &&
            (identical(other.cancelOrderState, cancelOrderState) ||
                other.cancelOrderState == cancelOrderState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cancelOrderState);

  @override
  String toString() {
    return 'CancelReasonState(cancelOrderState: $cancelOrderState)';
  }
}

/// @nodoc
abstract mixin class $CancelReasonStateCopyWith<$Res> {
  factory $CancelReasonStateCopyWith(
          CancelReasonState value, $Res Function(CancelReasonState) _then) =
      _$CancelReasonStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$CancelReasons> cancelOrderState});

  $ApiResponseCopyWith<Query$CancelReasons, $Res> get cancelOrderState;
}

/// @nodoc
class _$CancelReasonStateCopyWithImpl<$Res>
    implements $CancelReasonStateCopyWith<$Res> {
  _$CancelReasonStateCopyWithImpl(this._self, this._then);

  final CancelReasonState _self;
  final $Res Function(CancelReasonState) _then;

  /// Create a copy of CancelReasonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cancelOrderState = null,
  }) {
    return _then(_self.copyWith(
      cancelOrderState: null == cancelOrderState
          ? _self.cancelOrderState
          : cancelOrderState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$CancelReasons>,
    ));
  }

  /// Create a copy of CancelReasonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$CancelReasons, $Res> get cancelOrderState {
    return $ApiResponseCopyWith<Query$CancelReasons, $Res>(
        _self.cancelOrderState, (value) {
      return _then(_self.copyWith(cancelOrderState: value));
    });
  }
}

/// @nodoc

class _CancelReasonState implements CancelReasonState {
  const _CancelReasonState(
      {this.cancelOrderState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$CancelReasons> cancelOrderState;

  /// Create a copy of CancelReasonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CancelReasonStateCopyWith<_CancelReasonState> get copyWith =>
      __$CancelReasonStateCopyWithImpl<_CancelReasonState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CancelReasonState &&
            (identical(other.cancelOrderState, cancelOrderState) ||
                other.cancelOrderState == cancelOrderState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cancelOrderState);

  @override
  String toString() {
    return 'CancelReasonState(cancelOrderState: $cancelOrderState)';
  }
}

/// @nodoc
abstract mixin class _$CancelReasonStateCopyWith<$Res>
    implements $CancelReasonStateCopyWith<$Res> {
  factory _$CancelReasonStateCopyWith(
          _CancelReasonState value, $Res Function(_CancelReasonState) _then) =
      __$CancelReasonStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$CancelReasons> cancelOrderState});

  @override
  $ApiResponseCopyWith<Query$CancelReasons, $Res> get cancelOrderState;
}

/// @nodoc
class __$CancelReasonStateCopyWithImpl<$Res>
    implements _$CancelReasonStateCopyWith<$Res> {
  __$CancelReasonStateCopyWithImpl(this._self, this._then);

  final _CancelReasonState _self;
  final $Res Function(_CancelReasonState) _then;

  /// Create a copy of CancelReasonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cancelOrderState = null,
  }) {
    return _then(_CancelReasonState(
      cancelOrderState: null == cancelOrderState
          ? _self.cancelOrderState
          : cancelOrderState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$CancelReasons>,
    ));
  }

  /// Create a copy of CancelReasonState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$CancelReasons, $Res> get cancelOrderState {
    return $ApiResponseCopyWith<Query$CancelReasons, $Res>(
        _self.cancelOrderState, (value) {
      return _then(_self.copyWith(cancelOrderState: value));
    });
  }
}

// dart format on
