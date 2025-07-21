// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// @nodoc

class HomeEvent$OnStarted implements HomeEvent {
  const HomeEvent$OnStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent$OnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.onStarted()';
  }
}

/// @nodoc

class HomeEvent$OnStatusChanged implements HomeEvent {
  const HomeEvent$OnStatusChanged({required this.status});

  final Enum$DriverStatus status;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnStatusChangedCopyWith<HomeEvent$OnStatusChanged> get copyWith =>
      _$HomeEvent$OnStatusChangedCopyWithImpl<HomeEvent$OnStatusChanged>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnStatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @override
  String toString() {
    return 'HomeEvent.onStatusChanged(status: $status)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnStatusChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnStatusChangedCopyWith(HomeEvent$OnStatusChanged value,
          $Res Function(HomeEvent$OnStatusChanged) _then) =
      _$HomeEvent$OnStatusChangedCopyWithImpl;
  @useResult
  $Res call({Enum$DriverStatus status});
}

/// @nodoc
class _$HomeEvent$OnStatusChangedCopyWithImpl<$Res>
    implements $HomeEvent$OnStatusChangedCopyWith<$Res> {
  _$HomeEvent$OnStatusChangedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnStatusChanged _self;
  final $Res Function(HomeEvent$OnStatusChanged) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
  }) {
    return _then(HomeEvent$OnStatusChanged(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as Enum$DriverStatus,
    ));
  }
}

/// @nodoc

class HomeEvent$OnOrderRequestPageChanged implements HomeEvent {
  const HomeEvent$OnOrderRequestPageChanged({required this.request});

  final Fragment$OrderRequest request;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnOrderRequestPageChangedCopyWith<
          HomeEvent$OnOrderRequestPageChanged>
      get copyWith => _$HomeEvent$OnOrderRequestPageChangedCopyWithImpl<
          HomeEvent$OnOrderRequestPageChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnOrderRequestPageChanged &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @override
  String toString() {
    return 'HomeEvent.onOrderRequestPageChanged(request: $request)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnOrderRequestPageChangedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnOrderRequestPageChangedCopyWith(
          HomeEvent$OnOrderRequestPageChanged value,
          $Res Function(HomeEvent$OnOrderRequestPageChanged) _then) =
      _$HomeEvent$OnOrderRequestPageChangedCopyWithImpl;
  @useResult
  $Res call({Fragment$OrderRequest request});
}

/// @nodoc
class _$HomeEvent$OnOrderRequestPageChangedCopyWithImpl<$Res>
    implements $HomeEvent$OnOrderRequestPageChangedCopyWith<$Res> {
  _$HomeEvent$OnOrderRequestPageChangedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnOrderRequestPageChanged _self;
  final $Res Function(HomeEvent$OnOrderRequestPageChanged) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
  }) {
    return _then(HomeEvent$OnOrderRequestPageChanged(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Fragment$OrderRequest,
    ));
  }
}

/// @nodoc

class HomeEvent$OnRefreshOrderRequests implements HomeEvent {
  const HomeEvent$OnRefreshOrderRequests();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnRefreshOrderRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.requestUpdatedOrderRequests()';
  }
}

/// @nodoc

class HomeEvent$OnAcceptOrder implements HomeEvent {
  const HomeEvent$OnAcceptOrder({required this.request});

  final Fragment$OrderRequest request;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnAcceptOrderCopyWith<HomeEvent$OnAcceptOrder> get copyWith =>
      _$HomeEvent$OnAcceptOrderCopyWithImpl<HomeEvent$OnAcceptOrder>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnAcceptOrder &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @override
  String toString() {
    return 'HomeEvent.onAcceptOrder(request: $request)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnAcceptOrderCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnAcceptOrderCopyWith(HomeEvent$OnAcceptOrder value,
          $Res Function(HomeEvent$OnAcceptOrder) _then) =
      _$HomeEvent$OnAcceptOrderCopyWithImpl;
  @useResult
  $Res call({Fragment$OrderRequest request});
}

