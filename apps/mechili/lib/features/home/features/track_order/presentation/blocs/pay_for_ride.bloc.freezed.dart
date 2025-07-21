// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pay_for_ride.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PayForRideState {
  PaymentMethodUnion? get selectedPaymentMethod;
  ApiResponse<Fragment$IntentResult> get paymentStatus;
  ApiResponse<Query$PaymentMethods> get savedPaymentMethodsState;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PayForRideStateCopyWith<PayForRideState> get copyWith =>
      _$PayForRideStateCopyWithImpl<PayForRideState>(
          this as PayForRideState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PayForRideState &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(
                    other.savedPaymentMethodsState, savedPaymentMethodsState) ||
                other.savedPaymentMethodsState == savedPaymentMethodsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPaymentMethod,
      paymentStatus, savedPaymentMethodsState);

  @override
  String toString() {
    return 'PayForRideState(selectedPaymentMethod: $selectedPaymentMethod, paymentStatus: $paymentStatus, savedPaymentMethodsState: $savedPaymentMethodsState)';
  }
}

/// @nodoc
abstract mixin class $PayForRideStateCopyWith<$Res> {
  factory $PayForRideStateCopyWith(
          PayForRideState value, $Res Function(PayForRideState) _then) =
      _$PayForRideStateCopyWithImpl;
  @useResult
  $Res call(
      {PaymentMethodUnion? selectedPaymentMethod,
      ApiResponse<Fragment$IntentResult> paymentStatus,
      ApiResponse<Query$PaymentMethods> savedPaymentMethodsState});

  $ApiResponseCopyWith<Fragment$IntentResult, $Res> get paymentStatus;
  $ApiResponseCopyWith<Query$PaymentMethods, $Res> get savedPaymentMethodsState;
}

/// @nodoc
class _$PayForRideStateCopyWithImpl<$Res>
    implements $PayForRideStateCopyWith<$Res> {
  _$PayForRideStateCopyWithImpl(this._self, this._then);

  final PayForRideState _self;
  final $Res Function(PayForRideState) _then;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentMethod = freezed,
    Object? paymentStatus = null,
    Object? savedPaymentMethodsState = null,
  }) {
    return _then(_self.copyWith(
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _self.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
      paymentStatus: null == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$IntentResult>,
      savedPaymentMethodsState: null == savedPaymentMethodsState
          ? _self.savedPaymentMethodsState
          : savedPaymentMethodsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$PaymentMethods>,
    ));
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$IntentResult, $Res> get paymentStatus {
    return $ApiResponseCopyWith<Fragment$IntentResult, $Res>(
        _self.paymentStatus, (value) {
      return _then(_self.copyWith(paymentStatus: value));
    });
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$PaymentMethods, $Res>
      get savedPaymentMethodsState {
    return $ApiResponseCopyWith<Query$PaymentMethods, $Res>(
        _self.savedPaymentMethodsState, (value) {
      return _then(_self.copyWith(savedPaymentMethodsState: value));
    });
  }
}

/// @nodoc

class _PayForRideState extends PayForRideState {
  const _PayForRideState(
      {this.selectedPaymentMethod,
      this.paymentStatus = const ApiResponse.initial(),
      this.savedPaymentMethodsState = const ApiResponseInitial()})
      : super._();

  @override
  final PaymentMethodUnion? selectedPaymentMethod;
  @override
  @JsonKey()
  final ApiResponse<Fragment$IntentResult> paymentStatus;
  @override
  @JsonKey()
  final ApiResponse<Query$PaymentMethods> savedPaymentMethodsState;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PayForRideStateCopyWith<_PayForRideState> get copyWith =>
      __$PayForRideStateCopyWithImpl<_PayForRideState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PayForRideState &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(
                    other.savedPaymentMethodsState, savedPaymentMethodsState) ||
                other.savedPaymentMethodsState == savedPaymentMethodsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPaymentMethod,
      paymentStatus, savedPaymentMethodsState);

  @override
  String toString() {
    return 'PayForRideState(selectedPaymentMethod: $selectedPaymentMethod, paymentStatus: $paymentStatus, savedPaymentMethodsState: $savedPaymentMethodsState)';
  }
}

/// @nodoc
abstract mixin class _$PayForRideStateCopyWith<$Res>
    implements $PayForRideStateCopyWith<$Res> {
  factory _$PayForRideStateCopyWith(
          _PayForRideState value, $Res Function(_PayForRideState) _then) =
      __$PayForRideStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {PaymentMethodUnion? selectedPaymentMethod,
      ApiResponse<Fragment$IntentResult> paymentStatus,
      ApiResponse<Query$PaymentMethods> savedPaymentMethodsState});

  @override
  $ApiResponseCopyWith<Fragment$IntentResult, $Res> get paymentStatus;
  @override
  $ApiResponseCopyWith<Query$PaymentMethods, $Res> get savedPaymentMethodsState;
}

/// @nodoc
class __$PayForRideStateCopyWithImpl<$Res>
    implements _$PayForRideStateCopyWith<$Res> {
  __$PayForRideStateCopyWithImpl(this._self, this._then);

  final _PayForRideState _self;
  final $Res Function(_PayForRideState) _then;

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedPaymentMethod = freezed,
    Object? paymentStatus = null,
    Object? savedPaymentMethodsState = null,
  }) {
    return _then(_PayForRideState(
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _self.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
      paymentStatus: null == paymentStatus
          ? _self.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$IntentResult>,
      savedPaymentMethodsState: null == savedPaymentMethodsState
          ? _self.savedPaymentMethodsState
          : savedPaymentMethodsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$PaymentMethods>,
    ));
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$IntentResult, $Res> get paymentStatus {
    return $ApiResponseCopyWith<Fragment$IntentResult, $Res>(
        _self.paymentStatus, (value) {
      return _then(_self.copyWith(paymentStatus: value));
    });
  }

  /// Create a copy of PayForRideState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$PaymentMethods, $Res>
      get savedPaymentMethodsState {
    return $ApiResponseCopyWith<Query$PaymentMethods, $Res>(
        _self.savedPaymentMethodsState, (value) {
      return _then(_self.copyWith(savedPaymentMethodsState: value));
    });
  }
}

// dart format on
