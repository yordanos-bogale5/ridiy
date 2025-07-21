// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'redeem_gift_card.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RedeemGiftCardState {
  String? get code;
  ApiResponse<Mutation$RedeemGiftCard> get redeemGiftCardState;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RedeemGiftCardStateCopyWith<RedeemGiftCardState> get copyWith =>
      _$RedeemGiftCardStateCopyWithImpl<RedeemGiftCardState>(
          this as RedeemGiftCardState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RedeemGiftCardState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.redeemGiftCardState, redeemGiftCardState) ||
                other.redeemGiftCardState == redeemGiftCardState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, redeemGiftCardState);

  @override
  String toString() {
    return 'RedeemGiftCardState(code: $code, redeemGiftCardState: $redeemGiftCardState)';
  }
}

/// @nodoc
abstract mixin class $RedeemGiftCardStateCopyWith<$Res> {
  factory $RedeemGiftCardStateCopyWith(
          RedeemGiftCardState value, $Res Function(RedeemGiftCardState) _then) =
      _$RedeemGiftCardStateCopyWithImpl;
  @useResult
  $Res call(
      {String? code, ApiResponse<Mutation$RedeemGiftCard> redeemGiftCardState});

  $ApiResponseCopyWith<Mutation$RedeemGiftCard, $Res> get redeemGiftCardState;
}

/// @nodoc
class _$RedeemGiftCardStateCopyWithImpl<$Res>
    implements $RedeemGiftCardStateCopyWith<$Res> {
  _$RedeemGiftCardStateCopyWithImpl(this._self, this._then);

  final RedeemGiftCardState _self;
  final $Res Function(RedeemGiftCardState) _then;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? redeemGiftCardState = null,
  }) {
    return _then(_self.copyWith(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemGiftCardState: null == redeemGiftCardState
          ? _self.redeemGiftCardState
          : redeemGiftCardState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$RedeemGiftCard>,
    ));
  }

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$RedeemGiftCard, $Res> get redeemGiftCardState {
    return $ApiResponseCopyWith<Mutation$RedeemGiftCard, $Res>(
        _self.redeemGiftCardState, (value) {
      return _then(_self.copyWith(redeemGiftCardState: value));
    });
  }
}

/// @nodoc

class _RedeemGiftCardState implements RedeemGiftCardState {
  const _RedeemGiftCardState(
      {required this.code,
      this.redeemGiftCardState = const ApiResponseInitial()});

  @override
  final String? code;
  @override
  @JsonKey()
  final ApiResponse<Mutation$RedeemGiftCard> redeemGiftCardState;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RedeemGiftCardStateCopyWith<_RedeemGiftCardState> get copyWith =>
      __$RedeemGiftCardStateCopyWithImpl<_RedeemGiftCardState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RedeemGiftCardState &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.redeemGiftCardState, redeemGiftCardState) ||
                other.redeemGiftCardState == redeemGiftCardState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code, redeemGiftCardState);

  @override
  String toString() {
    return 'RedeemGiftCardState(code: $code, redeemGiftCardState: $redeemGiftCardState)';
  }
}

/// @nodoc
abstract mixin class _$RedeemGiftCardStateCopyWith<$Res>
    implements $RedeemGiftCardStateCopyWith<$Res> {
  factory _$RedeemGiftCardStateCopyWith(_RedeemGiftCardState value,
          $Res Function(_RedeemGiftCardState) _then) =
      __$RedeemGiftCardStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? code, ApiResponse<Mutation$RedeemGiftCard> redeemGiftCardState});

  @override
  $ApiResponseCopyWith<Mutation$RedeemGiftCard, $Res> get redeemGiftCardState;
}

/// @nodoc
class __$RedeemGiftCardStateCopyWithImpl<$Res>
    implements _$RedeemGiftCardStateCopyWith<$Res> {
  __$RedeemGiftCardStateCopyWithImpl(this._self, this._then);

  final _RedeemGiftCardState _self;
  final $Res Function(_RedeemGiftCardState) _then;

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = freezed,
    Object? redeemGiftCardState = null,
  }) {
    return _then(_RedeemGiftCardState(
      code: freezed == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      redeemGiftCardState: null == redeemGiftCardState
          ? _self.redeemGiftCardState
          : redeemGiftCardState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$RedeemGiftCard>,
    ));
  }

  /// Create a copy of RedeemGiftCardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$RedeemGiftCard, $Res> get redeemGiftCardState {
    return $ApiResponseCopyWith<Mutation$RedeemGiftCard, $Res>(
        _self.redeemGiftCardState, (value) {
      return _then(_self.copyWith(redeemGiftCardState: value));
    });
  }
}

// dart format on
