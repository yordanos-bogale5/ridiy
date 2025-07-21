// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rate_order.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RateOrderEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateOrderEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateOrderEvent()';
  }
}

/// @nodoc
class $RateOrderEventCopyWith<$Res> {
  $RateOrderEventCopyWith(RateOrderEvent _, $Res Function(RateOrderEvent) __);
}

/// @nodoc

class RateOrderEvent$OnStarted implements RateOrderEvent {
  const RateOrderEvent$OnStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateOrderEvent$OnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateOrderEvent.onStarted()';
  }
}

/// @nodoc

class RateOrderEvent$OnParameterTapped implements RateOrderEvent {
  const RateOrderEvent$OnParameterTapped({required this.parameter});

  final Fragment$ReviewParameter parameter;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateOrderEvent$OnParameterTappedCopyWith<RateOrderEvent$OnParameterTapped>
      get copyWith => _$RateOrderEvent$OnParameterTappedCopyWithImpl<
          RateOrderEvent$OnParameterTapped>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateOrderEvent$OnParameterTapped &&
            (identical(other.parameter, parameter) ||
                other.parameter == parameter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parameter);

  @override
  String toString() {
    return 'RateOrderEvent.onParameterTapped(parameter: $parameter)';
  }
}

/// @nodoc
abstract mixin class $RateOrderEvent$OnParameterTappedCopyWith<$Res>
    implements $RateOrderEventCopyWith<$Res> {
  factory $RateOrderEvent$OnParameterTappedCopyWith(
          RateOrderEvent$OnParameterTapped value,
          $Res Function(RateOrderEvent$OnParameterTapped) _then) =
      _$RateOrderEvent$OnParameterTappedCopyWithImpl;
  @useResult
  $Res call({Fragment$ReviewParameter parameter});
}

/// @nodoc
class _$RateOrderEvent$OnParameterTappedCopyWithImpl<$Res>
    implements $RateOrderEvent$OnParameterTappedCopyWith<$Res> {
  _$RateOrderEvent$OnParameterTappedCopyWithImpl(this._self, this._then);

  final RateOrderEvent$OnParameterTapped _self;
  final $Res Function(RateOrderEvent$OnParameterTapped) _then;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? parameter = null,
  }) {
    return _then(RateOrderEvent$OnParameterTapped(
      parameter: null == parameter
          ? _self.parameter
          : parameter // ignore: cast_nullable_to_non_nullable
              as Fragment$ReviewParameter,
    ));
  }
}

/// @nodoc

class RateOrderEvent$OnReviewSubmitted implements RateOrderEvent {
  const RateOrderEvent$OnReviewSubmitted(
      {required this.orderId,
      required this.rating,
      required this.comment,
      required final List<Fragment$ReviewParameter> parameters,
      required this.isFavorite})
      : _parameters = parameters;

  final String orderId;
  final int rating;
  final String? comment;
  final List<Fragment$ReviewParameter> _parameters;
  List<Fragment$ReviewParameter> get parameters {
    if (_parameters is EqualUnmodifiableListView) return _parameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parameters);
  }

  final bool isFavorite;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateOrderEvent$OnReviewSubmittedCopyWith<RateOrderEvent$OnReviewSubmitted>
      get copyWith => _$RateOrderEvent$OnReviewSubmittedCopyWithImpl<
          RateOrderEvent$OnReviewSubmitted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateOrderEvent$OnReviewSubmitted &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._parameters, _parameters) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, rating, comment,
      const DeepCollectionEquality().hash(_parameters), isFavorite);

  @override
  String toString() {
    return 'RateOrderEvent.onReviewSubmitted(orderId: $orderId, rating: $rating, comment: $comment, parameters: $parameters, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class $RateOrderEvent$OnReviewSubmittedCopyWith<$Res>
    implements $RateOrderEventCopyWith<$Res> {
  factory $RateOrderEvent$OnReviewSubmittedCopyWith(
          RateOrderEvent$OnReviewSubmitted value,
          $Res Function(RateOrderEvent$OnReviewSubmitted) _then) =
      _$RateOrderEvent$OnReviewSubmittedCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      int rating,
      String? comment,
      List<Fragment$ReviewParameter> parameters,
      bool isFavorite});
}

