// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_wallet.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopUpWalletState {
  ApiResponse<Mutation$TopUpWallet> get topUpWalletState;

  /// Create a copy of TopUpWalletState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TopUpWalletStateCopyWith<TopUpWalletState> get copyWith =>
      _$TopUpWalletStateCopyWithImpl<TopUpWalletState>(
          this as TopUpWalletState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TopUpWalletState &&
            (identical(other.topUpWalletState, topUpWalletState) ||
                other.topUpWalletState == topUpWalletState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topUpWalletState);

  @override
  String toString() {
    return 'TopUpWalletState(topUpWalletState: $topUpWalletState)';
  }
}

/// @nodoc
abstract mixin class $TopUpWalletStateCopyWith<$Res> {
  factory $TopUpWalletStateCopyWith(
          TopUpWalletState value, $Res Function(TopUpWalletState) _then) =
      _$TopUpWalletStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Mutation$TopUpWallet> topUpWalletState});

  $ApiResponseCopyWith<Mutation$TopUpWallet, $Res> get topUpWalletState;
}

/// @nodoc
class _$TopUpWalletStateCopyWithImpl<$Res>
    implements $TopUpWalletStateCopyWith<$Res> {
  _$TopUpWalletStateCopyWithImpl(this._self, this._then);

  final TopUpWalletState _self;
  final $Res Function(TopUpWalletState) _then;

  /// Create a copy of TopUpWalletState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topUpWalletState = null,
  }) {
    return _then(_self.copyWith(
      topUpWalletState: null == topUpWalletState
          ? _self.topUpWalletState
          : topUpWalletState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$TopUpWallet>,
    ));
  }

  /// Create a copy of TopUpWalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$TopUpWallet, $Res> get topUpWalletState {
    return $ApiResponseCopyWith<Mutation$TopUpWallet, $Res>(
        _self.topUpWalletState, (value) {
      return _then(_self.copyWith(topUpWalletState: value));
    });
  }
}

/// @nodoc

class _TopUpWalletState implements TopUpWalletState {
  const _TopUpWalletState({this.topUpWalletState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Mutation$TopUpWallet> topUpWalletState;

  /// Create a copy of TopUpWalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TopUpWalletStateCopyWith<_TopUpWalletState> get copyWith =>
      __$TopUpWalletStateCopyWithImpl<_TopUpWalletState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TopUpWalletState &&
            (identical(other.topUpWalletState, topUpWalletState) ||
                other.topUpWalletState == topUpWalletState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topUpWalletState);

  @override
  String toString() {
    return 'TopUpWalletState(topUpWalletState: $topUpWalletState)';
  }
}

/// @nodoc
abstract mixin class _$TopUpWalletStateCopyWith<$Res>
    implements $TopUpWalletStateCopyWith<$Res> {
  factory _$TopUpWalletStateCopyWith(
          _TopUpWalletState value, $Res Function(_TopUpWalletState) _then) =
      __$TopUpWalletStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Mutation$TopUpWallet> topUpWalletState});

  @override
  $ApiResponseCopyWith<Mutation$TopUpWallet, $Res> get topUpWalletState;
}

/// @nodoc
class __$TopUpWalletStateCopyWithImpl<$Res>
    implements _$TopUpWalletStateCopyWith<$Res> {
  __$TopUpWalletStateCopyWithImpl(this._self, this._then);

  final _TopUpWalletState _self;
  final $Res Function(_TopUpWalletState) _then;

  /// Create a copy of TopUpWalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? topUpWalletState = null,
  }) {
    return _then(_TopUpWalletState(
      topUpWalletState: null == topUpWalletState
          ? _self.topUpWalletState
          : topUpWalletState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$TopUpWallet>,
    ));
  }

  /// Create a copy of TopUpWalletState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$TopUpWallet, $Res> get topUpWalletState {
    return $ApiResponseCopyWith<Mutation$TopUpWallet, $Res>(
        _self.topUpWalletState, (value) {
      return _then(_self.copyWith(topUpWalletState: value));
    });
  }
}

// dart format on
