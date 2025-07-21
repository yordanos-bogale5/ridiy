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
  ApiResponse<List<Fragment$SavedPaymentMethod>> get savedPaymentMethods;
  ApiResponse<List<Fragment$PaymentGateway>> get paymentGateways;
  Fragment$SavedPaymentMethod? get selectedSavedPaymentMethod;

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
            (identical(other.savedPaymentMethods, savedPaymentMethods) ||
                other.savedPaymentMethods == savedPaymentMethods) &&
            (identical(other.paymentGateways, paymentGateways) ||
                other.paymentGateways == paymentGateways) &&
            (identical(other.selectedSavedPaymentMethod,
                    selectedSavedPaymentMethod) ||
                other.selectedSavedPaymentMethod ==
                    selectedSavedPaymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedPaymentMethods,
      paymentGateways, selectedSavedPaymentMethod);

  @override
  String toString() {
    return 'PaymentMethodsState(savedPaymentMethods: $savedPaymentMethods, paymentGateways: $paymentGateways, selectedSavedPaymentMethod: $selectedSavedPaymentMethod)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodsStateCopyWith<$Res> {
  factory $PaymentMethodsStateCopyWith(
          PaymentMethodsState value, $Res Function(PaymentMethodsState) _then) =
      _$PaymentMethodsStateCopyWithImpl;
  @useResult
  $Res call(
      {ApiResponse<List<Fragment$SavedPaymentMethod>> savedPaymentMethods,
      ApiResponse<List<Fragment$PaymentGateway>> paymentGateways,
      Fragment$SavedPaymentMethod? selectedSavedPaymentMethod});

  $ApiResponseCopyWith<List<Fragment$SavedPaymentMethod>, $Res>
      get savedPaymentMethods;
  $ApiResponseCopyWith<List<Fragment$PaymentGateway>, $Res> get paymentGateways;
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
    Object? savedPaymentMethods = null,
    Object? paymentGateways = null,
    Object? selectedSavedPaymentMethod = freezed,
  }) {
    return _then(_self.copyWith(
      savedPaymentMethods: null == savedPaymentMethods
          ? _self.savedPaymentMethods
          : savedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Fragment$SavedPaymentMethod>>,
      paymentGateways: null == paymentGateways
          ? _self.paymentGateways
          : paymentGateways // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Fragment$PaymentGateway>>,
      selectedSavedPaymentMethod: freezed == selectedSavedPaymentMethod
          ? _self.selectedSavedPaymentMethod
          : selectedSavedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as Fragment$SavedPaymentMethod?,
    ));
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Fragment$SavedPaymentMethod>, $Res>
      get savedPaymentMethods {
    return $ApiResponseCopyWith<List<Fragment$SavedPaymentMethod>, $Res>(
        _self.savedPaymentMethods, (value) {
      return _then(_self.copyWith(savedPaymentMethods: value));
    });
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Fragment$PaymentGateway>, $Res>
      get paymentGateways {
    return $ApiResponseCopyWith<List<Fragment$PaymentGateway>, $Res>(
        _self.paymentGateways, (value) {
      return _then(_self.copyWith(paymentGateways: value));
    });
  }
}

/// @nodoc

class _PaymentMethodsState extends PaymentMethodsState {
  const _PaymentMethodsState(
      {this.savedPaymentMethods = const ApiResponseInitial(),
      this.paymentGateways = const ApiResponseInitial(),
      this.selectedSavedPaymentMethod})
      : super._();

  @override
  @JsonKey()
  final ApiResponse<List<Fragment$SavedPaymentMethod>> savedPaymentMethods;
  @override
  @JsonKey()
  final ApiResponse<List<Fragment$PaymentGateway>> paymentGateways;
  @override
  final Fragment$SavedPaymentMethod? selectedSavedPaymentMethod;

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
            (identical(other.savedPaymentMethods, savedPaymentMethods) ||
                other.savedPaymentMethods == savedPaymentMethods) &&
            (identical(other.paymentGateways, paymentGateways) ||
                other.paymentGateways == paymentGateways) &&
            (identical(other.selectedSavedPaymentMethod,
                    selectedSavedPaymentMethod) ||
                other.selectedSavedPaymentMethod ==
                    selectedSavedPaymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, savedPaymentMethods,
      paymentGateways, selectedSavedPaymentMethod);

  @override
  String toString() {
    return 'PaymentMethodsState(savedPaymentMethods: $savedPaymentMethods, paymentGateways: $paymentGateways, selectedSavedPaymentMethod: $selectedSavedPaymentMethod)';
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
  $Res call(
      {ApiResponse<List<Fragment$SavedPaymentMethod>> savedPaymentMethods,
      ApiResponse<List<Fragment$PaymentGateway>> paymentGateways,
      Fragment$SavedPaymentMethod? selectedSavedPaymentMethod});

  @override
  $ApiResponseCopyWith<List<Fragment$SavedPaymentMethod>, $Res>
      get savedPaymentMethods;
  @override
  $ApiResponseCopyWith<List<Fragment$PaymentGateway>, $Res> get paymentGateways;
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
    Object? savedPaymentMethods = null,
    Object? paymentGateways = null,
    Object? selectedSavedPaymentMethod = freezed,
  }) {
    return _then(_PaymentMethodsState(
      savedPaymentMethods: null == savedPaymentMethods
          ? _self.savedPaymentMethods
          : savedPaymentMethods // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Fragment$SavedPaymentMethod>>,
      paymentGateways: null == paymentGateways
          ? _self.paymentGateways
          : paymentGateways // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Fragment$PaymentGateway>>,
      selectedSavedPaymentMethod: freezed == selectedSavedPaymentMethod
          ? _self.selectedSavedPaymentMethod
          : selectedSavedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as Fragment$SavedPaymentMethod?,
    ));
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Fragment$SavedPaymentMethod>, $Res>
      get savedPaymentMethods {
    return $ApiResponseCopyWith<List<Fragment$SavedPaymentMethod>, $Res>(
        _self.savedPaymentMethods, (value) {
      return _then(_self.copyWith(savedPaymentMethods: value));
    });
  }

  /// Create a copy of PaymentMethodsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Fragment$PaymentGateway>, $Res>
      get paymentGateways {
    return $ApiResponseCopyWith<List<Fragment$PaymentGateway>, $Res>(
        _self.paymentGateways, (value) {
      return _then(_self.copyWith(paymentGateways: value));
    });
  }
}

/// @nodoc
mixin _$PaymentMethodsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentMethodsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentMethodsEvent()';
  }
}