/// @nodoc
class _$HomeEvent$OnAcceptOrderCopyWithImpl<$Res>
    implements $HomeEvent$OnAcceptOrderCopyWith<$Res> {
  _$HomeEvent$OnAcceptOrderCopyWithImpl(this._self, this._then);

  final HomeEvent$OnAcceptOrder _self;
  final $Res Function(HomeEvent$OnAcceptOrder) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? request = null,
  }) {
    return _then(HomeEvent$OnAcceptOrder(
      request: null == request
          ? _self.request
          : request // ignore: cast_nullable_to_non_nullable
              as Fragment$OrderRequest,
    ));
  }
}

/// @nodoc

class HomeEvent$OnCancelOrder implements HomeEvent {
  const HomeEvent$OnCancelOrder(
      {required this.orderId,
      required this.reasonId,
      required this.reasonNote});

  final String orderId;
  final String? reasonId;
  final String? reasonNote;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnCancelOrderCopyWith<HomeEvent$OnCancelOrder> get copyWith =>
      _$HomeEvent$OnCancelOrderCopyWithImpl<HomeEvent$OnCancelOrder>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnCancelOrder &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.reasonId, reasonId) ||
                other.reasonId == reasonId) &&
            (identical(other.reasonNote, reasonNote) ||
                other.reasonNote == reasonNote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, reasonId, reasonNote);

  @override
  String toString() {
    return 'HomeEvent.onCancelOrder(orderId: $orderId, reasonId: $reasonId, reasonNote: $reasonNote)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnCancelOrderCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnCancelOrderCopyWith(HomeEvent$OnCancelOrder value,
          $Res Function(HomeEvent$OnCancelOrder) _then) =
      _$HomeEvent$OnCancelOrderCopyWithImpl;
  @useResult
  $Res call({String orderId, String? reasonId, String? reasonNote});
}