/// @nodoc
class _$RateOrderEvent$OnReviewSubmittedCopyWithImpl<$Res>
    implements $RateOrderEvent$OnReviewSubmittedCopyWith<$Res> {
  _$RateOrderEvent$OnReviewSubmittedCopyWithImpl(this._self, this._then);

  final RateOrderEvent$OnReviewSubmitted _self;
  final $Res Function(RateOrderEvent$OnReviewSubmitted) _then;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? parameters = null,
    Object? isFavorite = null,
  }) {
    return _then(RateOrderEvent$OnReviewSubmitted(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      comment: freezed == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      parameters: null == parameters
          ? _self._parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ReviewParameter>,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class RateOrderEvent$SkipReview implements RateOrderEvent {
  const RateOrderEvent$SkipReview({required this.orderId});

  final String orderId;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateOrderEvent$SkipReviewCopyWith<RateOrderEvent$SkipReview> get copyWith =>
      _$RateOrderEvent$SkipReviewCopyWithImpl<RateOrderEvent$SkipReview>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateOrderEvent$SkipReview &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'RateOrderEvent.skipReview(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $RateOrderEvent$SkipReviewCopyWith<$Res>
    implements $RateOrderEventCopyWith<$Res> {
  factory $RateOrderEvent$SkipReviewCopyWith(RateOrderEvent$SkipReview value,
          $Res Function(RateOrderEvent$SkipReview) _then) =
      _$RateOrderEvent$SkipReviewCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$RateOrderEvent$SkipReviewCopyWithImpl<$Res>
    implements $RateOrderEvent$SkipReviewCopyWith<$Res> {
  _$RateOrderEvent$SkipReviewCopyWithImpl(this._self, this._then);

  final RateOrderEvent$SkipReview _self;
  final $Res Function(RateOrderEvent$SkipReview) _then;

  /// Create a copy of RateOrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(RateOrderEvent$SkipReview(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$RateOrderState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateOrderState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateOrderState()';
  }
}

/// @nodoc
class $RateOrderStateCopyWith<$Res> {
  $RateOrderStateCopyWith(RateOrderState _, $Res Function(RateOrderState) __);
}

/// @nodoc

class RateOrderState$Initial implements RateOrderState {
  const RateOrderState$Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateOrderState$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateOrderState.initial()';
  }
}

/// @nodoc

class RateOrderState$Loading implements RateOrderState {
  const RateOrderState$Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RateOrderState$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateOrderState.loading()';
  }
}

/// @nodoc

class RateOrderState$Error implements RateOrderState {
  const RateOrderState$Error({required this.message});

  final String message;

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateOrderState$ErrorCopyWith<RateOrderState$Error> get copyWith =>
      _$RateOrderState$ErrorCopyWithImpl<RateOrderState$Error>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateOrderState$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'RateOrderState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $RateOrderState$ErrorCopyWith<$Res>
    implements $RateOrderStateCopyWith<$Res> {
  factory $RateOrderState$ErrorCopyWith(RateOrderState$Error value,
          $Res Function(RateOrderState$Error) _then) =
      _$RateOrderState$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$RateOrderState$ErrorCopyWithImpl<$Res>
    implements $RateOrderState$ErrorCopyWith<$Res> {
  _$RateOrderState$ErrorCopyWithImpl(this._self, this._then);

  final RateOrderState$Error _self;
  final $Res Function(RateOrderState$Error) _then;

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(RateOrderState$Error(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class RateOrderState$ParametersLoaded implements RateOrderState {
  const RateOrderState$ParametersLoaded(
      {required final List<Fragment$ReviewParameter> strengthParameters,
      required final List<Fragment$ReviewParameter> weaknessParameters,
      final List<Fragment$ReviewParameter> selectedParameters = const []})
      : _strengthParameters = strengthParameters,
        _weaknessParameters = weaknessParameters,
        _selectedParameters = selectedParameters;

  final List<Fragment$ReviewParameter> _strengthParameters;
  List<Fragment$ReviewParameter> get strengthParameters {
    if (_strengthParameters is EqualUnmodifiableListView)
      return _strengthParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_strengthParameters);
  }

  final List<Fragment$ReviewParameter> _weaknessParameters;
  List<Fragment$ReviewParameter> get weaknessParameters {
    if (_weaknessParameters is EqualUnmodifiableListView)
      return _weaknessParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weaknessParameters);
  }

  final List<Fragment$ReviewParameter> _selectedParameters;
  @JsonKey()
  List<Fragment$ReviewParameter> get selectedParameters {
    if (_selectedParameters is EqualUnmodifiableListView)
      return _selectedParameters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedParameters);
  }

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RateOrderState$ParametersLoadedCopyWith<RateOrderState$ParametersLoaded>
      get copyWith => _$RateOrderState$ParametersLoadedCopyWithImpl<
          RateOrderState$ParametersLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateOrderState$ParametersLoaded &&
            const DeepCollectionEquality()
                .equals(other._strengthParameters, _strengthParameters) &&
            const DeepCollectionEquality()
                .equals(other._weaknessParameters, _weaknessParameters) &&
            const DeepCollectionEquality()
                .equals(other._selectedParameters, _selectedParameters));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_strengthParameters),
      const DeepCollectionEquality().hash(_weaknessParameters),
      const DeepCollectionEquality().hash(_selectedParameters));

  @override
  String toString() {
    return 'RateOrderState.parametersLoaded(strengthParameters: $strengthParameters, weaknessParameters: $weaknessParameters, selectedParameters: $selectedParameters)';
  }
}

/// @nodoc
abstract mixin class $RateOrderState$ParametersLoadedCopyWith<$Res>
    implements $RateOrderStateCopyWith<$Res> {
  factory $RateOrderState$ParametersLoadedCopyWith(
          RateOrderState$ParametersLoaded value,
          $Res Function(RateOrderState$ParametersLoaded) _then) =
      _$RateOrderState$ParametersLoadedCopyWithImpl;
  @useResult
  $Res call(
      {List<Fragment$ReviewParameter> strengthParameters,
      List<Fragment$ReviewParameter> weaknessParameters,
      List<Fragment$ReviewParameter> selectedParameters});
}

/// @nodoc
class _$RateOrderState$ParametersLoadedCopyWithImpl<$Res>
    implements $RateOrderState$ParametersLoadedCopyWith<$Res> {
  _$RateOrderState$ParametersLoadedCopyWithImpl(this._self, this._then);

  final RateOrderState$ParametersLoaded _self;
  final $Res Function(RateOrderState$ParametersLoaded) _then;

  /// Create a copy of RateOrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? strengthParameters = null,
    Object? weaknessParameters = null,
    Object? selectedParameters = null,
  }) {
    return _then(RateOrderState$ParametersLoaded(
      strengthParameters: null == strengthParameters
          ? _self._strengthParameters
          : strengthParameters // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ReviewParameter>,
      weaknessParameters: null == weaknessParameters
          ? _self._weaknessParameters
          : weaknessParameters // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ReviewParameter>,
      selectedParameters: null == selectedParameters
          ? _self._selectedParameters
          : selectedParameters // ignore: cast_nullable_to_non_nullable
              as List<Fragment$ReviewParameter>,
    ));
  }
}

/// @nodoc

class RateOrderState$ReviewSubmitted implements RateOrderState {
  const RateOrderState$ReviewSubmitted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateOrderState$ReviewSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'RateOrderState.reviewSubmitted()';
  }
}

// dart format on
