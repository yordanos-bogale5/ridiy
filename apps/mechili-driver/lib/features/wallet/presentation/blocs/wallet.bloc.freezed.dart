// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WalletState {
  ApiResponse<Query$Wallet> get walletState;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WalletStateCopyWith<WalletState> get copyWith =>
      _$WalletStateCopyWithImpl<WalletState>(this as WalletState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WalletState &&
            (identical(other.walletState, walletState) ||
                other.walletState == walletState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletState);

  @override
  String toString() {
    return 'WalletState(walletState: $walletState)';
  }
}

/// @nodoc
abstract mixin class $WalletStateCopyWith<$Res> {
  factory $WalletStateCopyWith(
          WalletState value, $Res Function(WalletState) _then) =
      _$WalletStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$Wallet> walletState});

  $ApiResponseCopyWith<Query$Wallet, $Res> get walletState;
}

/// @nodoc
class _$WalletStateCopyWithImpl<$Res> implements $WalletStateCopyWith<$Res> {
  _$WalletStateCopyWithImpl(this._self, this._then);

  final WalletState _self;
  final $Res Function(WalletState) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletState = null,
  }) {
    return _then(_self.copyWith(
      walletState: null == walletState
          ? _self.walletState
          : walletState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$Wallet>,
    ));
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$Wallet, $Res> get walletState {
    return $ApiResponseCopyWith<Query$Wallet, $Res>(_self.walletState, (value) {
      return _then(_self.copyWith(walletState: value));
    });
  }
}

/// @nodoc

class _WalletState implements WalletState {
  const _WalletState({this.walletState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$Wallet> walletState;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WalletStateCopyWith<_WalletState> get copyWith =>
      __$WalletStateCopyWithImpl<_WalletState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WalletState &&
            (identical(other.walletState, walletState) ||
                other.walletState == walletState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletState);

  @override
  String toString() {
    return 'WalletState(walletState: $walletState)';
  }
}

/// @nodoc
abstract mixin class _$WalletStateCopyWith<$Res>
    implements $WalletStateCopyWith<$Res> {
  factory _$WalletStateCopyWith(
          _WalletState value, $Res Function(_WalletState) _then) =
      __$WalletStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$Wallet> walletState});

  @override
  $ApiResponseCopyWith<Query$Wallet, $Res> get walletState;
}

/// @nodoc
class __$WalletStateCopyWithImpl<$Res> implements _$WalletStateCopyWith<$Res> {
  __$WalletStateCopyWithImpl(this._self, this._then);

  final _WalletState _self;
  final $Res Function(_WalletState) _then;

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? walletState = null,
  }) {
    return _then(_WalletState(
      walletState: null == walletState
          ? _self.walletState
          : walletState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$Wallet>,
    ));
  }

  /// Create a copy of WalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$Wallet, $Res> get walletState {
    return $ApiResponseCopyWith<Query$Wallet, $Res>(_self.walletState, (value) {
      return _then(_self.copyWith(walletState: value));
    });
  }
}

// dart format on