/// @nodoc
class _$HomeEvent$OnCancelOrderCopyWithImpl<$Res>
    implements $HomeEvent$OnCancelOrderCopyWith<$Res> {
  _$HomeEvent$OnCancelOrderCopyWithImpl(this._self, this._then);

  final HomeEvent$OnCancelOrder _self;
  final $Res Function(HomeEvent$OnCancelOrder) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? reasonId = freezed,
    Object? reasonNote = freezed,
  }) {
    return _then(HomeEvent$OnCancelOrder(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      reasonId: freezed == reasonId
          ? _self.reasonId
          : reasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      reasonNote: freezed == reasonNote
          ? _self.reasonNote
          : reasonNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class HomeEvent$OnArrivedToPickupPoint implements HomeEvent {
  const HomeEvent$OnArrivedToPickupPoint({required this.orderId});

  final String orderId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnArrivedToPickupPointCopyWith<HomeEvent$OnArrivedToPickupPoint>
      get copyWith => _$HomeEvent$OnArrivedToPickupPointCopyWithImpl<
          HomeEvent$OnArrivedToPickupPoint>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnArrivedToPickupPoint &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'HomeEvent.onArrivedToPickupPoint(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnArrivedToPickupPointCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnArrivedToPickupPointCopyWith(
          HomeEvent$OnArrivedToPickupPoint value,
          $Res Function(HomeEvent$OnArrivedToPickupPoint) _then) =
      _$HomeEvent$OnArrivedToPickupPointCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$HomeEvent$OnArrivedToPickupPointCopyWithImpl<$Res>
    implements $HomeEvent$OnArrivedToPickupPointCopyWith<$Res> {
  _$HomeEvent$OnArrivedToPickupPointCopyWithImpl(this._self, this._then);

  final HomeEvent$OnArrivedToPickupPoint _self;
  final $Res Function(HomeEvent$OnArrivedToPickupPoint) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(HomeEvent$OnArrivedToPickupPoint(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$OnTripStarted implements HomeEvent {
  const HomeEvent$OnTripStarted({required this.orderId});

  final String orderId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnTripStartedCopyWith<HomeEvent$OnTripStarted> get copyWith =>
      _$HomeEvent$OnTripStartedCopyWithImpl<HomeEvent$OnTripStarted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnTripStarted &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'HomeEvent.onStripStarted(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnTripStartedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnTripStartedCopyWith(HomeEvent$OnTripStarted value,
          $Res Function(HomeEvent$OnTripStarted) _then) =
      _$HomeEvent$OnTripStartedCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$HomeEvent$OnTripStartedCopyWithImpl<$Res>
    implements $HomeEvent$OnTripStartedCopyWith<$Res> {
  _$HomeEvent$OnTripStartedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnTripStarted _self;
  final $Res Function(HomeEvent$OnTripStarted) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(HomeEvent$OnTripStarted(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$OnArrivedToDestination implements HomeEvent {
  const HomeEvent$OnArrivedToDestination(
      {required this.order, required this.destinationArrivedTo});

  final Fragment$CurrentOrder order;
  final int destinationArrivedTo;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnArrivedToDestinationCopyWith<HomeEvent$OnArrivedToDestination>
      get copyWith => _$HomeEvent$OnArrivedToDestinationCopyWithImpl<
          HomeEvent$OnArrivedToDestination>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnArrivedToDestination &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.destinationArrivedTo, destinationArrivedTo) ||
                other.destinationArrivedTo == destinationArrivedTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, order, destinationArrivedTo);

  @override
  String toString() {
    return 'HomeEvent.onArrivedToDestination(order: $order, destinationArrivedTo: $destinationArrivedTo)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnArrivedToDestinationCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnArrivedToDestinationCopyWith(
          HomeEvent$OnArrivedToDestination value,
          $Res Function(HomeEvent$OnArrivedToDestination) _then) =
      _$HomeEvent$OnArrivedToDestinationCopyWithImpl;
  @useResult
  $Res call({Fragment$CurrentOrder order, int destinationArrivedTo});
}

/// @nodoc
class _$HomeEvent$OnArrivedToDestinationCopyWithImpl<$Res>
    implements $HomeEvent$OnArrivedToDestinationCopyWith<$Res> {
  _$HomeEvent$OnArrivedToDestinationCopyWithImpl(this._self, this._then);

  final HomeEvent$OnArrivedToDestination _self;
  final $Res Function(HomeEvent$OnArrivedToDestination) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? order = null,
    Object? destinationArrivedTo = null,
  }) {
    return _then(HomeEvent$OnArrivedToDestination(
      order: null == order
          ? _self.order
          : order // ignore: cast_nullable_to_non_nullable
              as Fragment$CurrentOrder,
      destinationArrivedTo: null == destinationArrivedTo
          ? _self.destinationArrivedTo
          : destinationArrivedTo // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class HomeEvent$PaidInCash implements HomeEvent {
  const HomeEvent$PaidInCash({required this.orderId, required this.amount});

  final String orderId;
  final double amount;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$PaidInCashCopyWith<HomeEvent$PaidInCash> get copyWith =>
      _$HomeEvent$PaidInCashCopyWithImpl<HomeEvent$PaidInCash>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$PaidInCash &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, amount);

  @override
  String toString() {
    return 'HomeEvent.paidInCash(orderId: $orderId, amount: $amount)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$PaidInCashCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$PaidInCashCopyWith(HomeEvent$PaidInCash value,
          $Res Function(HomeEvent$PaidInCash) _then) =
      _$HomeEvent$PaidInCashCopyWithImpl;
  @useResult
  $Res call({String orderId, double amount});
}

/// @nodoc
class _$HomeEvent$PaidInCashCopyWithImpl<$Res>
    implements $HomeEvent$PaidInCashCopyWith<$Res> {
  _$HomeEvent$PaidInCashCopyWithImpl(this._self, this._then);

  final HomeEvent$PaidInCash _self;
  final $Res Function(HomeEvent$PaidInCash) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? amount = null,
  }) {
    return _then(HomeEvent$PaidInCash(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class HomeEvent$OnSummaryConfirmed implements HomeEvent {
  const HomeEvent$OnSummaryConfirmed({required this.orderId});

  final String orderId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnSummaryConfirmedCopyWith<HomeEvent$OnSummaryConfirmed>
      get copyWith => _$HomeEvent$OnSummaryConfirmedCopyWithImpl<
          HomeEvent$OnSummaryConfirmed>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnSummaryConfirmed &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString() {
    return 'HomeEvent.onSummaryConfirmed(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnSummaryConfirmedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnSummaryConfirmedCopyWith(
          HomeEvent$OnSummaryConfirmed value,
          $Res Function(HomeEvent$OnSummaryConfirmed) _then) =
      _$HomeEvent$OnSummaryConfirmedCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$HomeEvent$OnSummaryConfirmedCopyWithImpl<$Res>
    implements $HomeEvent$OnSummaryConfirmedCopyWith<$Res> {
  _$HomeEvent$OnSummaryConfirmedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnSummaryConfirmed _self;
  final $Res Function(HomeEvent$OnSummaryConfirmed) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(HomeEvent$OnSummaryConfirmed(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$ReviewSubmitted implements HomeEvent {
  const HomeEvent$ReviewSubmitted(
      {required this.orderId, required this.rating, required this.review});

  final String orderId;
  final int? rating;
  final String? review;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$ReviewSubmittedCopyWith<HomeEvent$ReviewSubmitted> get copyWith =>
      _$HomeEvent$ReviewSubmittedCopyWithImpl<HomeEvent$ReviewSubmitted>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$ReviewSubmitted &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, rating, review);

  @override
  String toString() {
    return 'HomeEvent.reviewSubmitted(orderId: $orderId, rating: $rating, review: $review)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$ReviewSubmittedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$ReviewSubmittedCopyWith(HomeEvent$ReviewSubmitted value,
          $Res Function(HomeEvent$ReviewSubmitted) _then) =
      _$HomeEvent$ReviewSubmittedCopyWithImpl;
  @useResult
  $Res call({String orderId, int? rating, String? review});
}

/// @nodoc
class _$HomeEvent$ReviewSubmittedCopyWithImpl<$Res>
    implements $HomeEvent$ReviewSubmittedCopyWith<$Res> {
  _$HomeEvent$ReviewSubmittedCopyWithImpl(this._self, this._then);

  final HomeEvent$ReviewSubmitted _self;
  final $Res Function(HomeEvent$ReviewSubmitted) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? rating = freezed,
    Object? review = freezed,
  }) {
    return _then(HomeEvent$ReviewSubmitted(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _self.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      review: freezed == review
          ? _self.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class HomeEvent$OnShowChat implements HomeEvent {
  const HomeEvent$OnShowChat();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent$OnShowChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.onShowChat()';
  }
}

/// @nodoc

class HomeEvent$OnHideChat implements HomeEvent {
  const HomeEvent$OnHideChat();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent$OnHideChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'HomeEvent.onHideChat()';
  }
}

/// @nodoc
mixin _$HomeState {
  ApiResponse<Fragment$ProfileFull> get profileFragment;
  Fragment$Point? get driverLocation;
  DateTime? get lastLocationUpdate; // Online state
  List<Fragment$OrderRequest> get orderRequests;
  Fragment$OrderRequest? get currentOrderRequest; // On trip state
  OnTripPage get page;
  String? get currentOrderId;
  ApiResponse<Fragment$CurrentOrder> get acceptOrderReponse;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.profileFragment, profileFragment) ||
                other.profileFragment == profileFragment) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation) &&
            (identical(other.lastLocationUpdate, lastLocationUpdate) ||
                other.lastLocationUpdate == lastLocationUpdate) &&
            const DeepCollectionEquality()
                .equals(other.orderRequests, orderRequests) &&
            (identical(other.currentOrderRequest, currentOrderRequest) ||
                other.currentOrderRequest == currentOrderRequest) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.currentOrderId, currentOrderId) ||
                other.currentOrderId == currentOrderId) &&
            (identical(other.acceptOrderReponse, acceptOrderReponse) ||
                other.acceptOrderReponse == acceptOrderReponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileFragment,
      driverLocation,
      lastLocationUpdate,
      const DeepCollectionEquality().hash(orderRequests),
      currentOrderRequest,
      page,
      currentOrderId,
      acceptOrderReponse);

  @override
  String toString() {
    return 'HomeState(profileFragment: $profileFragment, driverLocation: $driverLocation, lastLocationUpdate: $lastLocationUpdate, orderRequests: $orderRequests, currentOrderRequest: $currentOrderRequest, page: $page, currentOrderId: $currentOrderId, acceptOrderReponse: $acceptOrderReponse)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {ApiResponse<Fragment$ProfileFull> profileFragment,
      Fragment$Point? driverLocation,
      DateTime? lastLocationUpdate,
      List<Fragment$OrderRequest> orderRequests,
      Fragment$OrderRequest? currentOrderRequest,
      OnTripPage page,
      String? currentOrderId,
      ApiResponse<Fragment$CurrentOrder> acceptOrderReponse});

  $ApiResponseCopyWith<Fragment$ProfileFull, $Res> get profileFragment;
  $ApiResponseCopyWith<Fragment$CurrentOrder, $Res> get acceptOrderReponse;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileFragment = null,
    Object? driverLocation = freezed,
    Object? lastLocationUpdate = freezed,
    Object? orderRequests = null,
    Object? currentOrderRequest = freezed,
    Object? page = null,
    Object? currentOrderId = freezed,
    Object? acceptOrderReponse = null,
  }) {
    return _then(_self.copyWith(
      profileFragment: null == profileFragment
          ? _self.profileFragment
          : profileFragment // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$ProfileFull>,
      driverLocation: freezed == driverLocation
          ? _self.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as Fragment$Point?,
      lastLocationUpdate: freezed == lastLocationUpdate
          ? _self.lastLocationUpdate
          : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderRequests: null == orderRequests
          ? _self.orderRequests
          : orderRequests // ignore: cast_nullable_to_non_nullable
              as List<Fragment$OrderRequest>,
      currentOrderRequest: freezed == currentOrderRequest
          ? _self.currentOrderRequest
          : currentOrderRequest // ignore: cast_nullable_to_non_nullable
              as Fragment$OrderRequest?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as OnTripPage,
      currentOrderId: freezed == currentOrderId
          ? _self.currentOrderId
          : currentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptOrderReponse: null == acceptOrderReponse
          ? _self.acceptOrderReponse
          : acceptOrderReponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$CurrentOrder>,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$ProfileFull, $Res> get profileFragment {
    return $ApiResponseCopyWith<Fragment$ProfileFull, $Res>(
        _self.profileFragment, (value) {
      return _then(_self.copyWith(profileFragment: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$CurrentOrder, $Res> get acceptOrderReponse {
    return $ApiResponseCopyWith<Fragment$CurrentOrder, $Res>(
        _self.acceptOrderReponse, (value) {
      return _then(_self.copyWith(acceptOrderReponse: value));
    });
  }
}

/// @nodoc

class _HomeState extends HomeState {
  const _HomeState(
      {this.profileFragment = const ApiResponseInitial(),
      this.driverLocation,
      this.lastLocationUpdate,
      final List<Fragment$OrderRequest> orderRequests = const [],
      this.currentOrderRequest,
      this.page = OnTripPage.overview,
      this.currentOrderId,
      this.acceptOrderReponse = const ApiResponseInitial()})
      : _orderRequests = orderRequests,
        super._();

  @override
  @JsonKey()
  final ApiResponse<Fragment$ProfileFull> profileFragment;
  @override
  final Fragment$Point? driverLocation;
  @override
  final DateTime? lastLocationUpdate;
// Online state
  final List<Fragment$OrderRequest> _orderRequests;
// Online state
  @override
  @JsonKey()
  List<Fragment$OrderRequest> get orderRequests {
    if (_orderRequests is EqualUnmodifiableListView) return _orderRequests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orderRequests);
  }

  @override
  final Fragment$OrderRequest? currentOrderRequest;
// On trip state
  @override
  @JsonKey()
  final OnTripPage page;
  @override
  final String? currentOrderId;
  @override
  @JsonKey()
  final ApiResponse<Fragment$CurrentOrder> acceptOrderReponse;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.profileFragment, profileFragment) ||
                other.profileFragment == profileFragment) &&
            (identical(other.driverLocation, driverLocation) ||
                other.driverLocation == driverLocation) &&
            (identical(other.lastLocationUpdate, lastLocationUpdate) ||
                other.lastLocationUpdate == lastLocationUpdate) &&
            const DeepCollectionEquality()
                .equals(other._orderRequests, _orderRequests) &&
            (identical(other.currentOrderRequest, currentOrderRequest) ||
                other.currentOrderRequest == currentOrderRequest) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.currentOrderId, currentOrderId) ||
                other.currentOrderId == currentOrderId) &&
            (identical(other.acceptOrderReponse, acceptOrderReponse) ||
                other.acceptOrderReponse == acceptOrderReponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileFragment,
      driverLocation,
      lastLocationUpdate,
      const DeepCollectionEquality().hash(_orderRequests),
      currentOrderRequest,
      page,
      currentOrderId,
      acceptOrderReponse);

  @override
  String toString() {
    return 'HomeState(profileFragment: $profileFragment, driverLocation: $driverLocation, lastLocationUpdate: $lastLocationUpdate, orderRequests: $orderRequests, currentOrderRequest: $currentOrderRequest, page: $page, currentOrderId: $currentOrderId, acceptOrderReponse: $acceptOrderReponse)';
  }
}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) _then) =
      __$HomeStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ApiResponse<Fragment$ProfileFull> profileFragment,
      Fragment$Point? driverLocation,
      DateTime? lastLocationUpdate,
      List<Fragment$OrderRequest> orderRequests,
      Fragment$OrderRequest? currentOrderRequest,
      OnTripPage page,
      String? currentOrderId,
      ApiResponse<Fragment$CurrentOrder> acceptOrderReponse});

  @override
  $ApiResponseCopyWith<Fragment$ProfileFull, $Res> get profileFragment;
  @override
  $ApiResponseCopyWith<Fragment$CurrentOrder, $Res> get acceptOrderReponse;
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profileFragment = null,
    Object? driverLocation = freezed,
    Object? lastLocationUpdate = freezed,
    Object? orderRequests = null,
    Object? currentOrderRequest = freezed,
    Object? page = null,
    Object? currentOrderId = freezed,
    Object? acceptOrderReponse = null,
  }) {
    return _then(_HomeState(
      profileFragment: null == profileFragment
          ? _self.profileFragment
          : profileFragment // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$ProfileFull>,
      driverLocation: freezed == driverLocation
          ? _self.driverLocation
          : driverLocation // ignore: cast_nullable_to_non_nullable
              as Fragment$Point?,
      lastLocationUpdate: freezed == lastLocationUpdate
          ? _self.lastLocationUpdate
          : lastLocationUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      orderRequests: null == orderRequests
          ? _self._orderRequests
          : orderRequests // ignore: cast_nullable_to_non_nullable
              as List<Fragment$OrderRequest>,
      currentOrderRequest: freezed == currentOrderRequest
          ? _self.currentOrderRequest
          : currentOrderRequest // ignore: cast_nullable_to_non_nullable
              as Fragment$OrderRequest?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as OnTripPage,
      currentOrderId: freezed == currentOrderId
          ? _self.currentOrderId
          : currentOrderId // ignore: cast_nullable_to_non_nullable
              as String?,
      acceptOrderReponse: null == acceptOrderReponse
          ? _self.acceptOrderReponse
          : acceptOrderReponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$CurrentOrder>,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$ProfileFull, $Res> get profileFragment {
    return $ApiResponseCopyWith<Fragment$ProfileFull, $Res>(
        _self.profileFragment, (value) {
      return _then(_self.copyWith(profileFragment: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$CurrentOrder, $Res> get acceptOrderReponse {
    return $ApiResponseCopyWith<Fragment$CurrentOrder, $Res>(
        _self.acceptOrderReponse, (value) {
      return _then(_self.copyWith(acceptOrderReponse: value));
    });
  }
}

// dart format on
