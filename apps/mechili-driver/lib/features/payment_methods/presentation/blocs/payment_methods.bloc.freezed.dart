// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_methods.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentMethodsState {
  ApiResponse<Query$SavedPaymentMethods> get savedPaymentMethodsState;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodsStateCopyWith<PaymentMethodsState> get copyWith =>
      _$PaymentMethodsStateCopyWithImpl<PaymentMethodsState>(
          this as PaymentMethodsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodsState &&
            (identical(
                    other.savedPaymentMethodsState, savedPaymentMethodsState) ||
                other.savedPaymentMethodsState == savedPaymentMethodsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedPaymentMethodsState);

  @override
  String toString() {
    return 'PaymentMethodsState(savedPaymentMethodsState: $savedPaymentMethodsState)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodsStateCopyWith<$Res> {
  factory $PaymentMethodsStateCopyWith(
          PaymentMethodsState value, $Res Function(PaymentMethodsState) _then) =
      _$PaymentMethodsStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$SavedPaymentMethods> savedPaymentMethodsState});

  $ApiResponseCopyWith<Query$SavedPaymentMethods, $Res>
      get savedPaymentMethodsState;
}

/// @nodoc
class _$PaymentMethodsStateCopyWithImpl<$Res>
    implements $PaymentMethodsStateCopyWith<$Res> {
  _$PaymentMethodsStateCopyWithImpl(this._self, this._then);

  final PaymentMethodsState _self;
  final $Res Function(PaymentMethodsState) _then;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? savedPaymentMethodsState = null,
  }) {
    return _then(_self.copyWith(
      savedPaymentMethodsState: null == savedPaymentMethodsState
          ? _self.savedPaymentMethodsState
          : savedPaymentMethodsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$SavedPaymentMethods>,
    ));
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$SavedPaymentMethods, $Res>
      get savedPaymentMethodsState {
    return $ApiResponseCopyWith<Query$SavedPaymentMethods, $Res>(
        _self.savedPaymentMethodsState, (value) {
      return _then(_self.copyWith(savedPaymentMethodsState: value));
    });
  }
}

/// @nodoc

class _PaymentMethodsState implements PaymentMethodsState {
  const _PaymentMethodsState(
      {this.savedPaymentMethodsState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$SavedPaymentMethods> savedPaymentMethodsState;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PaymentMethodsStateCopyWith<_PaymentMethodsState> get copyWith =>
      __$PaymentMethodsStateCopyWithImpl<_PaymentMethodsState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaymentMethodsState &&
            (identical(
                    other.savedPaymentMethodsState, savedPaymentMethodsState) ||
                other.savedPaymentMethodsState == savedPaymentMethodsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedPaymentMethodsState);

  @override
  String toString() {
    return 'PaymentMethodsState(savedPaymentMethodsState: $savedPaymentMethodsState)';
  }
}

/// @nodoc
abstract mixin class _$PaymentMethodsStateCopyWith<$Res>
    implements $PaymentMethodsStateCopyWith<$Res> {
  factory _$PaymentMethodsStateCopyWith(_PaymentMethodsState value,
          $Res Function(_PaymentMethodsState) _then) =
      __$PaymentMethodsStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$SavedPaymentMethods> savedPaymentMethodsState});

  @override
  $ApiResponseCopyWith<Query$SavedPaymentMethods, $Res>
      get savedPaymentMethodsState;
}

/// @nodoc
class __$PaymentMethodsStateCopyWithImpl<$Res>
    implements _$PaymentMethodsStateCopyWith<$Res> {
  __$PaymentMethodsStateCopyWithImpl(this._self, this._then);

  final _PaymentMethodsState _self;
  final $Res Function(_PaymentMethodsState) _then;

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? savedPaymentMethodsState = null,
  }) {
    return _then(_PaymentMethodsState(
      savedPaymentMethodsState: null == savedPaymentMethodsState
          ? _self.savedPaymentMethodsState
          : savedPaymentMethodsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$SavedPaymentMethods>,
    ));
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$SavedPaymentMethods, $Res>
      get savedPaymentMethodsState {
    return $ApiResponseCopyWith<Query$SavedPaymentMethods, $Res>(
        _self.savedPaymentMethodsState, (value) {
      return _then(_self.copyWith(savedPaymentMethodsState: value));
    });
  }
}

// dart format on