/// @nodoc
class $PaymentMethodsEventCopyWith<$Res> {
  $PaymentMethodsEventCopyWith(
      PaymentMethodsEvent _, $Res Function(PaymentMethodsEvent) __);
}

/// @nodoc

class PaymentMethodsEvent$Load implements PaymentMethodsEvent {
  const PaymentMethodsEvent$Load();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PaymentMethodsEvent$Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PaymentMethodsEvent.load()';
  }
}

/// @nodoc

class PaymentMethodsEvent$MarkAsDefault implements PaymentMethodsEvent {
  const PaymentMethodsEvent$MarkAsDefault({required this.paymentMethodId});

  final String paymentMethodId;

  /// Create a copy of PaymentMethodsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodsEvent$MarkAsDefaultCopyWith<PaymentMethodsEvent$MarkAsDefault>
      get copyWith => _$PaymentMethodsEvent$MarkAsDefaultCopyWithImpl<
          PaymentMethodsEvent$MarkAsDefault>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodsEvent$MarkAsDefault &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodId);

  @override
  String toString() {
    return 'PaymentMethodsEvent.markAsDefault(paymentMethodId: $paymentMethodId)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodsEvent$MarkAsDefaultCopyWith<$Res>
    implements $PaymentMethodsEventCopyWith<$Res> {
  factory $PaymentMethodsEvent$MarkAsDefaultCopyWith(
          PaymentMethodsEvent$MarkAsDefault value,
          $Res Function(PaymentMethodsEvent$MarkAsDefault) _then) =
      _$PaymentMethodsEvent$MarkAsDefaultCopyWithImpl;
  @useResult
  $Res call({String paymentMethodId});
}

/// @nodoc
class _$PaymentMethodsEvent$MarkAsDefaultCopyWithImpl<$Res>
    implements $PaymentMethodsEvent$MarkAsDefaultCopyWith<$Res> {
  _$PaymentMethodsEvent$MarkAsDefaultCopyWithImpl(this._self, this._then);

  final PaymentMethodsEvent$MarkAsDefault _self;
  final $Res Function(PaymentMethodsEvent$MarkAsDefault) _then;

  /// Create a copy of PaymentMethodsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentMethodId = null,
  }) {
    return _then(PaymentMethodsEvent$MarkAsDefault(
      paymentMethodId: null == paymentMethodId
          ? _self.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PaymentMethodsEvent$DeletePaymentMethod implements PaymentMethodsEvent {
  const PaymentMethodsEvent$DeletePaymentMethod(
      {required this.paymentMethodId});

  final String paymentMethodId;

  /// Create a copy of PaymentMethodsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PaymentMethodsEvent$DeletePaymentMethodCopyWith<
          PaymentMethodsEvent$DeletePaymentMethod>
      get copyWith => _$PaymentMethodsEvent$DeletePaymentMethodCopyWithImpl<
          PaymentMethodsEvent$DeletePaymentMethod>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PaymentMethodsEvent$DeletePaymentMethod &&
            (identical(other.paymentMethodId, paymentMethodId) ||
                other.paymentMethodId == paymentMethodId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethodId);

  @override
  String toString() {
    return 'PaymentMethodsEvent.deletePaymentMethod(paymentMethodId: $paymentMethodId)';
  }
}

/// @nodoc
abstract mixin class $PaymentMethodsEvent$DeletePaymentMethodCopyWith<$Res>
    implements $PaymentMethodsEventCopyWith<$Res> {
  factory $PaymentMethodsEvent$DeletePaymentMethodCopyWith(
          PaymentMethodsEvent$DeletePaymentMethod value,
          $Res Function(PaymentMethodsEvent$DeletePaymentMethod) _then) =
      _$PaymentMethodsEvent$DeletePaymentMethodCopyWithImpl;
  @useResult
  $Res call({String paymentMethodId});
}

/// @nodoc
class _$PaymentMethodsEvent$DeletePaymentMethodCopyWithImpl<$Res>
    implements $PaymentMethodsEvent$DeletePaymentMethodCopyWith<$Res> {
  _$PaymentMethodsEvent$DeletePaymentMethodCopyWithImpl(this._self, this._then);

  final PaymentMethodsEvent$DeletePaymentMethod _self;
  final $Res Function(PaymentMethodsEvent$DeletePaymentMethod) _then;

  /// Create a copy of PaymentMethodsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentMethodId = null,
  }) {
    return _then(PaymentMethodsEvent$DeletePaymentMethod(
      paymentMethodId: null == paymentMethodId
          ? _self.paymentMethodId
          : paymentMethodId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
