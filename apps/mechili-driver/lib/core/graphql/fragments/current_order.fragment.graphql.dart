import '../schema.gql.dart';
import 'chat_message.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:flutter_common/core/graphql/scalars/datetime.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'rider.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';
import 'service.fragment.graphql.dart';

class Fragment$CurrentOrder {
  Fragment$CurrentOrder({
    required this.id,
    required this.createdOn,
    required this.expectedTimestamp,
    this.startTimestamp,
    this.finishTimestamp,
    required this.distanceBest,
    required this.durationBest,
    required this.status,
    this.destinationArrivedTo,
    this.etaPickup,
    required this.paidAmount,
    required this.costAfterCoupon,
    required this.providerShare,
    required this.costBest,
    required this.currency,
    required this.addresses,
    required this.waitMinutes,
    required this.waitCost,
    required this.rideOptionsCost,
    required this.serviceCost,
    required this.taxCost,
    this.paymentMode,
    required this.driverLastSeenMessagesAt,
    this.rider,
    this.paymentGateway,
    this.savedPaymentMethod,
    required this.points,
    this.directions,
    this.driverDirections,
    this.service,
    required this.options,
    required this.conversation,
    this.$__typename = 'Order',
  });

  factory Fragment$CurrentOrder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$status = json['status'];
    final l$destinationArrivedTo = json['destinationArrivedTo'];
    final l$etaPickup = json['etaPickup'];
    final l$paidAmount = json['paidAmount'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$providerShare = json['providerShare'];
    final l$costBest = json['costBest'];
    final l$currency = json['currency'];
    final l$addresses = json['addresses'];
    final l$waitMinutes = json['waitMinutes'];
    final l$waitCost = json['waitCost'];
    final l$rideOptionsCost = json['rideOptionsCost'];
    final l$serviceCost = json['serviceCost'];
    final l$taxCost = json['taxCost'];
    final l$paymentMode = json['paymentMode'];
    final l$driverLastSeenMessagesAt = json['driverLastSeenMessagesAt'];
    final l$rider = json['rider'];
    final l$paymentGateway = json['paymentGateway'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$points = json['points'];
    final l$directions = json['directions'];
    final l$driverDirections = json['driverDirections'];
    final l$service = json['service'];
    final l$options = json['options'];
    final l$conversation = json['conversation'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder(
      id: (l$id as String),
      createdOn: fromGraphQLDateTimeToDartDateTime(l$createdOn),
      expectedTimestamp: fromGraphQLDateTimeToDartDateTime(l$expectedTimestamp),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLDateTimeToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLDateTimeToDartDateTime(l$finishTimestamp),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      destinationArrivedTo: (l$destinationArrivedTo as int?),
      etaPickup: l$etaPickup == null
          ? null
          : fromGraphQLDateTimeToDartDateTime(l$etaPickup),
      paidAmount: (l$paidAmount as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      providerShare: (l$providerShare as num).toDouble(),
      costBest: (l$costBest as num).toDouble(),
      currency: (l$currency as String),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      waitMinutes: (l$waitMinutes as num).toDouble(),
      waitCost: (l$waitCost as num).toDouble(),
      rideOptionsCost: (l$rideOptionsCost as num).toDouble(),
      serviceCost: (l$serviceCost as num).toDouble(),
      taxCost: (l$taxCost as num).toDouble(),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      driverLastSeenMessagesAt:
          fromGraphQLDateTimeToDartDateTime(l$driverLastSeenMessagesAt),
      rider: l$rider == null
          ? null
          : Fragment$Rider.fromJson((l$rider as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Fragment$PaymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Fragment$SavedPaymentMethod.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      driverDirections: (l$driverDirections as List<dynamic>?)
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      conversation: (l$conversation as List<dynamic>)
          .map(
              (e) => Fragment$ChatMessage.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdOn;

  final DateTime expectedTimestamp;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final int distanceBest;

  final int durationBest;

  final Enum$OrderStatus status;

  final int? destinationArrivedTo;

  final DateTime? etaPickup;

  final double paidAmount;

  final double costAfterCoupon;

  final double providerShare;

  final double costBest;

  final String currency;

  final List<String> addresses;

  final double waitMinutes;

  final double waitCost;

  final double rideOptionsCost;

  final double serviceCost;

  final double taxCost;

  final Enum$PaymentMode? paymentMode;

  final DateTime driverLastSeenMessagesAt;

  final Fragment$Rider? rider;

  final Fragment$PaymentGateway? paymentGateway;

  final Fragment$SavedPaymentMethod? savedPaymentMethod;

  final List<Fragment$Point> points;

  final List<Fragment$Point>? directions;

  final List<Fragment$Point>? driverDirections;

  final Fragment$Service? service;

  final List<Fragment$RideOption> options;

  final List<Fragment$ChatMessage> conversation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLDateTime(l$createdOn);
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLDateTime(l$expectedTimestamp);
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLDateTime(l$startTimestamp);
    final l$finishTimestamp = finishTimestamp;
    _resultData['finishTimestamp'] = l$finishTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLDateTime(l$finishTimestamp);
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$destinationArrivedTo = destinationArrivedTo;
    _resultData['destinationArrivedTo'] = l$destinationArrivedTo;
    final l$etaPickup = etaPickup;
    _resultData['etaPickup'] = l$etaPickup == null
        ? null
        : fromDartDateTimeToGraphQLDateTime(l$etaPickup);
    final l$paidAmount = paidAmount;
    _resultData['paidAmount'] = l$paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$waitCost = waitCost;
    _resultData['waitCost'] = l$waitCost;
    final l$rideOptionsCost = rideOptionsCost;
    _resultData['rideOptionsCost'] = l$rideOptionsCost;
    final l$serviceCost = serviceCost;
    _resultData['serviceCost'] = l$serviceCost;
    final l$taxCost = taxCost;
    _resultData['taxCost'] = l$taxCost;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    _resultData['driverLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLDateTime(l$driverLastSeenMessagesAt);
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$driverDirections = driverDirections;
    _resultData['driverDirections'] =
        l$driverDirections?.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$conversation = conversation;
    _resultData['conversation'] =
        l$conversation.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdOn = createdOn;
    final l$expectedTimestamp = expectedTimestamp;
    final l$startTimestamp = startTimestamp;
    final l$finishTimestamp = finishTimestamp;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$status = status;
    final l$destinationArrivedTo = destinationArrivedTo;
    final l$etaPickup = etaPickup;
    final l$paidAmount = paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    final l$providerShare = providerShare;
    final l$costBest = costBest;
    final l$currency = currency;
    final l$addresses = addresses;
    final l$waitMinutes = waitMinutes;
    final l$waitCost = waitCost;
    final l$rideOptionsCost = rideOptionsCost;
    final l$serviceCost = serviceCost;
    final l$taxCost = taxCost;
    final l$paymentMode = paymentMode;
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    final l$rider = rider;
    final l$paymentGateway = paymentGateway;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$points = points;
    final l$directions = directions;
    final l$driverDirections = driverDirections;
    final l$service = service;
    final l$options = options;
    final l$conversation = conversation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdOn,
      l$expectedTimestamp,
      l$startTimestamp,
      l$finishTimestamp,
      l$distanceBest,
      l$durationBest,
      l$status,
      l$destinationArrivedTo,
      l$etaPickup,
      l$paidAmount,
      l$costAfterCoupon,
      l$providerShare,
      l$costBest,
      l$currency,
      Object.hashAll(l$addresses.map((v) => v)),
      l$waitMinutes,
      l$waitCost,
      l$rideOptionsCost,
      l$serviceCost,
      l$taxCost,
      l$paymentMode,
      l$driverLastSeenMessagesAt,
      l$rider,
      l$paymentGateway,
      l$savedPaymentMethod,
      Object.hashAll(l$points.map((v) => v)),
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      l$driverDirections == null
          ? null
          : Object.hashAll(l$driverDirections.map((v) => v)),
      l$service,
      Object.hashAll(l$options.map((v) => v)),
      Object.hashAll(l$conversation.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CurrentOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$expectedTimestamp = expectedTimestamp;
    final lOther$expectedTimestamp = other.expectedTimestamp;
    if (l$expectedTimestamp != lOther$expectedTimestamp) {
      return false;
    }
    final l$startTimestamp = startTimestamp;
    final lOther$startTimestamp = other.startTimestamp;
    if (l$startTimestamp != lOther$startTimestamp) {
      return false;
    }
    final l$finishTimestamp = finishTimestamp;
    final lOther$finishTimestamp = other.finishTimestamp;
    if (l$finishTimestamp != lOther$finishTimestamp) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$durationBest = durationBest;
    final lOther$durationBest = other.durationBest;
    if (l$durationBest != lOther$durationBest) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    final l$etaPickup = etaPickup;
    final lOther$etaPickup = other.etaPickup;
    if (l$etaPickup != lOther$etaPickup) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
    }
    final l$waitCost = waitCost;
    final lOther$waitCost = other.waitCost;
    if (l$waitCost != lOther$waitCost) {
      return false;
    }
    final l$rideOptionsCost = rideOptionsCost;
    final lOther$rideOptionsCost = other.rideOptionsCost;
    if (l$rideOptionsCost != lOther$rideOptionsCost) {
      return false;
    }
    final l$serviceCost = serviceCost;
    final lOther$serviceCost = other.serviceCost;
    if (l$serviceCost != lOther$serviceCost) {
      return false;
    }
    final l$taxCost = taxCost;
    final lOther$taxCost = other.taxCost;
    if (l$taxCost != lOther$taxCost) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    final l$driverLastSeenMessagesAt = driverLastSeenMessagesAt;
    final lOther$driverLastSeenMessagesAt = other.driverLastSeenMessagesAt;
    if (l$driverLastSeenMessagesAt != lOther$driverLastSeenMessagesAt) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
    }
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
      return false;
    }
    final l$savedPaymentMethod = savedPaymentMethod;
    final lOther$savedPaymentMethod = other.savedPaymentMethod;
    if (l$savedPaymentMethod != lOther$savedPaymentMethod) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
    if (l$directions != null && lOther$directions != null) {
      if (l$directions.length != lOther$directions.length) {
        return false;
      }
      for (int i = 0; i < l$directions.length; i++) {
        final l$directions$entry = l$directions[i];
        final lOther$directions$entry = lOther$directions[i];
        if (l$directions$entry != lOther$directions$entry) {
          return false;
        }
      }
    } else if (l$directions != lOther$directions) {
      return false;
    }
    final l$driverDirections = driverDirections;
    final lOther$driverDirections = other.driverDirections;
    if (l$driverDirections != null && lOther$driverDirections != null) {
      if (l$driverDirections.length != lOther$driverDirections.length) {
        return false;
      }
      for (int i = 0; i < l$driverDirections.length; i++) {
        final l$driverDirections$entry = l$driverDirections[i];
        final lOther$driverDirections$entry = lOther$driverDirections[i];
        if (l$driverDirections$entry != lOther$driverDirections$entry) {
          return false;
        }
      }
    } else if (l$driverDirections != lOther$driverDirections) {
      return false;
    }
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
        return false;
      }
    }
    final l$conversation = conversation;
    final lOther$conversation = other.conversation;
    if (l$conversation.length != lOther$conversation.length) {
      return false;
    }
    for (int i = 0; i < l$conversation.length; i++) {
      final l$conversation$entry = l$conversation[i];
      final lOther$conversation$entry = lOther$conversation[i];
      if (l$conversation$entry != lOther$conversation$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder on Fragment$CurrentOrder {
  CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder> get copyWith =>
      CopyWith$Fragment$CurrentOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$CurrentOrder<TRes> {
  factory CopyWith$Fragment$CurrentOrder(
    Fragment$CurrentOrder instance,
    TRes Function(Fragment$CurrentOrder) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder;

  factory CopyWith$Fragment$CurrentOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder;

  TRes call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? providerShare,
    double? costBest,
    String? currency,
    List<String>? addresses,
    double? waitMinutes,
    double? waitCost,
    double? rideOptionsCost,
    double? serviceCost,
    double? taxCost,
    Enum$PaymentMode? paymentMode,
    DateTime? driverLastSeenMessagesAt,
    Fragment$Rider? rider,
    Fragment$PaymentGateway? paymentGateway,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    List<Fragment$Point>? points,
    List<Fragment$Point>? directions,
    List<Fragment$Point>? driverDirections,
    Fragment$Service? service,
    List<Fragment$RideOption>? options,
    List<Fragment$ChatMessage>? conversation,
    String? $__typename,
  });
  CopyWith$Fragment$Rider<TRes> get rider;
  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway;
  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
  TRes directions(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  TRes driverDirections(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  CopyWith$Fragment$Service<TRes> get service;
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
  TRes conversation(
      Iterable<Fragment$ChatMessage> Function(
              Iterable<CopyWith$Fragment$ChatMessage<Fragment$ChatMessage>>)
          _fn);
}

class _CopyWithImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder _instance;

  final TRes Function(Fragment$CurrentOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? status = _undefined,
    Object? destinationArrivedTo = _undefined,
    Object? etaPickup = _undefined,
    Object? paidAmount = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? providerShare = _undefined,
    Object? costBest = _undefined,
    Object? currency = _undefined,
    Object? addresses = _undefined,
    Object? waitMinutes = _undefined,
    Object? waitCost = _undefined,
    Object? rideOptionsCost = _undefined,
    Object? serviceCost = _undefined,
    Object? taxCost = _undefined,
    Object? paymentMode = _undefined,
    Object? driverLastSeenMessagesAt = _undefined,
    Object? rider = _undefined,
    Object? paymentGateway = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? points = _undefined,
    Object? directions = _undefined,
    Object? driverDirections = _undefined,
    Object? service = _undefined,
    Object? options = _undefined,
    Object? conversation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        expectedTimestamp:
            expectedTimestamp == _undefined || expectedTimestamp == null
                ? _instance.expectedTimestamp
                : (expectedTimestamp as DateTime),
        startTimestamp: startTimestamp == _undefined
            ? _instance.startTimestamp
            : (startTimestamp as DateTime?),
        finishTimestamp: finishTimestamp == _undefined
            ? _instance.finishTimestamp
            : (finishTimestamp as DateTime?),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        destinationArrivedTo: destinationArrivedTo == _undefined
            ? _instance.destinationArrivedTo
            : (destinationArrivedTo as int?),
        etaPickup: etaPickup == _undefined
            ? _instance.etaPickup
            : (etaPickup as DateTime?),
        paidAmount: paidAmount == _undefined || paidAmount == null
            ? _instance.paidAmount
            : (paidAmount as double),
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as double),
        waitCost: waitCost == _undefined || waitCost == null
            ? _instance.waitCost
            : (waitCost as double),
        rideOptionsCost:
            rideOptionsCost == _undefined || rideOptionsCost == null
                ? _instance.rideOptionsCost
                : (rideOptionsCost as double),
        serviceCost: serviceCost == _undefined || serviceCost == null
            ? _instance.serviceCost
            : (serviceCost as double),
        taxCost: taxCost == _undefined || taxCost == null
            ? _instance.taxCost
            : (taxCost as double),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        driverLastSeenMessagesAt: driverLastSeenMessagesAt == _undefined ||
                driverLastSeenMessagesAt == null
            ? _instance.driverLastSeenMessagesAt
            : (driverLastSeenMessagesAt as DateTime),
        rider:
            rider == _undefined ? _instance.rider : (rider as Fragment$Rider?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Fragment$PaymentGateway?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod as Fragment$SavedPaymentMethod?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Fragment$Point>?),
        driverDirections: driverDirections == _undefined
            ? _instance.driverDirections
            : (driverDirections as List<Fragment$Point>?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$Service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        conversation: conversation == _undefined || conversation == null
            ? _instance.conversation
            : (conversation as List<Fragment$ChatMessage>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Fragment$Rider.stub(_then(_instance))
        : CopyWith$Fragment$Rider(local$rider, (e) => call(rider: e));
  }

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Fragment$PaymentGateway.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod {
    final local$savedPaymentMethod = _instance.savedPaymentMethod;
    return local$savedPaymentMethod == null
        ? CopyWith$Fragment$SavedPaymentMethod.stub(_then(_instance))
        : CopyWith$Fragment$SavedPaymentMethod(
            local$savedPaymentMethod, (e) => call(savedPaymentMethod: e));
  }

  TRes points(
          Iterable<Fragment$Point> Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Fragment$Point(
                e,
                (i) => i,
              ))).toList());

  TRes directions(
          Iterable<Fragment$Point>? Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
              _fn) =>
      call(
          directions:
              _fn(_instance.directions?.map((e) => CopyWith$Fragment$Point(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes driverDirections(
          Iterable<Fragment$Point>? Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
              _fn) =>
      call(
          driverDirections: _fn(
              _instance.driverDirections?.map((e) => CopyWith$Fragment$Point(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$Service.stub(_then(_instance))
        : CopyWith$Fragment$Service(local$service, (e) => call(service: e));
  }

  TRes options(
          Iterable<Fragment$RideOption> Function(
                  Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
              _fn) =>
      call(
          options:
              _fn(_instance.options.map((e) => CopyWith$Fragment$RideOption(
                    e,
                    (i) => i,
                  ))).toList());

  TRes conversation(
          Iterable<Fragment$ChatMessage> Function(
                  Iterable<CopyWith$Fragment$ChatMessage<Fragment$ChatMessage>>)
              _fn) =>
      call(
          conversation: _fn(
              _instance.conversation.map((e) => CopyWith$Fragment$ChatMessage(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$CurrentOrder<TRes>
    implements CopyWith$Fragment$CurrentOrder<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? providerShare,
    double? costBest,
    String? currency,
    List<String>? addresses,
    double? waitMinutes,
    double? waitCost,
    double? rideOptionsCost,
    double? serviceCost,
    double? taxCost,
    Enum$PaymentMode? paymentMode,
    DateTime? driverLastSeenMessagesAt,
    Fragment$Rider? rider,
    Fragment$PaymentGateway? paymentGateway,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    List<Fragment$Point>? points,
    List<Fragment$Point>? directions,
    List<Fragment$Point>? driverDirections,
    Fragment$Service? service,
    List<Fragment$RideOption>? options,
    List<Fragment$ChatMessage>? conversation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Rider<TRes> get rider => CopyWith$Fragment$Rider.stub(_res);

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway =>
      CopyWith$Fragment$PaymentGateway.stub(_res);

  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod =>
      CopyWith$Fragment$SavedPaymentMethod.stub(_res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);

  options(_fn) => _res;

  conversation(_fn) => _res;
}

const fragmentDefinitionCurrentOrder = FragmentDefinitionNode(
  name: NameNode(value: 'CurrentOrder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Order'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'id'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'createdOn'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'expectedTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'finishTimestamp'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'distanceBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'durationBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'destinationArrivedTo'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'etaPickup'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paidAmount'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costAfterCoupon'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'providerShare'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'currency'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'addresses'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'waitMinutes'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'waitCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rideOptionsCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'serviceCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'taxCost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'paymentMode'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'durationBest'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'driverLastSeenMessagesAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'rider'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Rider'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'paymentGateway'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'PaymentGateway'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'savedPaymentMethod'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'SavedPaymentMethod'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'points'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'directions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'driverDirections'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'service'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Service'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'options'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'RideOption'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'directions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: 'conversation'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'ChatMessage'),
          directives: [],
        ),
        FieldNode(
          name: NameNode(value: '__typename'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
      ]),
    ),
    FieldNode(
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentCurrentOrder = DocumentNode(definitions: [
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionRider,
  fragmentDefinitionMedia,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPoint,
  fragmentDefinitionService,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);

extension ClientExtension$Fragment$CurrentOrder on graphql.GraphQLClient {
  void writeFragment$CurrentOrder({
    required Fragment$CurrentOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'CurrentOrder',
            document: documentNodeFragmentCurrentOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$CurrentOrder? readFragment$CurrentOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'CurrentOrder',
          document: documentNodeFragmentCurrentOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$CurrentOrder.fromJson(result);
  }
}
