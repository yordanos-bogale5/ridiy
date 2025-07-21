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
mixin _$HomeState implements DiagnosticableTreeMixin {
  MapViewController? get mapViewController;
  OrderSubmissionPage get orderSubmissionPage; // Order Submission
  Enum$TaxiOrderType get orderType;
  List<Place?> get waypoints;
  List<Fragment$Point> get driversAround; // Order Submission - Delivery
  Input$DeliveryContactInput? get senderContact;
  Input$DeliveryContactInput? get receiverContact; // Confirm Location
  int? get selectedWaypointIndex;
  ApiResponse<Place> get selectedLocationResponse; // Ride Preview
  ApiResponse<Query$CalculateFare> get ridePreviewFareResponse;
  PaymentMethodUnion? get selectedPaymentMethod;
  Fragment$ServiceCategory? get selectedServiceCategory;
  Fragment$Service? get selectedService;
  String? get couponCode;
  bool get isTwoWayRide;
  int? get waitTime;
  List<Fragment$RideOption> get rideOptions;
  DateTime? get selectedDateTime;
  ApiResponse<Fragment$ActiveOrder> get createOrderResponse; // Ride In Progress
  ApiResponse<List<Fragment$ActiveOrder>> get currentOrdersResponse;
  String? get currentRideId;
  TrackOrderPage get page;
  ApiResponse<void> get cancelOrderResponse;
  ApiResponse<void> get sendMessageState;
  ApiResponse<void> get reviewSubmissionState;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeStateCopyWith<HomeState> get copyWith =>
      _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('mapViewController', mapViewController))
      ..add(DiagnosticsProperty('orderSubmissionPage', orderSubmissionPage))
      ..add(DiagnosticsProperty('orderType', orderType))
      ..add(DiagnosticsProperty('waypoints', waypoints))
      ..add(DiagnosticsProperty('driversAround', driversAround))
      ..add(DiagnosticsProperty('senderContact', senderContact))
      ..add(DiagnosticsProperty('receiverContact', receiverContact))
      ..add(DiagnosticsProperty('selectedWaypointIndex', selectedWaypointIndex))
      ..add(DiagnosticsProperty(
          'selectedLocationResponse', selectedLocationResponse))
      ..add(DiagnosticsProperty(
          'ridePreviewFareResponse', ridePreviewFareResponse))
      ..add(DiagnosticsProperty('selectedPaymentMethod', selectedPaymentMethod))
      ..add(DiagnosticsProperty(
          'selectedServiceCategory', selectedServiceCategory))
      ..add(DiagnosticsProperty('selectedService', selectedService))
      ..add(DiagnosticsProperty('couponCode', couponCode))
      ..add(DiagnosticsProperty('isTwoWayRide', isTwoWayRide))
      ..add(DiagnosticsProperty('waitTime', waitTime))
      ..add(DiagnosticsProperty('rideOptions', rideOptions))
      ..add(DiagnosticsProperty('selectedDateTime', selectedDateTime))
      ..add(DiagnosticsProperty('createOrderResponse', createOrderResponse))
      ..add(DiagnosticsProperty('currentOrdersResponse', currentOrdersResponse))
      ..add(DiagnosticsProperty('currentRideId', currentRideId))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('cancelOrderResponse', cancelOrderResponse))
      ..add(DiagnosticsProperty('sendMessageState', sendMessageState))
      ..add(
          DiagnosticsProperty('reviewSubmissionState', reviewSubmissionState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeState &&
            (identical(other.mapViewController, mapViewController) ||
                other.mapViewController == mapViewController) &&
            (identical(other.orderSubmissionPage, orderSubmissionPage) ||
                other.orderSubmissionPage == orderSubmissionPage) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            const DeepCollectionEquality().equals(other.waypoints, waypoints) &&
            const DeepCollectionEquality()
                .equals(other.driversAround, driversAround) &&
            (identical(other.senderContact, senderContact) ||
                other.senderContact == senderContact) &&
            (identical(other.receiverContact, receiverContact) ||
                other.receiverContact == receiverContact) &&
            (identical(other.selectedWaypointIndex, selectedWaypointIndex) ||
                other.selectedWaypointIndex == selectedWaypointIndex) &&
            (identical(
                    other.selectedLocationResponse, selectedLocationResponse) ||
                other.selectedLocationResponse == selectedLocationResponse) &&
            (identical(other.ridePreviewFareResponse, ridePreviewFareResponse) ||
                other.ridePreviewFareResponse == ridePreviewFareResponse) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(
                    other.selectedServiceCategory, selectedServiceCategory) ||
                other.selectedServiceCategory == selectedServiceCategory) &&
            (identical(other.selectedService, selectedService) ||
                other.selectedService == selectedService) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isTwoWayRide, isTwoWayRide) ||
                other.isTwoWayRide == isTwoWayRide) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            const DeepCollectionEquality()
                .equals(other.rideOptions, rideOptions) &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime) &&
            (identical(other.createOrderResponse, createOrderResponse) ||
                other.createOrderResponse == createOrderResponse) &&
            (identical(other.currentOrdersResponse, currentOrdersResponse) ||
                other.currentOrdersResponse == currentOrdersResponse) &&
            (identical(other.currentRideId, currentRideId) ||
                other.currentRideId == currentRideId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.cancelOrderResponse, cancelOrderResponse) ||
                other.cancelOrderResponse == cancelOrderResponse) &&
            (identical(other.sendMessageState, sendMessageState) ||
                other.sendMessageState == sendMessageState) &&
            (identical(other.reviewSubmissionState, reviewSubmissionState) ||
                other.reviewSubmissionState == reviewSubmissionState));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        mapViewController,
        orderSubmissionPage,
        orderType,
        const DeepCollectionEquality().hash(waypoints),
        const DeepCollectionEquality().hash(driversAround),
        senderContact,
        receiverContact,
        selectedWaypointIndex,
        selectedLocationResponse,
        ridePreviewFareResponse,
        selectedPaymentMethod,
        selectedServiceCategory,
        selectedService,
        couponCode,
        isTwoWayRide,
        waitTime,
        const DeepCollectionEquality().hash(rideOptions),
        selectedDateTime,
        createOrderResponse,
        currentOrdersResponse,
        currentRideId,
        page,
        cancelOrderResponse,
        sendMessageState,
        reviewSubmissionState
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(mapViewController: $mapViewController, orderSubmissionPage: $orderSubmissionPage, orderType: $orderType, waypoints: $waypoints, driversAround: $driversAround, senderContact: $senderContact, receiverContact: $receiverContact, selectedWaypointIndex: $selectedWaypointIndex, selectedLocationResponse: $selectedLocationResponse, ridePreviewFareResponse: $ridePreviewFareResponse, selectedPaymentMethod: $selectedPaymentMethod, selectedServiceCategory: $selectedServiceCategory, selectedService: $selectedService, couponCode: $couponCode, isTwoWayRide: $isTwoWayRide, waitTime: $waitTime, rideOptions: $rideOptions, selectedDateTime: $selectedDateTime, createOrderResponse: $createOrderResponse, currentOrdersResponse: $currentOrdersResponse, currentRideId: $currentRideId, page: $page, cancelOrderResponse: $cancelOrderResponse, sendMessageState: $sendMessageState, reviewSubmissionState: $reviewSubmissionState)';
  }
}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) =
      _$HomeStateCopyWithImpl;
  @useResult
  $Res call(
      {MapViewController? mapViewController,
      OrderSubmissionPage orderSubmissionPage,
      Enum$TaxiOrderType orderType,
      List<Place?> waypoints,
      List<Fragment$Point> driversAround,
      Input$DeliveryContactInput? senderContact,
      Input$DeliveryContactInput? receiverContact,
      int? selectedWaypointIndex,
      ApiResponse<Place> selectedLocationResponse,
      ApiResponse<Query$CalculateFare> ridePreviewFareResponse,
      PaymentMethodUnion? selectedPaymentMethod,
      Fragment$ServiceCategory? selectedServiceCategory,
      Fragment$Service? selectedService,
      String? couponCode,
      bool isTwoWayRide,
      int? waitTime,
      List<Fragment$RideOption> rideOptions,
      DateTime? selectedDateTime,
      ApiResponse<Fragment$ActiveOrder> createOrderResponse,
      ApiResponse<List<Fragment$ActiveOrder>> currentOrdersResponse,
      String? currentRideId,
      TrackOrderPage page,
      ApiResponse<void> cancelOrderResponse,
      ApiResponse<void> sendMessageState,
      ApiResponse<void> reviewSubmissionState});

  $ApiResponseCopyWith<Place, $Res> get selectedLocationResponse;
  $ApiResponseCopyWith<Query$CalculateFare, $Res> get ridePreviewFareResponse;
  $ApiResponseCopyWith<Fragment$ActiveOrder, $Res> get createOrderResponse;
  $ApiResponseCopyWith<List<Fragment$ActiveOrder>, $Res>
      get currentOrdersResponse;
  $ApiResponseCopyWith<void, $Res> get cancelOrderResponse;
  $ApiResponseCopyWith<void, $Res> get sendMessageState;
  $ApiResponseCopyWith<void, $Res> get reviewSubmissionState;
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
    Object? mapViewController = freezed,
    Object? orderSubmissionPage = null,
    Object? orderType = null,
    Object? waypoints = null,
    Object? driversAround = null,
    Object? senderContact = freezed,
    Object? receiverContact = freezed,
    Object? selectedWaypointIndex = freezed,
    Object? selectedLocationResponse = null,
    Object? ridePreviewFareResponse = null,
    Object? selectedPaymentMethod = freezed,
    Object? selectedServiceCategory = freezed,
    Object? selectedService = freezed,
    Object? couponCode = freezed,
    Object? isTwoWayRide = null,
    Object? waitTime = freezed,
    Object? rideOptions = null,
    Object? selectedDateTime = freezed,
    Object? createOrderResponse = null,
    Object? currentOrdersResponse = null,
    Object? currentRideId = freezed,
    Object? page = null,
    Object? cancelOrderResponse = null,
    Object? sendMessageState = null,
    Object? reviewSubmissionState = null,
  }) {
    return _then(_self.copyWith(
      mapViewController: freezed == mapViewController
          ? _self.mapViewController
          : mapViewController // ignore: cast_nullable_to_non_nullable
              as MapViewController?,
      orderSubmissionPage: null == orderSubmissionPage
          ? _self.orderSubmissionPage
          : orderSubmissionPage // ignore: cast_nullable_to_non_nullable
              as OrderSubmissionPage,
      orderType: null == orderType
          ? _self.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as Enum$TaxiOrderType,
      waypoints: null == waypoints
          ? _self.waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Place?>,
      driversAround: null == driversAround
          ? _self.driversAround
          : driversAround // ignore: cast_nullable_to_non_nullable
              as List<Fragment$Point>,
      senderContact: freezed == senderContact
          ? _self.senderContact
          : senderContact // ignore: cast_nullable_to_non_nullable
              as Input$DeliveryContactInput?,
      receiverContact: freezed == receiverContact
          ? _self.receiverContact
          : receiverContact // ignore: cast_nullable_to_non_nullable
              as Input$DeliveryContactInput?,
      selectedWaypointIndex: freezed == selectedWaypointIndex
          ? _self.selectedWaypointIndex
          : selectedWaypointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedLocationResponse: null == selectedLocationResponse
          ? _self.selectedLocationResponse
          : selectedLocationResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Place>,
      ridePreviewFareResponse: null == ridePreviewFareResponse
          ? _self.ridePreviewFareResponse
          : ridePreviewFareResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$CalculateFare>,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _self.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
      selectedServiceCategory: freezed == selectedServiceCategory
          ? _self.selectedServiceCategory
          : selectedServiceCategory // ignore: cast_nullable_to_non_nullable
              as Fragment$ServiceCategory?,
      selectedService: freezed == selectedService
          ? _self.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as Fragment$Service?,
      couponCode: freezed == couponCode
          ? _self.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isTwoWayRide: null == isTwoWayRide
          ? _self.isTwoWayRide
          : isTwoWayRide // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: freezed == waitTime
          ? _self.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      rideOptions: null == rideOptions
          ? _self.rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<Fragment$RideOption>,
      selectedDateTime: freezed == selectedDateTime
          ? _self.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createOrderResponse: null == createOrderResponse
          ? _self.createOrderResponse
          : createOrderResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$ActiveOrder>,
      currentOrdersResponse: null == currentOrdersResponse
          ? _self.currentOrdersResponse
          : currentOrdersResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Fragment$ActiveOrder>>,
      currentRideId: freezed == currentRideId
          ? _self.currentRideId
          : currentRideId // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as TrackOrderPage,
      cancelOrderResponse: null == cancelOrderResponse
          ? _self.cancelOrderResponse
          : cancelOrderResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<void>,
      sendMessageState: null == sendMessageState
          ? _self.sendMessageState
          : sendMessageState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<void>,
      reviewSubmissionState: null == reviewSubmissionState
          ? _self.reviewSubmissionState
          : reviewSubmissionState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<void>,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Place, $Res> get selectedLocationResponse {
    return $ApiResponseCopyWith<Place, $Res>(_self.selectedLocationResponse,
        (value) {
      return _then(_self.copyWith(selectedLocationResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$CalculateFare, $Res> get ridePreviewFareResponse {
    return $ApiResponseCopyWith<Query$CalculateFare, $Res>(
        _self.ridePreviewFareResponse, (value) {
      return _then(_self.copyWith(ridePreviewFareResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$ActiveOrder, $Res> get createOrderResponse {
    return $ApiResponseCopyWith<Fragment$ActiveOrder, $Res>(
        _self.createOrderResponse, (value) {
      return _then(_self.copyWith(createOrderResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Fragment$ActiveOrder>, $Res>
      get currentOrdersResponse {
    return $ApiResponseCopyWith<List<Fragment$ActiveOrder>, $Res>(
        _self.currentOrdersResponse, (value) {
      return _then(_self.copyWith(currentOrdersResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<void, $Res> get cancelOrderResponse {
    return $ApiResponseCopyWith<void, $Res>(_self.cancelOrderResponse, (value) {
      return _then(_self.copyWith(cancelOrderResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<void, $Res> get sendMessageState {
    return $ApiResponseCopyWith<void, $Res>(_self.sendMessageState, (value) {
      return _then(_self.copyWith(sendMessageState: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<void, $Res> get reviewSubmissionState {
    return $ApiResponseCopyWith<void, $Res>(_self.reviewSubmissionState,
        (value) {
      return _then(_self.copyWith(reviewSubmissionState: value));
    });
  }
}

/// @nodoc

class _HomeState extends HomeState with DiagnosticableTreeMixin {
  const _HomeState(
      {this.mapViewController,
      this.orderSubmissionPage = OrderSubmissionPage.welcome,
      this.orderType = Enum$TaxiOrderType.Ride,
      final List<Place?> waypoints = const [],
      final List<Fragment$Point> driversAround = const [],
      this.senderContact,
      this.receiverContact,
      this.selectedWaypointIndex,
      this.selectedLocationResponse = const ApiResponse.initial(),
      this.ridePreviewFareResponse = const ApiResponse.initial(),
      this.selectedPaymentMethod,
      this.selectedServiceCategory,
      this.selectedService,
      this.couponCode,
      this.isTwoWayRide = false,
      this.waitTime,
      final List<Fragment$RideOption> rideOptions = const [],
      this.selectedDateTime,
      this.createOrderResponse = const ApiResponse.initial(),
      this.currentOrdersResponse = const ApiResponse.initial(),
      this.currentRideId,
      this.page = TrackOrderPage.overview,
      this.cancelOrderResponse = const ApiResponseInitial(),
      this.sendMessageState = const ApiResponseInitial(),
      this.reviewSubmissionState = const ApiResponseInitial()})
      : _waypoints = waypoints,
        _driversAround = driversAround,
        _rideOptions = rideOptions,
        super._();

  @override
  final MapViewController? mapViewController;
  @override
  @JsonKey()
  final OrderSubmissionPage orderSubmissionPage;
// Order Submission
  @override
  @JsonKey()
  final Enum$TaxiOrderType orderType;
  final List<Place?> _waypoints;
  @override
  @JsonKey()
  List<Place?> get waypoints {
    if (_waypoints is EqualUnmodifiableListView) return _waypoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waypoints);
  }

  final List<Fragment$Point> _driversAround;
  @override
  @JsonKey()
  List<Fragment$Point> get driversAround {
    if (_driversAround is EqualUnmodifiableListView) return _driversAround;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_driversAround);
  }

// Order Submission - Delivery
  @override
  final Input$DeliveryContactInput? senderContact;
  @override
  final Input$DeliveryContactInput? receiverContact;
// Confirm Location
  @override
  final int? selectedWaypointIndex;
  @override
  @JsonKey()
  final ApiResponse<Place> selectedLocationResponse;
// Ride Preview
  @override
  @JsonKey()
  final ApiResponse<Query$CalculateFare> ridePreviewFareResponse;
  @override
  final PaymentMethodUnion? selectedPaymentMethod;
  @override
  final Fragment$ServiceCategory? selectedServiceCategory;
  @override
  final Fragment$Service? selectedService;
  @override
  final String? couponCode;
  @override
  @JsonKey()
  final bool isTwoWayRide;
  @override
  final int? waitTime;
  final List<Fragment$RideOption> _rideOptions;
  @override
  @JsonKey()
  List<Fragment$RideOption> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  @override
  final DateTime? selectedDateTime;
  @override
  @JsonKey()
  final ApiResponse<Fragment$ActiveOrder> createOrderResponse;
// Ride In Progress
  @override
  @JsonKey()
  final ApiResponse<List<Fragment$ActiveOrder>> currentOrdersResponse;
  @override
  final String? currentRideId;
  @override
  @JsonKey()
  final TrackOrderPage page;
  @override
  @JsonKey()
  final ApiResponse<void> cancelOrderResponse;
  @override
  @JsonKey()
  final ApiResponse<void> sendMessageState;
  @override
  @JsonKey()
  final ApiResponse<void> reviewSubmissionState;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeState'))
      ..add(DiagnosticsProperty('mapViewController', mapViewController))
      ..add(DiagnosticsProperty('orderSubmissionPage', orderSubmissionPage))
      ..add(DiagnosticsProperty('orderType', orderType))
      ..add(DiagnosticsProperty('waypoints', waypoints))
      ..add(DiagnosticsProperty('driversAround', driversAround))
      ..add(DiagnosticsProperty('senderContact', senderContact))
      ..add(DiagnosticsProperty('receiverContact', receiverContact))
      ..add(DiagnosticsProperty('selectedWaypointIndex', selectedWaypointIndex))
      ..add(DiagnosticsProperty(
          'selectedLocationResponse', selectedLocationResponse))
      ..add(DiagnosticsProperty(
          'ridePreviewFareResponse', ridePreviewFareResponse))
      ..add(DiagnosticsProperty('selectedPaymentMethod', selectedPaymentMethod))
      ..add(DiagnosticsProperty(
          'selectedServiceCategory', selectedServiceCategory))
      ..add(DiagnosticsProperty('selectedService', selectedService))
      ..add(DiagnosticsProperty('couponCode', couponCode))
      ..add(DiagnosticsProperty('isTwoWayRide', isTwoWayRide))
      ..add(DiagnosticsProperty('waitTime', waitTime))
      ..add(DiagnosticsProperty('rideOptions', rideOptions))
      ..add(DiagnosticsProperty('selectedDateTime', selectedDateTime))
      ..add(DiagnosticsProperty('createOrderResponse', createOrderResponse))
      ..add(DiagnosticsProperty('currentOrdersResponse', currentOrdersResponse))
      ..add(DiagnosticsProperty('currentRideId', currentRideId))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('cancelOrderResponse', cancelOrderResponse))
      ..add(DiagnosticsProperty('sendMessageState', sendMessageState))
      ..add(
          DiagnosticsProperty('reviewSubmissionState', reviewSubmissionState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            (identical(other.mapViewController, mapViewController) ||
                other.mapViewController == mapViewController) &&
            (identical(other.orderSubmissionPage, orderSubmissionPage) ||
                other.orderSubmissionPage == orderSubmissionPage) &&
            (identical(other.orderType, orderType) ||
                other.orderType == orderType) &&
            const DeepCollectionEquality()
                .equals(other._waypoints, _waypoints) &&
            const DeepCollectionEquality()
                .equals(other._driversAround, _driversAround) &&
            (identical(other.senderContact, senderContact) ||
                other.senderContact == senderContact) &&
            (identical(other.receiverContact, receiverContact) ||
                other.receiverContact == receiverContact) &&
            (identical(other.selectedWaypointIndex, selectedWaypointIndex) ||
                other.selectedWaypointIndex == selectedWaypointIndex) &&
            (identical(
                    other.selectedLocationResponse, selectedLocationResponse) ||
                other.selectedLocationResponse == selectedLocationResponse) &&
            (identical(other.ridePreviewFareResponse, ridePreviewFareResponse) ||
                other.ridePreviewFareResponse == ridePreviewFareResponse) &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod) &&
            (identical(
                    other.selectedServiceCategory, selectedServiceCategory) ||
                other.selectedServiceCategory == selectedServiceCategory) &&
            (identical(other.selectedService, selectedService) ||
                other.selectedService == selectedService) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.isTwoWayRide, isTwoWayRide) ||
                other.isTwoWayRide == isTwoWayRide) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions) &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime) &&
            (identical(other.createOrderResponse, createOrderResponse) ||
                other.createOrderResponse == createOrderResponse) &&
            (identical(other.currentOrdersResponse, currentOrdersResponse) ||
                other.currentOrdersResponse == currentOrdersResponse) &&
            (identical(other.currentRideId, currentRideId) ||
                other.currentRideId == currentRideId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.cancelOrderResponse, cancelOrderResponse) ||
                other.cancelOrderResponse == cancelOrderResponse) &&
            (identical(other.sendMessageState, sendMessageState) ||
                other.sendMessageState == sendMessageState) &&
            (identical(other.reviewSubmissionState, reviewSubmissionState) ||
                other.reviewSubmissionState == reviewSubmissionState));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        mapViewController,
        orderSubmissionPage,
        orderType,
        const DeepCollectionEquality().hash(_waypoints),
        const DeepCollectionEquality().hash(_driversAround),
        senderContact,
        receiverContact,
        selectedWaypointIndex,
        selectedLocationResponse,
        ridePreviewFareResponse,
        selectedPaymentMethod,
        selectedServiceCategory,
        selectedService,
        couponCode,
        isTwoWayRide,
        waitTime,
        const DeepCollectionEquality().hash(_rideOptions),
        selectedDateTime,
        createOrderResponse,
        currentOrdersResponse,
        currentRideId,
        page,
        cancelOrderResponse,
        sendMessageState,
        reviewSubmissionState
      ]);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState(mapViewController: $mapViewController, orderSubmissionPage: $orderSubmissionPage, orderType: $orderType, waypoints: $waypoints, driversAround: $driversAround, senderContact: $senderContact, receiverContact: $receiverContact, selectedWaypointIndex: $selectedWaypointIndex, selectedLocationResponse: $selectedLocationResponse, ridePreviewFareResponse: $ridePreviewFareResponse, selectedPaymentMethod: $selectedPaymentMethod, selectedServiceCategory: $selectedServiceCategory, selectedService: $selectedService, couponCode: $couponCode, isTwoWayRide: $isTwoWayRide, waitTime: $waitTime, rideOptions: $rideOptions, selectedDateTime: $selectedDateTime, createOrderResponse: $createOrderResponse, currentOrdersResponse: $currentOrdersResponse, currentRideId: $currentRideId, page: $page, cancelOrderResponse: $cancelOrderResponse, sendMessageState: $sendMessageState, reviewSubmissionState: $reviewSubmissionState)';
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
      {MapViewController? mapViewController,
      OrderSubmissionPage orderSubmissionPage,
      Enum$TaxiOrderType orderType,
      List<Place?> waypoints,
      List<Fragment$Point> driversAround,
      Input$DeliveryContactInput? senderContact,
      Input$DeliveryContactInput? receiverContact,
      int? selectedWaypointIndex,
      ApiResponse<Place> selectedLocationResponse,
      ApiResponse<Query$CalculateFare> ridePreviewFareResponse,
      PaymentMethodUnion? selectedPaymentMethod,
      Fragment$ServiceCategory? selectedServiceCategory,
      Fragment$Service? selectedService,
      String? couponCode,
      bool isTwoWayRide,
      int? waitTime,
      List<Fragment$RideOption> rideOptions,
      DateTime? selectedDateTime,
      ApiResponse<Fragment$ActiveOrder> createOrderResponse,
      ApiResponse<List<Fragment$ActiveOrder>> currentOrdersResponse,
      String? currentRideId,
      TrackOrderPage page,
      ApiResponse<void> cancelOrderResponse,
      ApiResponse<void> sendMessageState,
      ApiResponse<void> reviewSubmissionState});

  @override
  $ApiResponseCopyWith<Place, $Res> get selectedLocationResponse;
  @override
  $ApiResponseCopyWith<Query$CalculateFare, $Res> get ridePreviewFareResponse;
  @override
  $ApiResponseCopyWith<Fragment$ActiveOrder, $Res> get createOrderResponse;
  @override
  $ApiResponseCopyWith<List<Fragment$ActiveOrder>, $Res>
      get currentOrdersResponse;
  @override
  $ApiResponseCopyWith<void, $Res> get cancelOrderResponse;
  @override
  $ApiResponseCopyWith<void, $Res> get sendMessageState;
  @override
  $ApiResponseCopyWith<void, $Res> get reviewSubmissionState;
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
    Object? mapViewController = freezed,
    Object? orderSubmissionPage = null,
    Object? orderType = null,
    Object? waypoints = null,
    Object? driversAround = null,
    Object? senderContact = freezed,
    Object? receiverContact = freezed,
    Object? selectedWaypointIndex = freezed,
    Object? selectedLocationResponse = null,
    Object? ridePreviewFareResponse = null,
    Object? selectedPaymentMethod = freezed,
    Object? selectedServiceCategory = freezed,
    Object? selectedService = freezed,
    Object? couponCode = freezed,
    Object? isTwoWayRide = null,
    Object? waitTime = freezed,
    Object? rideOptions = null,
    Object? selectedDateTime = freezed,
    Object? createOrderResponse = null,
    Object? currentOrdersResponse = null,
    Object? currentRideId = freezed,
    Object? page = null,
    Object? cancelOrderResponse = null,
    Object? sendMessageState = null,
    Object? reviewSubmissionState = null,
  }) {
    return _then(_HomeState(
      mapViewController: freezed == mapViewController
          ? _self.mapViewController
          : mapViewController // ignore: cast_nullable_to_non_nullable
              as MapViewController?,
      orderSubmissionPage: null == orderSubmissionPage
          ? _self.orderSubmissionPage
          : orderSubmissionPage // ignore: cast_nullable_to_non_nullable
              as OrderSubmissionPage,
      orderType: null == orderType
          ? _self.orderType
          : orderType // ignore: cast_nullable_to_non_nullable
              as Enum$TaxiOrderType,
      waypoints: null == waypoints
          ? _self._waypoints
          : waypoints // ignore: cast_nullable_to_non_nullable
              as List<Place?>,
      driversAround: null == driversAround
          ? _self._driversAround
          : driversAround // ignore: cast_nullable_to_non_nullable
              as List<Fragment$Point>,
      senderContact: freezed == senderContact
          ? _self.senderContact
          : senderContact // ignore: cast_nullable_to_non_nullable
              as Input$DeliveryContactInput?,
      receiverContact: freezed == receiverContact
          ? _self.receiverContact
          : receiverContact // ignore: cast_nullable_to_non_nullable
              as Input$DeliveryContactInput?,
      selectedWaypointIndex: freezed == selectedWaypointIndex
          ? _self.selectedWaypointIndex
          : selectedWaypointIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedLocationResponse: null == selectedLocationResponse
          ? _self.selectedLocationResponse
          : selectedLocationResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Place>,
      ridePreviewFareResponse: null == ridePreviewFareResponse
          ? _self.ridePreviewFareResponse
          : ridePreviewFareResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$CalculateFare>,
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _self.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion?,
      selectedServiceCategory: freezed == selectedServiceCategory
          ? _self.selectedServiceCategory
          : selectedServiceCategory // ignore: cast_nullable_to_non_nullable
              as Fragment$ServiceCategory?,
      selectedService: freezed == selectedService
          ? _self.selectedService
          : selectedService // ignore: cast_nullable_to_non_nullable
              as Fragment$Service?,
      couponCode: freezed == couponCode
          ? _self.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      isTwoWayRide: null == isTwoWayRide
          ? _self.isTwoWayRide
          : isTwoWayRide // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: freezed == waitTime
          ? _self.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      rideOptions: null == rideOptions
          ? _self._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<Fragment$RideOption>,
      selectedDateTime: freezed == selectedDateTime
          ? _self.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createOrderResponse: null == createOrderResponse
          ? _self.createOrderResponse
          : createOrderResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Fragment$ActiveOrder>,
      currentOrdersResponse: null == currentOrdersResponse
          ? _self.currentOrdersResponse
          : currentOrdersResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<List<Fragment$ActiveOrder>>,
      currentRideId: freezed == currentRideId
          ? _self.currentRideId
          : currentRideId // ignore: cast_nullable_to_non_nullable
              as String?,
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as TrackOrderPage,
      cancelOrderResponse: null == cancelOrderResponse
          ? _self.cancelOrderResponse
          : cancelOrderResponse // ignore: cast_nullable_to_non_nullable
              as ApiResponse<void>,
      sendMessageState: null == sendMessageState
          ? _self.sendMessageState
          : sendMessageState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<void>,
      reviewSubmissionState: null == reviewSubmissionState
          ? _self.reviewSubmissionState
          : reviewSubmissionState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<void>,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Place, $Res> get selectedLocationResponse {
    return $ApiResponseCopyWith<Place, $Res>(_self.selectedLocationResponse,
        (value) {
      return _then(_self.copyWith(selectedLocationResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$CalculateFare, $Res> get ridePreviewFareResponse {
    return $ApiResponseCopyWith<Query$CalculateFare, $Res>(
        _self.ridePreviewFareResponse, (value) {
      return _then(_self.copyWith(ridePreviewFareResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Fragment$ActiveOrder, $Res> get createOrderResponse {
    return $ApiResponseCopyWith<Fragment$ActiveOrder, $Res>(
        _self.createOrderResponse, (value) {
      return _then(_self.copyWith(createOrderResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<List<Fragment$ActiveOrder>, $Res>
      get currentOrdersResponse {
    return $ApiResponseCopyWith<List<Fragment$ActiveOrder>, $Res>(
        _self.currentOrdersResponse, (value) {
      return _then(_self.copyWith(currentOrdersResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<void, $Res> get cancelOrderResponse {
    return $ApiResponseCopyWith<void, $Res>(_self.cancelOrderResponse, (value) {
      return _then(_self.copyWith(cancelOrderResponse: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<void, $Res> get sendMessageState {
    return $ApiResponseCopyWith<void, $Res>(_self.sendMessageState, (value) {
      return _then(_self.copyWith(sendMessageState: value));
    });
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<void, $Res> get reviewSubmissionState {
    return $ApiResponseCopyWith<void, $Res>(_self.reviewSubmissionState,
        (value) {
      return _then(_self.copyWith(reviewSubmissionState: value));
    });
  }
}

/// @nodoc
mixin _$HomeEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent()';
  }
}

/// @nodoc
class $HomeEventCopyWith<$Res> {
  $HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}

/// @nodoc

class HomeEvent$OnStarted with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$OnStarted(
      {required this.authenticated, required this.currentLocationPlace});

  final bool authenticated;
  final Place? currentLocationPlace;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnStartedCopyWith<HomeEvent$OnStarted> get copyWith =>
      _$HomeEvent$OnStartedCopyWithImpl<HomeEvent$OnStarted>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onStarted'))
      ..add(DiagnosticsProperty('authenticated', authenticated))
      ..add(DiagnosticsProperty('currentLocationPlace', currentLocationPlace));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnStarted &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated) &&
            (identical(other.currentLocationPlace, currentLocationPlace) ||
                other.currentLocationPlace == currentLocationPlace));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, authenticated, currentLocationPlace);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onStarted(authenticated: $authenticated, currentLocationPlace: $currentLocationPlace)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnStartedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnStartedCopyWith(
          HomeEvent$OnStarted value, $Res Function(HomeEvent$OnStarted) _then) =
      _$HomeEvent$OnStartedCopyWithImpl;
  @useResult
  $Res call({bool authenticated, Place? currentLocationPlace});
}

/// @nodoc
class _$HomeEvent$OnStartedCopyWithImpl<$Res>
    implements $HomeEvent$OnStartedCopyWith<$Res> {
  _$HomeEvent$OnStartedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnStarted _self;
  final $Res Function(HomeEvent$OnStarted) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authenticated = null,
    Object? currentLocationPlace = freezed,
  }) {
    return _then(HomeEvent$OnStarted(
      authenticated: null == authenticated
          ? _self.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      currentLocationPlace: freezed == currentLocationPlace
          ? _self.currentLocationPlace
          : currentLocationPlace // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class HomeEvent$OnMapReady with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$OnMapReady({required this.controller});

  final MapViewController controller;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnMapReadyCopyWith<HomeEvent$OnMapReady> get copyWith =>
      _$HomeEvent$OnMapReadyCopyWithImpl<HomeEvent$OnMapReady>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onMapReady'))
      ..add(DiagnosticsProperty('controller', controller));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnMapReady &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onMapReady(controller: $controller)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnMapReadyCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnMapReadyCopyWith(HomeEvent$OnMapReady value,
          $Res Function(HomeEvent$OnMapReady) _then) =
      _$HomeEvent$OnMapReadyCopyWithImpl;
  @useResult
  $Res call({MapViewController controller});
}

/// @nodoc
class _$HomeEvent$OnMapReadyCopyWithImpl<$Res>
    implements $HomeEvent$OnMapReadyCopyWith<$Res> {
  _$HomeEvent$OnMapReadyCopyWithImpl(this._self, this._then);

  final HomeEvent$OnMapReady _self;
  final $Res Function(HomeEvent$OnMapReady) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? controller = null,
  }) {
    return _then(HomeEvent$OnMapReady(
      controller: null == controller
          ? _self.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as MapViewController,
    ));
  }
}

/// @nodoc

class HomeEvent$OnMapMoved with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$OnMapMoved({required this.selectedLocation});

  final ApiResponse<Place> selectedLocation;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnMapMovedCopyWith<HomeEvent$OnMapMoved> get copyWith =>
      _$HomeEvent$OnMapMovedCopyWithImpl<HomeEvent$OnMapMoved>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onMapMoved'))
      ..add(DiagnosticsProperty('selectedLocation', selectedLocation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnMapMoved &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onMapMoved(selectedLocation: $selectedLocation)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnMapMovedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnMapMovedCopyWith(HomeEvent$OnMapMoved value,
          $Res Function(HomeEvent$OnMapMoved) _then) =
      _$HomeEvent$OnMapMovedCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Place> selectedLocation});

  $ApiResponseCopyWith<Place, $Res> get selectedLocation;
}

/// @nodoc
class _$HomeEvent$OnMapMovedCopyWithImpl<$Res>
    implements $HomeEvent$OnMapMovedCopyWith<$Res> {
  _$HomeEvent$OnMapMovedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnMapMoved _self;
  final $Res Function(HomeEvent$OnMapMoved) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedLocation = null,
  }) {
    return _then(HomeEvent$OnMapMoved(
      selectedLocation: null == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Place>,
    ));
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Place, $Res> get selectedLocation {
    return $ApiResponseCopyWith<Place, $Res>(_self.selectedLocation, (value) {
      return _then(_self.copyWith(selectedLocation: value));
    });
  }
}

/// @nodoc

class HomeEvent$OnAddStop with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$OnAddStop();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'HomeEvent.onAddStop'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEvent$OnAddStop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onAddStop()';
  }
}

/// @nodoc

class HomeEvent$OnRemoveStop with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$OnRemoveStop({required this.index});

  final int index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnRemoveStopCopyWith<HomeEvent$OnRemoveStop> get copyWith =>
      _$HomeEvent$OnRemoveStopCopyWithImpl<HomeEvent$OnRemoveStop>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onRemoveStop'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnRemoveStop &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onRemoveStop(index: $index)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnRemoveStopCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnRemoveStopCopyWith(HomeEvent$OnRemoveStop value,
          $Res Function(HomeEvent$OnRemoveStop) _then) =
      _$HomeEvent$OnRemoveStopCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$HomeEvent$OnRemoveStopCopyWithImpl<$Res>
    implements $HomeEvent$OnRemoveStopCopyWith<$Res> {
  _$HomeEvent$OnRemoveStopCopyWithImpl(this._self, this._then);

  final HomeEvent$OnRemoveStop _self;
  final $Res Function(HomeEvent$OnRemoveStop) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(HomeEvent$OnRemoveStop(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class HomeEvent$InitializeWelcome
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$InitializeWelcome({required this.pickupPoint});

  final Place? pickupPoint;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$InitializeWelcomeCopyWith<HomeEvent$InitializeWelcome>
      get copyWith => _$HomeEvent$InitializeWelcomeCopyWithImpl<
          HomeEvent$InitializeWelcome>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.initializeWelcome'))
      ..add(DiagnosticsProperty('pickupPoint', pickupPoint));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$InitializeWelcome &&
            (identical(other.pickupPoint, pickupPoint) ||
                other.pickupPoint == pickupPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickupPoint);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.initializeWelcome(pickupPoint: $pickupPoint)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$InitializeWelcomeCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$InitializeWelcomeCopyWith(
          HomeEvent$InitializeWelcome value,
          $Res Function(HomeEvent$InitializeWelcome) _then) =
      _$HomeEvent$InitializeWelcomeCopyWithImpl;
  @useResult
  $Res call({Place? pickupPoint});
}

/// @nodoc
class _$HomeEvent$InitializeWelcomeCopyWithImpl<$Res>
    implements $HomeEvent$InitializeWelcomeCopyWith<$Res> {
  _$HomeEvent$InitializeWelcomeCopyWithImpl(this._self, this._then);

  final HomeEvent$InitializeWelcome _self;
  final $Res Function(HomeEvent$InitializeWelcome) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? pickupPoint = freezed,
  }) {
    return _then(HomeEvent$InitializeWelcome(
      pickupPoint: freezed == pickupPoint
          ? _self.pickupPoint
          : pickupPoint // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class HomeEvent$ChangeOrderSubmissionPage
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$ChangeOrderSubmissionPage(
      {required this.orderSubmissionPage});

  final OrderSubmissionPage orderSubmissionPage;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$ChangeOrderSubmissionPageCopyWith<
          HomeEvent$ChangeOrderSubmissionPage>
      get copyWith => _$HomeEvent$ChangeOrderSubmissionPageCopyWithImpl<
          HomeEvent$ChangeOrderSubmissionPage>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.changeOrderSubmissionPage'))
      ..add(DiagnosticsProperty('orderSubmissionPage', orderSubmissionPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$ChangeOrderSubmissionPage &&
            (identical(other.orderSubmissionPage, orderSubmissionPage) ||
                other.orderSubmissionPage == orderSubmissionPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderSubmissionPage);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.changeOrderSubmissionPage(orderSubmissionPage: $orderSubmissionPage)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$ChangeOrderSubmissionPageCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$ChangeOrderSubmissionPageCopyWith(
          HomeEvent$ChangeOrderSubmissionPage value,
          $Res Function(HomeEvent$ChangeOrderSubmissionPage) _then) =
      _$HomeEvent$ChangeOrderSubmissionPageCopyWithImpl;
  @useResult
  $Res call({OrderSubmissionPage orderSubmissionPage});
}

/// @nodoc
class _$HomeEvent$ChangeOrderSubmissionPageCopyWithImpl<$Res>
    implements $HomeEvent$ChangeOrderSubmissionPageCopyWith<$Res> {
  _$HomeEvent$ChangeOrderSubmissionPageCopyWithImpl(this._self, this._then);

  final HomeEvent$ChangeOrderSubmissionPage _self;
  final $Res Function(HomeEvent$ChangeOrderSubmissionPage) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderSubmissionPage = null,
  }) {
    return _then(HomeEvent$ChangeOrderSubmissionPage(
      orderSubmissionPage: null == orderSubmissionPage
          ? _self.orderSubmissionPage
          : orderSubmissionPage // ignore: cast_nullable_to_non_nullable
              as OrderSubmissionPage,
    ));
  }
}

/// @nodoc

class HomeEvent$OnRideOptionSelected
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnRideOptionSelected();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onRideOptionSelected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnRideOptionSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onRideOptionSelected()';
  }
}

/// @nodoc

class HomeEvent$OnDeliveryOptionSelected
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnDeliveryOptionSelected();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onDeliveryOptionSelected'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnDeliveryOptionSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onDeliveryOptionSelected()';
  }
}

/// @nodoc

class HomeEvent$ChangeTrackOrderPage
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$ChangeTrackOrderPage({required this.page});

  final TrackOrderPage page;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$ChangeTrackOrderPageCopyWith<HomeEvent$ChangeTrackOrderPage>
      get copyWith => _$HomeEvent$ChangeTrackOrderPageCopyWithImpl<
          HomeEvent$ChangeTrackOrderPage>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.changeTrackOrderPage'))
      ..add(DiagnosticsProperty('page', page));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$ChangeTrackOrderPage &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.changeTrackOrderPage(page: $page)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$ChangeTrackOrderPageCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$ChangeTrackOrderPageCopyWith(
          HomeEvent$ChangeTrackOrderPage value,
          $Res Function(HomeEvent$ChangeTrackOrderPage) _then) =
      _$HomeEvent$ChangeTrackOrderPageCopyWithImpl;
  @useResult
  $Res call({TrackOrderPage page});
}

/// @nodoc
class _$HomeEvent$ChangeTrackOrderPageCopyWithImpl<$Res>
    implements $HomeEvent$ChangeTrackOrderPageCopyWith<$Res> {
  _$HomeEvent$ChangeTrackOrderPageCopyWithImpl(this._self, this._then);

  final HomeEvent$ChangeTrackOrderPage _self;
  final $Res Function(HomeEvent$ChangeTrackOrderPage) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? page = null,
  }) {
    return _then(HomeEvent$ChangeTrackOrderPage(
      page: null == page
          ? _self.page
          : page // ignore: cast_nullable_to_non_nullable
              as TrackOrderPage,
    ));
  }
}

/// @nodoc

class HomeEvent$OnWaypointConfirmed
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnWaypointConfirmed();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onWaypointConfirmed'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnWaypointConfirmed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onWaypointConfirmed()';
  }
}

/// @nodoc

class HomeEvent$ShowConfirmWaypoint
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$ShowConfirmWaypoint({required this.selectedLocation});

  final Place selectedLocation;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$ShowConfirmWaypointCopyWith<HomeEvent$ShowConfirmWaypoint>
      get copyWith => _$HomeEvent$ShowConfirmWaypointCopyWithImpl<
          HomeEvent$ShowConfirmWaypoint>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.showConfirmWaypoint'))
      ..add(DiagnosticsProperty('selectedLocation', selectedLocation));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$ShowConfirmWaypoint &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedLocation);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.showConfirmWaypoint(selectedLocation: $selectedLocation)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$ShowConfirmWaypointCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$ShowConfirmWaypointCopyWith(
          HomeEvent$ShowConfirmWaypoint value,
          $Res Function(HomeEvent$ShowConfirmWaypoint) _then) =
      _$HomeEvent$ShowConfirmWaypointCopyWithImpl;
  @useResult
  $Res call({Place selectedLocation});
}

/// @nodoc
class _$HomeEvent$ShowConfirmWaypointCopyWithImpl<$Res>
    implements $HomeEvent$ShowConfirmWaypointCopyWith<$Res> {
  _$HomeEvent$ShowConfirmWaypointCopyWithImpl(this._self, this._then);

  final HomeEvent$ShowConfirmWaypoint _self;
  final $Res Function(HomeEvent$ShowConfirmWaypoint) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedLocation = null,
  }) {
    return _then(HomeEvent$ShowConfirmWaypoint(
      selectedLocation: null == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class HomeEvent$UpdateContactName
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$UpdateContactName({required this.name});

  final String name;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$UpdateContactNameCopyWith<HomeEvent$UpdateContactName>
      get copyWith => _$HomeEvent$UpdateContactNameCopyWithImpl<
          HomeEvent$UpdateContactName>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateContactName'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$UpdateContactName &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateContactName(name: $name)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$UpdateContactNameCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$UpdateContactNameCopyWith(
          HomeEvent$UpdateContactName value,
          $Res Function(HomeEvent$UpdateContactName) _then) =
      _$HomeEvent$UpdateContactNameCopyWithImpl;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$HomeEvent$UpdateContactNameCopyWithImpl<$Res>
    implements $HomeEvent$UpdateContactNameCopyWith<$Res> {
  _$HomeEvent$UpdateContactNameCopyWithImpl(this._self, this._then);

  final HomeEvent$UpdateContactName _self;
  final $Res Function(HomeEvent$UpdateContactName) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
  }) {
    return _then(HomeEvent$UpdateContactName(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$UpdateContactPhone
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$UpdateContactPhone({required this.phoneNumber});

  final Input$PhoneNumberInput? phoneNumber;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$UpdateContactPhoneCopyWith<HomeEvent$UpdateContactPhone>
      get copyWith => _$HomeEvent$UpdateContactPhoneCopyWithImpl<
          HomeEvent$UpdateContactPhone>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateContactPhone'))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$UpdateContactPhone &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateContactPhone(phoneNumber: $phoneNumber)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$UpdateContactPhoneCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$UpdateContactPhoneCopyWith(
          HomeEvent$UpdateContactPhone value,
          $Res Function(HomeEvent$UpdateContactPhone) _then) =
      _$HomeEvent$UpdateContactPhoneCopyWithImpl;
  @useResult
  $Res call({Input$PhoneNumberInput? phoneNumber});
}

/// @nodoc
class _$HomeEvent$UpdateContactPhoneCopyWithImpl<$Res>
    implements $HomeEvent$UpdateContactPhoneCopyWith<$Res> {
  _$HomeEvent$UpdateContactPhoneCopyWithImpl(this._self, this._then);

  final HomeEvent$UpdateContactPhone _self;
  final $Res Function(HomeEvent$UpdateContactPhone) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(HomeEvent$UpdateContactPhone(
      phoneNumber: freezed == phoneNumber
          ? _self.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as Input$PhoneNumberInput?,
    ));
  }
}

/// @nodoc

class HomeEvent$UpdateContactAddress
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$UpdateContactAddress({required this.address});

  final String address;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$UpdateContactAddressCopyWith<HomeEvent$UpdateContactAddress>
      get copyWith => _$HomeEvent$UpdateContactAddressCopyWithImpl<
          HomeEvent$UpdateContactAddress>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateContactAddress'))
      ..add(DiagnosticsProperty('address', address));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$UpdateContactAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateContactAddress(address: $address)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$UpdateContactAddressCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$UpdateContactAddressCopyWith(
          HomeEvent$UpdateContactAddress value,
          $Res Function(HomeEvent$UpdateContactAddress) _then) =
      _$HomeEvent$UpdateContactAddressCopyWithImpl;
  @useResult
  $Res call({String address});
}

/// @nodoc
class _$HomeEvent$UpdateContactAddressCopyWithImpl<$Res>
    implements $HomeEvent$UpdateContactAddressCopyWith<$Res> {
  _$HomeEvent$UpdateContactAddressCopyWithImpl(this._self, this._then);

  final HomeEvent$UpdateContactAddress _self;
  final $Res Function(HomeEvent$UpdateContactAddress) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
  }) {
    return _then(HomeEvent$UpdateContactAddress(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$UpdateContactBuilding
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$UpdateContactBuilding({required this.building});

  final String building;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$UpdateContactBuildingCopyWith<HomeEvent$UpdateContactBuilding>
      get copyWith => _$HomeEvent$UpdateContactBuildingCopyWithImpl<
          HomeEvent$UpdateContactBuilding>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateContactBuilding'))
      ..add(DiagnosticsProperty('building', building));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$UpdateContactBuilding &&
            (identical(other.building, building) ||
                other.building == building));
  }

  @override
  int get hashCode => Object.hash(runtimeType, building);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateContactBuilding(building: $building)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$UpdateContactBuildingCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$UpdateContactBuildingCopyWith(
          HomeEvent$UpdateContactBuilding value,
          $Res Function(HomeEvent$UpdateContactBuilding) _then) =
      _$HomeEvent$UpdateContactBuildingCopyWithImpl;
  @useResult
  $Res call({String building});
}

/// @nodoc
class _$HomeEvent$UpdateContactBuildingCopyWithImpl<$Res>
    implements $HomeEvent$UpdateContactBuildingCopyWith<$Res> {
  _$HomeEvent$UpdateContactBuildingCopyWithImpl(this._self, this._then);

  final HomeEvent$UpdateContactBuilding _self;
  final $Res Function(HomeEvent$UpdateContactBuilding) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? building = null,
  }) {
    return _then(HomeEvent$UpdateContactBuilding(
      building: null == building
          ? _self.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$UpdateContactApartment
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$UpdateContactApartment({required this.apartment});

  final String apartment;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$UpdateContactApartmentCopyWith<HomeEvent$UpdateContactApartment>
      get copyWith => _$HomeEvent$UpdateContactApartmentCopyWithImpl<
          HomeEvent$UpdateContactApartment>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateContactApartment'))
      ..add(DiagnosticsProperty('apartment', apartment));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$UpdateContactApartment &&
            (identical(other.apartment, apartment) ||
                other.apartment == apartment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apartment);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateContactApartment(apartment: $apartment)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$UpdateContactApartmentCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$UpdateContactApartmentCopyWith(
          HomeEvent$UpdateContactApartment value,
          $Res Function(HomeEvent$UpdateContactApartment) _then) =
      _$HomeEvent$UpdateContactApartmentCopyWithImpl;
  @useResult
  $Res call({String apartment});
}

/// @nodoc
class _$HomeEvent$UpdateContactApartmentCopyWithImpl<$Res>
    implements $HomeEvent$UpdateContactApartmentCopyWith<$Res> {
  _$HomeEvent$UpdateContactApartmentCopyWithImpl(this._self, this._then);

  final HomeEvent$UpdateContactApartment _self;
  final $Res Function(HomeEvent$UpdateContactApartment) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? apartment = null,
  }) {
    return _then(HomeEvent$UpdateContactApartment(
      apartment: null == apartment
          ? _self.apartment
          : apartment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$UpdateContactInstructions
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$UpdateContactInstructions({required this.instructions});

  final String instructions;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$UpdateContactInstructionsCopyWith<
          HomeEvent$UpdateContactInstructions>
      get copyWith => _$HomeEvent$UpdateContactInstructionsCopyWithImpl<
          HomeEvent$UpdateContactInstructions>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.updateContactInstructions'))
      ..add(DiagnosticsProperty('instructions', instructions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$UpdateContactInstructions &&
            (identical(other.instructions, instructions) ||
                other.instructions == instructions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, instructions);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.updateContactInstructions(instructions: $instructions)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$UpdateContactInstructionsCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$UpdateContactInstructionsCopyWith(
          HomeEvent$UpdateContactInstructions value,
          $Res Function(HomeEvent$UpdateContactInstructions) _then) =
      _$HomeEvent$UpdateContactInstructionsCopyWithImpl;
  @useResult
  $Res call({String instructions});
}

/// @nodoc
class _$HomeEvent$UpdateContactInstructionsCopyWithImpl<$Res>
    implements $HomeEvent$UpdateContactInstructionsCopyWith<$Res> {
  _$HomeEvent$UpdateContactInstructionsCopyWithImpl(this._self, this._then);

  final HomeEvent$UpdateContactInstructions _self;
  final $Res Function(HomeEvent$UpdateContactInstructions) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? instructions = null,
  }) {
    return _then(HomeEvent$UpdateContactInstructions(
      instructions: null == instructions
          ? _self.instructions
          : instructions // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$ConfirmContactInfo
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$ConfirmContactInfo();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.confirmContactInfo'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$ConfirmContactInfo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.confirmContactInfo()';
  }
}

/// @nodoc

class HomeEvent$OnChatMessageSent
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnChatMessageSent({required this.message});

  final String message;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnChatMessageSentCopyWith<HomeEvent$OnChatMessageSent>
      get copyWith => _$HomeEvent$OnChatMessageSentCopyWithImpl<
          HomeEvent$OnChatMessageSent>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onChatMessageSent'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnChatMessageSent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onChatMessageSent(message: $message)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnChatMessageSentCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnChatMessageSentCopyWith(
          HomeEvent$OnChatMessageSent value,
          $Res Function(HomeEvent$OnChatMessageSent) _then) =
      _$HomeEvent$OnChatMessageSentCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeEvent$OnChatMessageSentCopyWithImpl<$Res>
    implements $HomeEvent$OnChatMessageSentCopyWith<$Res> {
  _$HomeEvent$OnChatMessageSentCopyWithImpl(this._self, this._then);

  final HomeEvent$OnChatMessageSent _self;
  final $Res Function(HomeEvent$OnChatMessageSent) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(HomeEvent$OnChatMessageSent(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$ShowPreview with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$ShowPreview({this.destination});

  final Place? destination;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$ShowPreviewCopyWith<HomeEvent$ShowPreview> get copyWith =>
      _$HomeEvent$ShowPreviewCopyWithImpl<HomeEvent$ShowPreview>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.showPreview'))
      ..add(DiagnosticsProperty('destination', destination));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$ShowPreview &&
            (identical(other.destination, destination) ||
                other.destination == destination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.showPreview(destination: $destination)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$ShowPreviewCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$ShowPreviewCopyWith(HomeEvent$ShowPreview value,
          $Res Function(HomeEvent$ShowPreview) _then) =
      _$HomeEvent$ShowPreviewCopyWithImpl;
  @useResult
  $Res call({Place? destination});
}

/// @nodoc
class _$HomeEvent$ShowPreviewCopyWithImpl<$Res>
    implements $HomeEvent$ShowPreviewCopyWith<$Res> {
  _$HomeEvent$ShowPreviewCopyWithImpl(this._self, this._then);

  final HomeEvent$ShowPreview _self;
  final $Res Function(HomeEvent$ShowPreview) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? destination = freezed,
  }) {
    return _then(HomeEvent$ShowPreview(
      destination: freezed == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

/// @nodoc

class HomeEvent$OnServiceCategorySelected
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnServiceCategorySelected({required this.serviceCategory});

  final Fragment$ServiceCategory serviceCategory;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnServiceCategorySelectedCopyWith<
          HomeEvent$OnServiceCategorySelected>
      get copyWith => _$HomeEvent$OnServiceCategorySelectedCopyWithImpl<
          HomeEvent$OnServiceCategorySelected>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onServiceCategorySelected'))
      ..add(DiagnosticsProperty('serviceCategory', serviceCategory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnServiceCategorySelected &&
            (identical(other.serviceCategory, serviceCategory) ||
                other.serviceCategory == serviceCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceCategory);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onServiceCategorySelected(serviceCategory: $serviceCategory)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnServiceCategorySelectedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnServiceCategorySelectedCopyWith(
          HomeEvent$OnServiceCategorySelected value,
          $Res Function(HomeEvent$OnServiceCategorySelected) _then) =
      _$HomeEvent$OnServiceCategorySelectedCopyWithImpl;
  @useResult
  $Res call({Fragment$ServiceCategory serviceCategory});
}

/// @nodoc
class _$HomeEvent$OnServiceCategorySelectedCopyWithImpl<$Res>
    implements $HomeEvent$OnServiceCategorySelectedCopyWith<$Res> {
  _$HomeEvent$OnServiceCategorySelectedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnServiceCategorySelected _self;
  final $Res Function(HomeEvent$OnServiceCategorySelected) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? serviceCategory = null,
  }) {
    return _then(HomeEvent$OnServiceCategorySelected(
      serviceCategory: null == serviceCategory
          ? _self.serviceCategory
          : serviceCategory // ignore: cast_nullable_to_non_nullable
              as Fragment$ServiceCategory,
    ));
  }
}

/// @nodoc

class HomeEvent$OnServiceSelected
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnServiceSelected(
      {required this.service, required this.value});

  final Fragment$Service service;
  final bool value;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnServiceSelectedCopyWith<HomeEvent$OnServiceSelected>
      get copyWith => _$HomeEvent$OnServiceSelectedCopyWithImpl<
          HomeEvent$OnServiceSelected>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onServiceSelected'))
      ..add(DiagnosticsProperty('service', service))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnServiceSelected &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service, value);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onServiceSelected(service: $service, value: $value)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnServiceSelectedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnServiceSelectedCopyWith(
          HomeEvent$OnServiceSelected value,
          $Res Function(HomeEvent$OnServiceSelected) _then) =
      _$HomeEvent$OnServiceSelectedCopyWithImpl;
  @useResult
  $Res call({Fragment$Service service, bool value});
}

/// @nodoc
class _$HomeEvent$OnServiceSelectedCopyWithImpl<$Res>
    implements $HomeEvent$OnServiceSelectedCopyWith<$Res> {
  _$HomeEvent$OnServiceSelectedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnServiceSelected _self;
  final $Res Function(HomeEvent$OnServiceSelected) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? service = null,
    Object? value = null,
  }) {
    return _then(HomeEvent$OnServiceSelected(
      service: null == service
          ? _self.service
          : service // ignore: cast_nullable_to_non_nullable
              as Fragment$Service,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class HomeEvent$OnPaymentMethodSelected
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnPaymentMethodSelected({required this.paymentMethod});

  final PaymentMethodUnion paymentMethod;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnPaymentMethodSelectedCopyWith<HomeEvent$OnPaymentMethodSelected>
      get copyWith => _$HomeEvent$OnPaymentMethodSelectedCopyWithImpl<
          HomeEvent$OnPaymentMethodSelected>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onPaymentMethodSelected'))
      ..add(DiagnosticsProperty('paymentMethod', paymentMethod));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnPaymentMethodSelected &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, paymentMethod);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onPaymentMethodSelected(paymentMethod: $paymentMethod)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnPaymentMethodSelectedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnPaymentMethodSelectedCopyWith(
          HomeEvent$OnPaymentMethodSelected value,
          $Res Function(HomeEvent$OnPaymentMethodSelected) _then) =
      _$HomeEvent$OnPaymentMethodSelectedCopyWithImpl;
  @useResult
  $Res call({PaymentMethodUnion paymentMethod});
}

/// @nodoc
class _$HomeEvent$OnPaymentMethodSelectedCopyWithImpl<$Res>
    implements $HomeEvent$OnPaymentMethodSelectedCopyWith<$Res> {
  _$HomeEvent$OnPaymentMethodSelectedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnPaymentMethodSelected _self;
  final $Res Function(HomeEvent$OnPaymentMethodSelected) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? paymentMethod = null,
  }) {
    return _then(HomeEvent$OnPaymentMethodSelected(
      paymentMethod: null == paymentMethod
          ? _self.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodUnion,
    ));
  }
}

/// @nodoc

class HomeEvent$SubmitOrder with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$SubmitOrder({required this.selectedDateTime});

  final DateTime? selectedDateTime;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$SubmitOrderCopyWith<HomeEvent$SubmitOrder> get copyWith =>
      _$HomeEvent$SubmitOrderCopyWithImpl<HomeEvent$SubmitOrder>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.submitOrder'))
      ..add(DiagnosticsProperty('selectedDateTime', selectedDateTime));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$SubmitOrder &&
            (identical(other.selectedDateTime, selectedDateTime) ||
                other.selectedDateTime == selectedDateTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedDateTime);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.submitOrder(selectedDateTime: $selectedDateTime)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$SubmitOrderCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$SubmitOrderCopyWith(HomeEvent$SubmitOrder value,
          $Res Function(HomeEvent$SubmitOrder) _then) =
      _$HomeEvent$SubmitOrderCopyWithImpl;
  @useResult
  $Res call({DateTime? selectedDateTime});
}

/// @nodoc
class _$HomeEvent$SubmitOrderCopyWithImpl<$Res>
    implements $HomeEvent$SubmitOrderCopyWith<$Res> {
  _$HomeEvent$SubmitOrderCopyWithImpl(this._self, this._then);

  final HomeEvent$SubmitOrder _self;
  final $Res Function(HomeEvent$SubmitOrder) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? selectedDateTime = freezed,
  }) {
    return _then(HomeEvent$SubmitOrder(
      selectedDateTime: freezed == selectedDateTime
          ? _self.selectedDateTime
          : selectedDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class HomeEvent$OnRidePreferencesUpdated
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnRidePreferencesUpdated(
      {required this.isTwoWayTrip,
      required this.waitTime,
      required final List<Fragment$RideOption> rideOptions})
      : _rideOptions = rideOptions;

  final bool isTwoWayTrip;
  final int? waitTime;
  final List<Fragment$RideOption> _rideOptions;
  List<Fragment$RideOption> get rideOptions {
    if (_rideOptions is EqualUnmodifiableListView) return _rideOptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rideOptions);
  }

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnRidePreferencesUpdatedCopyWith<
          HomeEvent$OnRidePreferencesUpdated>
      get copyWith => _$HomeEvent$OnRidePreferencesUpdatedCopyWithImpl<
          HomeEvent$OnRidePreferencesUpdated>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onRidePreferencesUpdated'))
      ..add(DiagnosticsProperty('isTwoWayTrip', isTwoWayTrip))
      ..add(DiagnosticsProperty('waitTime', waitTime))
      ..add(DiagnosticsProperty('rideOptions', rideOptions));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnRidePreferencesUpdated &&
            (identical(other.isTwoWayTrip, isTwoWayTrip) ||
                other.isTwoWayTrip == isTwoWayTrip) &&
            (identical(other.waitTime, waitTime) ||
                other.waitTime == waitTime) &&
            const DeepCollectionEquality()
                .equals(other._rideOptions, _rideOptions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isTwoWayTrip, waitTime,
      const DeepCollectionEquality().hash(_rideOptions));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onRidePreferencesUpdated(isTwoWayTrip: $isTwoWayTrip, waitTime: $waitTime, rideOptions: $rideOptions)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnRidePreferencesUpdatedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnRidePreferencesUpdatedCopyWith(
          HomeEvent$OnRidePreferencesUpdated value,
          $Res Function(HomeEvent$OnRidePreferencesUpdated) _then) =
      _$HomeEvent$OnRidePreferencesUpdatedCopyWithImpl;
  @useResult
  $Res call(
      {bool isTwoWayTrip,
      int? waitTime,
      List<Fragment$RideOption> rideOptions});
}

/// @nodoc
class _$HomeEvent$OnRidePreferencesUpdatedCopyWithImpl<$Res>
    implements $HomeEvent$OnRidePreferencesUpdatedCopyWith<$Res> {
  _$HomeEvent$OnRidePreferencesUpdatedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnRidePreferencesUpdated _self;
  final $Res Function(HomeEvent$OnRidePreferencesUpdated) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isTwoWayTrip = null,
    Object? waitTime = freezed,
    Object? rideOptions = null,
  }) {
    return _then(HomeEvent$OnRidePreferencesUpdated(
      isTwoWayTrip: null == isTwoWayTrip
          ? _self.isTwoWayTrip
          : isTwoWayTrip // ignore: cast_nullable_to_non_nullable
              as bool,
      waitTime: freezed == waitTime
          ? _self.waitTime
          : waitTime // ignore: cast_nullable_to_non_nullable
              as int?,
      rideOptions: null == rideOptions
          ? _self._rideOptions
          : rideOptions // ignore: cast_nullable_to_non_nullable
              as List<Fragment$RideOption>,
    ));
  }
}

/// @nodoc

class HomeEvent$OnCouponCodeUpdated
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnCouponCodeUpdated({required this.couponCode});

  final String couponCode;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnCouponCodeUpdatedCopyWith<HomeEvent$OnCouponCodeUpdated>
      get copyWith => _$HomeEvent$OnCouponCodeUpdatedCopyWithImpl<
          HomeEvent$OnCouponCodeUpdated>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onCouponCodeChanged'))
      ..add(DiagnosticsProperty('couponCode', couponCode));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnCouponCodeUpdated &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, couponCode);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onCouponCodeChanged(couponCode: $couponCode)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnCouponCodeUpdatedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnCouponCodeUpdatedCopyWith(
          HomeEvent$OnCouponCodeUpdated value,
          $Res Function(HomeEvent$OnCouponCodeUpdated) _then) =
      _$HomeEvent$OnCouponCodeUpdatedCopyWithImpl;
  @useResult
  $Res call({String couponCode});
}

/// @nodoc
class _$HomeEvent$OnCouponCodeUpdatedCopyWithImpl<$Res>
    implements $HomeEvent$OnCouponCodeUpdatedCopyWith<$Res> {
  _$HomeEvent$OnCouponCodeUpdatedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnCouponCodeUpdated _self;
  final $Res Function(HomeEvent$OnCouponCodeUpdated) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? couponCode = null,
  }) {
    return _then(HomeEvent$OnCouponCodeUpdated(
      couponCode: null == couponCode
          ? _self.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class HomeEvent$FocusOnWaypoint
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$FocusOnWaypoint({required this.index});

  final int index;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$FocusOnWaypointCopyWith<HomeEvent$FocusOnWaypoint> get copyWith =>
      _$HomeEvent$FocusOnWaypointCopyWithImpl<HomeEvent$FocusOnWaypoint>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.focusOnWaypoint'))
      ..add(DiagnosticsProperty('index', index));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$FocusOnWaypoint &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.focusOnWaypoint(index: $index)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$FocusOnWaypointCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$FocusOnWaypointCopyWith(HomeEvent$FocusOnWaypoint value,
          $Res Function(HomeEvent$FocusOnWaypoint) _then) =
      _$HomeEvent$FocusOnWaypointCopyWithImpl;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$HomeEvent$FocusOnWaypointCopyWithImpl<$Res>
    implements $HomeEvent$FocusOnWaypointCopyWith<$Res> {
  _$HomeEvent$FocusOnWaypointCopyWithImpl(this._self, this._then);

  final HomeEvent$FocusOnWaypoint _self;
  final $Res Function(HomeEvent$FocusOnWaypoint) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? index = null,
  }) {
    return _then(HomeEvent$FocusOnWaypoint(
      index: null == index
          ? _self.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class HomeEvent$CancelRide with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$CancelRide(
      {required this.orderId,
      required this.cancelReasonId,
      required this.cancelReasonNote});

  final String orderId;
  final String? cancelReasonId;
  final String? cancelReasonNote;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$CancelRideCopyWith<HomeEvent$CancelRide> get copyWith =>
      _$HomeEvent$CancelRideCopyWithImpl<HomeEvent$CancelRide>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.cancelRide'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('cancelReasonId', cancelReasonId))
      ..add(DiagnosticsProperty('cancelReasonNote', cancelReasonNote));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$CancelRide &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.cancelReasonId, cancelReasonId) ||
                other.cancelReasonId == cancelReasonId) &&
            (identical(other.cancelReasonNote, cancelReasonNote) ||
                other.cancelReasonNote == cancelReasonNote));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, cancelReasonId, cancelReasonNote);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.cancelRide(orderId: $orderId, cancelReasonId: $cancelReasonId, cancelReasonNote: $cancelReasonNote)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$CancelRideCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$CancelRideCopyWith(HomeEvent$CancelRide value,
          $Res Function(HomeEvent$CancelRide) _then) =
      _$HomeEvent$CancelRideCopyWithImpl;
  @useResult
  $Res call({String orderId, String? cancelReasonId, String? cancelReasonNote});
}

/// @nodoc
class _$HomeEvent$CancelRideCopyWithImpl<$Res>
    implements $HomeEvent$CancelRideCopyWith<$Res> {
  _$HomeEvent$CancelRideCopyWithImpl(this._self, this._then);

  final HomeEvent$CancelRide _self;
  final $Res Function(HomeEvent$CancelRide) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? cancelReasonId = freezed,
    Object? cancelReasonNote = freezed,
  }) {
    return _then(HomeEvent$CancelRide(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
      cancelReasonId: freezed == cancelReasonId
          ? _self.cancelReasonId
          : cancelReasonId // ignore: cast_nullable_to_non_nullable
              as String?,
      cancelReasonNote: freezed == cancelReasonNote
          ? _self.cancelReasonNote
          : cancelReasonNote // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class HomeEvent$OnReviewSubmitted
    with DiagnosticableTreeMixin
    implements HomeEvent {
  const HomeEvent$OnReviewSubmitted(
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

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$OnReviewSubmittedCopyWith<HomeEvent$OnReviewSubmitted>
      get copyWith => _$HomeEvent$OnReviewSubmittedCopyWithImpl<
          HomeEvent$OnReviewSubmitted>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.onReviewSubmitted'))
      ..add(DiagnosticsProperty('orderId', orderId))
      ..add(DiagnosticsProperty('rating', rating))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('parameters', parameters))
      ..add(DiagnosticsProperty('isFavorite', isFavorite));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$OnReviewSubmitted &&
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.onReviewSubmitted(orderId: $orderId, rating: $rating, comment: $comment, parameters: $parameters, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$OnReviewSubmittedCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$OnReviewSubmittedCopyWith(
          HomeEvent$OnReviewSubmitted value,
          $Res Function(HomeEvent$OnReviewSubmitted) _then) =
      _$HomeEvent$OnReviewSubmittedCopyWithImpl;
  @useResult
  $Res call(
      {String orderId,
      int rating,
      String? comment,
      List<Fragment$ReviewParameter> parameters,
      bool isFavorite});
}

/// @nodoc
class _$HomeEvent$OnReviewSubmittedCopyWithImpl<$Res>
    implements $HomeEvent$OnReviewSubmittedCopyWith<$Res> {
  _$HomeEvent$OnReviewSubmittedCopyWithImpl(this._self, this._then);

  final HomeEvent$OnReviewSubmitted _self;
  final $Res Function(HomeEvent$OnReviewSubmitted) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
    Object? rating = null,
    Object? comment = freezed,
    Object? parameters = null,
    Object? isFavorite = null,
  }) {
    return _then(HomeEvent$OnReviewSubmitted(
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

class HomeEvent$SkipReview with DiagnosticableTreeMixin implements HomeEvent {
  const HomeEvent$SkipReview({required this.orderId});

  final String orderId;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeEvent$SkipReviewCopyWith<HomeEvent$SkipReview> get copyWith =>
      _$HomeEvent$SkipReviewCopyWithImpl<HomeEvent$SkipReview>(
          this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.skipReview'))
      ..add(DiagnosticsProperty('orderId', orderId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEvent$SkipReview &&
            (identical(other.orderId, orderId) || other.orderId == orderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.skipReview(orderId: $orderId)';
  }
}

/// @nodoc
abstract mixin class $HomeEvent$SkipReviewCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEvent$SkipReviewCopyWith(HomeEvent$SkipReview value,
          $Res Function(HomeEvent$SkipReview) _then) =
      _$HomeEvent$SkipReviewCopyWithImpl;
  @useResult
  $Res call({String orderId});
}

/// @nodoc
class _$HomeEvent$SkipReviewCopyWithImpl<$Res>
    implements $HomeEvent$SkipReviewCopyWith<$Res> {
  _$HomeEvent$SkipReviewCopyWithImpl(this._self, this._then);

  final HomeEvent$SkipReview _self;
  final $Res Function(HomeEvent$SkipReview) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? orderId = null,
  }) {
    return _then(HomeEvent$SkipReview(
      orderId: null == orderId
          ? _self.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
