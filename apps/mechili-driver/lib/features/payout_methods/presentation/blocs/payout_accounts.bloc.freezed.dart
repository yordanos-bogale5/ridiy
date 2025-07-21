// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_accounts.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayoutAccountsState {
  ApiResponse<Query$PayoutAccounts> get payoutAccountsState;
  ApiResponse<Mutation$UpdatePayoutMethodDefaultStatus>
      get updatePayoutMethodDefaultStatusState;

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayoutAccountsStateCopyWith<PayoutAccountsState> get copyWith =>
      _$PayoutAccountsStateCopyWithImpl<PayoutAccountsState>(
          this as PayoutAccountsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayoutAccountsState &&
            (identical(other.payoutAccountsState, payoutAccountsState) ||
                other.payoutAccountsState == payoutAccountsState) &&
            (identical(other.updatePayoutMethodDefaultStatusState,
                    updatePayoutMethodDefaultStatusState) ||
                other.updatePayoutMethodDefaultStatusState ==
                    updatePayoutMethodDefaultStatusState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, payoutAccountsState, updatePayoutMethodDefaultStatusState);

  @override
  String toString() {
    return 'PayoutAccountsState(payoutAccountsState: $payoutAccountsState, updatePayoutMethodDefaultStatusState: $updatePayoutMethodDefaultStatusState)';
  }
}

/// @nodoc
abstract mixin class $PayoutAccountsStateCopyWith<$Res> {
  factory $PayoutAccountsStateCopyWith(
          PayoutAccountsState value, $Res Function(PayoutAccountsState) _then) =
      _$PayoutAccountsStateCopyWithImpl;
  @useResult
  $Res call(
      {ApiResponse<Query$PayoutAccounts> payoutAccountsState,
      ApiResponse<Mutation$UpdatePayoutMethodDefaultStatus>
          updatePayoutMethodDefaultStatusState});

  $ApiResponseCopyWith<Query$PayoutAccounts, $Res> get payoutAccountsState;
  $ApiResponseCopyWith<Mutation$UpdatePayoutMethodDefaultStatus, $Res>
      get updatePayoutMethodDefaultStatusState;
}

/// @nodoc
class _$PayoutAccountsStateCopyWithImpl<$Res>
    implements $PayoutAccountsStateCopyWith<$Res> {
  _$PayoutAccountsStateCopyWithImpl(this._self, this._then);

  final PayoutAccountsState _self;
  final $Res Function(PayoutAccountsState) _then;

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payoutAccountsState = null,
    Object? updatePayoutMethodDefaultStatusState = null,
  }) {
    return _then(_self.copyWith(
      payoutAccountsState: null == payoutAccountsState
          ? _self.payoutAccountsState
          : payoutAccountsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$PayoutAccounts>,
      updatePayoutMethodDefaultStatusState: null ==
              updatePayoutMethodDefaultStatusState
          ? _self.updatePayoutMethodDefaultStatusState
          : updatePayoutMethodDefaultStatusState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$UpdatePayoutMethodDefaultStatus>,
    ));
  }

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$PayoutAccounts, $Res> get payoutAccountsState {
    return $ApiResponseCopyWith<Query$PayoutAccounts, $Res>(
        _self.payoutAccountsState, (value) {
      return _then(_self.copyWith(payoutAccountsState: value));
    });
  }

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$UpdatePayoutMethodDefaultStatus, $Res>
      get updatePayoutMethodDefaultStatusState {
    return $ApiResponseCopyWith<Mutation$UpdatePayoutMethodDefaultStatus, $Res>(
        _self.updatePayoutMethodDefaultStatusState, (value) {
      return _then(_self.copyWith(updatePayoutMethodDefaultStatusState: value));
    });
  }
}

/// @nodoc

class _PayoutAccountsState implements PayoutAccountsState {
  const _PayoutAccountsState(
      {this.payoutAccountsState = const ApiResponseInitial(),
      this.updatePayoutMethodDefaultStatusState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$PayoutAccounts> payoutAccountsState;
  @override
  @JsonKey()
  final ApiResponse<Mutation$UpdatePayoutMethodDefaultStatus>
      updatePayoutMethodDefaultStatusState;

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayoutAccountsStateCopyWith<_PayoutAccountsState> get copyWith =>
      __$PayoutAccountsStateCopyWithImpl<_PayoutAccountsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayoutAccountsState &&
            (identical(other.payoutAccountsState, payoutAccountsState) ||
                other.payoutAccountsState == payoutAccountsState) &&
            (identical(other.updatePayoutMethodDefaultStatusState,
                    updatePayoutMethodDefaultStatusState) ||
                other.updatePayoutMethodDefaultStatusState ==
                    updatePayoutMethodDefaultStatusState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, payoutAccountsState, updatePayoutMethodDefaultStatusState);

  @override
  String toString() {
    return 'PayoutAccountsState(payoutAccountsState: $payoutAccountsState, updatePayoutMethodDefaultStatusState: $updatePayoutMethodDefaultStatusState)';
  }
}

/// @nodoc
abstract mixin class _$PayoutAccountsStateCopyWith<$Res>
    implements $PayoutAccountsStateCopyWith<$Res> {
  factory _$PayoutAccountsStateCopyWith(_PayoutAccountsState value,
          $Res Function(_PayoutAccountsState) _then) =
      __$PayoutAccountsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ApiResponse<Query$PayoutAccounts> payoutAccountsState,
      ApiResponse<Mutation$UpdatePayoutMethodDefaultStatus>
          updatePayoutMethodDefaultStatusState});

  @override
  $ApiResponseCopyWith<Query$PayoutAccounts, $Res> get payoutAccountsState;
  @override
  $ApiResponseCopyWith<Mutation$UpdatePayoutMethodDefaultStatus, $Res>
      get updatePayoutMethodDefaultStatusState;
}

/// @nodoc
class __$PayoutAccountsStateCopyWithImpl<$Res>
    implements _$PayoutAccountsStateCopyWith<$Res> {
  __$PayoutAccountsStateCopyWithImpl(this._self, this._then);

  final _PayoutAccountsState _self;
  final $Res Function(_PayoutAccountsState) _then;

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? payoutAccountsState = null,
    Object? updatePayoutMethodDefaultStatusState = null,
  }) {
    return _then(_PayoutAccountsState(
      payoutAccountsState: null == payoutAccountsState
          ? _self.payoutAccountsState
          : payoutAccountsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$PayoutAccounts>,
      updatePayoutMethodDefaultStatusState: null ==
              updatePayoutMethodDefaultStatusState
          ? _self.updatePayoutMethodDefaultStatusState
          : updatePayoutMethodDefaultStatusState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$UpdatePayoutMethodDefaultStatus>,
    ));
  }

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$PayoutAccounts, $Res> get payoutAccountsState {
    return $ApiResponseCopyWith<Query$PayoutAccounts, $Res>(
        _self.payoutAccountsState, (value) {
      return _then(_self.copyWith(payoutAccountsState: value));
    });
  }

  /// Create a copy of PayoutAccountsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$UpdatePayoutMethodDefaultStatus, $Res>
      get updatePayoutMethodDefaultStatusState {
    return $ApiResponseCopyWith<Mutation$UpdatePayoutMethodDefaultStatus, $Res>(
        _self.updatePayoutMethodDefaultStatusState, (value) {
      return _then(_self.copyWith(updatePayoutMethodDefaultStatusState: value));
    });
  }
}

// dart format on
