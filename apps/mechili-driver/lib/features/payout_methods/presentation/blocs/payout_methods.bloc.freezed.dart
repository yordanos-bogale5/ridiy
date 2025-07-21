// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_methods.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayoutMethodsState {
  ApiResponse<Query$SupportedPayoutMethods> get supportedPayoutMethodsState;

  /// Create a copy of PayoutMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayoutMethodsStateCopyWith<PayoutMethodsState> get copyWith =>
      _$PayoutMethodsStateCopyWithImpl<PayoutMethodsState>(
          this as PayoutMethodsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayoutMethodsState &&
            (identical(other.supportedPayoutMethodsState,
                    supportedPayoutMethodsState) ||
                other.supportedPayoutMethodsState ==
                    supportedPayoutMethodsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, supportedPayoutMethodsState);

  @override
  String toString() {
    return 'PayoutMethodsState(supportedPayoutMethodsState: $supportedPayoutMethodsState)';
  }
}

/// @nodoc
abstract mixin class $PayoutMethodsStateCopyWith<$Res> {
  factory $PayoutMethodsStateCopyWith(
          PayoutMethodsState value, $Res Function(PayoutMethodsState) _then) =
      _$PayoutMethodsStateCopyWithImpl;
  @useResult
  $Res call(
      {ApiResponse<Query$SupportedPayoutMethods> supportedPayoutMethodsState});

  $ApiResponseCopyWith<Query$SupportedPayoutMethods, $Res>
      get supportedPayoutMethodsState;
}

/// @nodoc
class _$PayoutMethodsStateCopyWithImpl<$Res>
    implements $PayoutMethodsStateCopyWith<$Res> {
  _$PayoutMethodsStateCopyWithImpl(this._self, this._then);

  final PayoutMethodsState _self;
  final $Res Function(PayoutMethodsState) _then;

  /// Create a copy of PayoutMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? supportedPayoutMethodsState = null,
  }) {
    return _then(_self.copyWith(
      supportedPayoutMethodsState: null == supportedPayoutMethodsState
          ? _self.supportedPayoutMethodsState
          : supportedPayoutMethodsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$SupportedPayoutMethods>,
    ));
  }

  /// Create a copy of PayoutMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$SupportedPayoutMethods, $Res>
      get supportedPayoutMethodsState {
    return $ApiResponseCopyWith<Query$SupportedPayoutMethods, $Res>(
        _self.supportedPayoutMethodsState, (value) {
      return _then(_self.copyWith(supportedPayoutMethodsState: value));
    });
  }
}

/// @nodoc

class _PayoutMethodsState implements PayoutMethodsState {
  const _PayoutMethodsState(
      {this.supportedPayoutMethodsState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$SupportedPayoutMethods> supportedPayoutMethodsState;

  /// Create a copy of PayoutMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayoutMethodsStateCopyWith<_PayoutMethodsState> get copyWith =>
      __$PayoutMethodsStateCopyWithImpl<_PayoutMethodsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayoutMethodsState &&
            (identical(other.supportedPayoutMethodsState,
                    supportedPayoutMethodsState) ||
                other.supportedPayoutMethodsState ==
                    supportedPayoutMethodsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, supportedPayoutMethodsState);

  @override
  String toString() {
    return 'PayoutMethodsState(supportedPayoutMethodsState: $supportedPayoutMethodsState)';
  }
}

/// @nodoc
abstract mixin class _$PayoutMethodsStateCopyWith<$Res>
    implements $PayoutMethodsStateCopyWith<$Res> {
  factory _$PayoutMethodsStateCopyWith(
          _PayoutMethodsState value, $Res Function(_PayoutMethodsState) _then) =
      __$PayoutMethodsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ApiResponse<Query$SupportedPayoutMethods> supportedPayoutMethodsState});

  @override
  $ApiResponseCopyWith<Query$SupportedPayoutMethods, $Res>
      get supportedPayoutMethodsState;
}

/// @nodoc
class __$PayoutMethodsStateCopyWithImpl<$Res>
    implements _$PayoutMethodsStateCopyWith<$Res> {
  __$PayoutMethodsStateCopyWithImpl(this._self, this._then);

  final _PayoutMethodsState _self;
  final $Res Function(_PayoutMethodsState) _then;

  /// Create a copy of PayoutMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? supportedPayoutMethodsState = null,
  }) {
    return _then(_PayoutMethodsState(
      supportedPayoutMethodsState: null == supportedPayoutMethodsState
          ? _self.supportedPayoutMethodsState
          : supportedPayoutMethodsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$SupportedPayoutMethods>,
    ));
  }

  /// Create a copy of PayoutMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$SupportedPayoutMethods, $Res>
      get supportedPayoutMethodsState {
    return $ApiResponseCopyWith<Query$SupportedPayoutMethods, $Res>(
        _self.supportedPayoutMethodsState, (value) {
      return _then(_self.copyWith(supportedPayoutMethodsState: value));
    });
  }
}

// dart format on
