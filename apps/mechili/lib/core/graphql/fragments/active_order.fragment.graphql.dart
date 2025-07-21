import '../schema.gql.dart';
import 'chat_message.fragment.graphql.dart';
import 'favorite_driver.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';
import 'wallet.fragment.graphql.dart';

class Fragment$ActiveOrder {
  Fragment$ActiveOrder({
    required this.order,
    this.driverLocation,
    this.$__typename = 'CurrentOrder',
  });

  factory Fragment$ActiveOrder.fromJson(Map<String, dynamic> json) {
    final l$order = json['order'];
    final l$driverLocation = json['driverLocation'];
    final l$$__typename = json['__typename'];
    return Fragment$ActiveOrder(
      order: Fragment$CurrentOrder.fromJson((l$order as Map<String, dynamic>)),
      driverLocation: l$driverLocation == null
          ? null
          : Fragment$Point.fromJson((l$driverLocation as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder order;

  final Fragment$Point? driverLocation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$order = order;
    _resultData['order'] = l$order.toJson();
    final l$driverLocation = driverLocation;
    _resultData['driverLocation'] = l$driverLocation?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$order = order;
    final l$driverLocation = driverLocation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$order,
      l$driverLocation,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ActiveOrder || runtimeType != other.runtimeType) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$driverLocation = driverLocation;
    final lOther$driverLocation = other.driverLocation;
    if (l$driverLocation != lOther$driverLocation) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$ActiveOrder on Fragment$ActiveOrder {
  CopyWith$Fragment$ActiveOrder<Fragment$ActiveOrder> get copyWith =>
      CopyWith$Fragment$ActiveOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ActiveOrder<TRes> {
  factory CopyWith$Fragment$ActiveOrder(
    Fragment$ActiveOrder instance,
    TRes Function(Fragment$ActiveOrder) then,
  ) = _CopyWithImpl$Fragment$ActiveOrder;

  factory CopyWith$Fragment$ActiveOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ActiveOrder;

  TRes call({
    Fragment$CurrentOrder? order,
    Fragment$Point? driverLocation,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get order;
  CopyWith$Fragment$Point<TRes> get driverLocation;
}

class _CopyWithImpl$Fragment$ActiveOrder<TRes>
    implements CopyWith$Fragment$ActiveOrder<TRes> {
  _CopyWithImpl$Fragment$ActiveOrder(
    this._instance,
    this._then,
  );

  final Fragment$ActiveOrder _instance;

  final TRes Function(Fragment$ActiveOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? order = _undefined,
    Object? driverLocation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ActiveOrder(
        order: order == _undefined || order == null
            ? _instance.order
            : (order as Fragment$CurrentOrder),
        driverLocation: driverLocation == _undefined
            ? _instance.driverLocation
            : (driverLocation as Fragment$Point?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get order {
    final local$order = _instance.order;
    return CopyWith$Fragment$CurrentOrder(local$order, (e) => call(order: e));
  }

  CopyWith$Fragment$Point<TRes> get driverLocation {
    final local$driverLocation = _instance.driverLocation;
    return local$driverLocation == null
        ? CopyWith$Fragment$Point.stub(_then(_instance))
        : CopyWith$Fragment$Point(
            local$driverLocation, (e) => call(driverLocation: e));
  }
}

class _CopyWithStubImpl$Fragment$ActiveOrder<TRes>
    implements CopyWith$Fragment$ActiveOrder<TRes> {
  _CopyWithStubImpl$Fragment$ActiveOrder(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? order,
    Fragment$Point? driverLocation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get order =>
      CopyWith$Fragment$CurrentOrder.stub(_res);

  CopyWith$Fragment$Point<TRes> get driverLocation =>
      CopyWith$Fragment$Point.stub(_res);
}

const fragmentDefinitionActiveOrder = FragmentDefinitionNode(
  name: NameNode(value: 'ActiveOrder'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'CurrentOrder'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'order'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'CurrentOrder'),
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
      name: NameNode(value: 'driverLocation'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentActiveOrder = DocumentNode(definitions: [
  fragmentDefinitionActiveOrder,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPoint,
  fragmentDefinitionFavoriteDriver,
  fragmentDefinitionRideOption,
  fragmentDefinitionWallet,
  fragmentDefinitionChatMessage,
]);

extension ClientExtension$Fragment$ActiveOrder on graphql.GraphQLClient {
  void writeFragment$ActiveOrder({
    required Fragment$ActiveOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ActiveOrder',
            document: documentNodeFragmentActiveOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ActiveOrder? readFragment$ActiveOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ActiveOrder',
          document: documentNodeFragmentActiveOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ActiveOrder.fromJson(result);
  }
}

class Fragment$CurrentOrder {
  Fragment$CurrentOrder({
    required this.id,
    required this.createdOn,
    required this.type,
    required this.expectedTimestamp,
    this.startTimestamp,
    this.finishTimestamp,
    required this.riderLastSeenMessagesAt,
    required this.distanceBest,
    required this.durationBest,
    required this.status,
    required this.destinationArrivedTo,
    this.etaPickup,
    required this.paidAmount,
    required this.costAfterCoupon,
    required this.costBest,
    required this.currency,
    required this.addresses,
    required this.waitMinutes,
    this.paymentMode,
    this.paymentGateway,
    required this.shopCarts,
    this.savedPaymentMethod,
    required this.points,
    this.directions,
    this.driverDirections,
    this.driver,
    this.service,
    required this.options,
    this.rider,
    required this.conversation,
    this.$__typename = 'Order',
  });

  factory Fragment$CurrentOrder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$type = json['type'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$riderLastSeenMessagesAt = json['riderLastSeenMessagesAt'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$status = json['status'];
    final l$destinationArrivedTo = json['destinationArrivedTo'];
    final l$etaPickup = json['etaPickup'];
    final l$paidAmount = json['paidAmount'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$costBest = json['costBest'];
    final l$currency = json['currency'];
    final l$addresses = json['addresses'];
    final l$waitMinutes = json['waitMinutes'];
    final l$paymentMode = json['paymentMode'];
    final l$paymentGateway = json['paymentGateway'];
    final l$shopCarts = json['shopCarts'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$points = json['points'];
    final l$directions = json['directions'];
    final l$driverDirections = json['driverDirections'];
    final l$driver = json['driver'];
    final l$service = json['service'];
    final l$options = json['options'];
    final l$rider = json['rider'];
    final l$conversation = json['conversation'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder(
      id: (l$id as String),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      type: fromJson$Enum$TaxiOrderType((l$type as String)),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$finishTimestamp),
      riderLastSeenMessagesAt:
          fromGraphQLTimestampToDartDateTime(l$riderLastSeenMessagesAt),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      destinationArrivedTo: (l$destinationArrivedTo as int),
      etaPickup: l$etaPickup == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$etaPickup),
      paidAmount: (l$paidAmount as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      costBest: (l$costBest as num).toDouble(),
      currency: (l$currency as String),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      waitMinutes: (l$waitMinutes as int),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Fragment$PaymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      shopCarts: (l$shopCarts as List<dynamic>)
          .map((e) => Fragment$CurrentOrder$shopCarts.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
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
      driver: l$driver == null
          ? null
          : Fragment$FavoriteDriver.fromJson(
              (l$driver as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment$CurrentOrder$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      rider: l$rider == null
          ? null
          : Fragment$CurrentOrder$rider.fromJson(
              (l$rider as Map<String, dynamic>)),
      conversation: (l$conversation as List<dynamic>)
          .map(
              (e) => Fragment$ChatMessage.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdOn;

  final Enum$TaxiOrderType type;

  final DateTime expectedTimestamp;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final DateTime riderLastSeenMessagesAt;

  final int distanceBest;

  final int durationBest;

  final Enum$OrderStatus status;

  final int destinationArrivedTo;

  final DateTime? etaPickup;

  final double paidAmount;

  final double costAfterCoupon;

  final double costBest;

  final String currency;

  final List<String> addresses;

  final int waitMinutes;

  final Enum$PaymentMode? paymentMode;

  final Fragment$PaymentGateway? paymentGateway;

  final List<Fragment$CurrentOrder$shopCarts> shopCarts;

  final Fragment$SavedPaymentMethod? savedPaymentMethod;

  final List<Fragment$Point> points;

  final List<Fragment$Point>? directions;

  final List<Fragment$Point>? driverDirections;

  final Fragment$FavoriteDriver? driver;

  final Fragment$CurrentOrder$service? service;

  final List<Fragment$RideOption> options;

  final Fragment$CurrentOrder$rider? rider;

  final List<Fragment$ChatMessage> conversation;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
    final l$type = type;
    _resultData['type'] = toJson$Enum$TaxiOrderType(l$type);
    final l$expectedTimestamp = expectedTimestamp;
    _resultData['expectedTimestamp'] =
        fromDartDateTimeToGraphQLTimestamp(l$expectedTimestamp);
    final l$startTimestamp = startTimestamp;
    _resultData['startTimestamp'] = l$startTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$startTimestamp);
    final l$finishTimestamp = finishTimestamp;
    _resultData['finishTimestamp'] = l$finishTimestamp == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$finishTimestamp);
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    _resultData['riderLastSeenMessagesAt'] =
        fromDartDateTimeToGraphQLTimestamp(l$riderLastSeenMessagesAt);
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
        : fromDartDateTimeToGraphQLTimestamp(l$etaPickup);
    final l$paidAmount = paidAmount;
    _resultData['paidAmount'] = l$paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$shopCarts = shopCarts;
    _resultData['shopCarts'] = l$shopCarts.map((e) => e.toJson()).toList();
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$driverDirections = driverDirections;
    _resultData['driverDirections'] =
        l$driverDirections?.map((e) => e.toJson()).toList();
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$rider = rider;
    _resultData['rider'] = l$rider?.toJson();
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
    final l$type = type;
    final l$expectedTimestamp = expectedTimestamp;
    final l$startTimestamp = startTimestamp;
    final l$finishTimestamp = finishTimestamp;
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$status = status;
    final l$destinationArrivedTo = destinationArrivedTo;
    final l$etaPickup = etaPickup;
    final l$paidAmount = paidAmount;
    final l$costAfterCoupon = costAfterCoupon;
    final l$costBest = costBest;
    final l$currency = currency;
    final l$addresses = addresses;
    final l$waitMinutes = waitMinutes;
    final l$paymentMode = paymentMode;
    final l$paymentGateway = paymentGateway;
    final l$shopCarts = shopCarts;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$points = points;
    final l$directions = directions;
    final l$driverDirections = driverDirections;
    final l$driver = driver;
    final l$service = service;
    final l$options = options;
    final l$rider = rider;
    final l$conversation = conversation;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdOn,
      l$type,
      l$expectedTimestamp,
      l$startTimestamp,
      l$finishTimestamp,
      l$riderLastSeenMessagesAt,
      l$distanceBest,
      l$durationBest,
      l$status,
      l$destinationArrivedTo,
      l$etaPickup,
      l$paidAmount,
      l$costAfterCoupon,
      l$costBest,
      l$currency,
      Object.hashAll(l$addresses.map((v) => v)),
      l$waitMinutes,
      l$paymentMode,
      l$paymentGateway,
      Object.hashAll(l$shopCarts.map((v) => v)),
      l$savedPaymentMethod,
      Object.hashAll(l$points.map((v) => v)),
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      l$driverDirections == null
          ? null
          : Object.hashAll(l$driverDirections.map((v) => v)),
      l$driver,
      l$service,
      Object.hashAll(l$options.map((v) => v)),
      l$rider,
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
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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
    final l$riderLastSeenMessagesAt = riderLastSeenMessagesAt;
    final lOther$riderLastSeenMessagesAt = other.riderLastSeenMessagesAt;
    if (l$riderLastSeenMessagesAt != lOther$riderLastSeenMessagesAt) {
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
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
      return false;
    }
    final l$shopCarts = shopCarts;
    final lOther$shopCarts = other.shopCarts;
    if (l$shopCarts.length != lOther$shopCarts.length) {
      return false;
    }
    for (int i = 0; i < l$shopCarts.length; i++) {
      final l$shopCarts$entry = l$shopCarts[i];
      final lOther$shopCarts$entry = lOther$shopCarts[i];
      if (l$shopCarts$entry != lOther$shopCarts$entry) {
        return false;
      }
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
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
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
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
      return false;
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
    Enum$TaxiOrderType? type,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    DateTime? riderLastSeenMessagesAt,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? costBest,
    String? currency,
    List<String>? addresses,
    int? waitMinutes,
    Enum$PaymentMode? paymentMode,
    Fragment$PaymentGateway? paymentGateway,
    List<Fragment$CurrentOrder$shopCarts>? shopCarts,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    List<Fragment$Point>? points,
    List<Fragment$Point>? directions,
    List<Fragment$Point>? driverDirections,
    Fragment$FavoriteDriver? driver,
    Fragment$CurrentOrder$service? service,
    List<Fragment$RideOption>? options,
    Fragment$CurrentOrder$rider? rider,
    List<Fragment$ChatMessage>? conversation,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway;
  TRes shopCarts(
      Iterable<Fragment$CurrentOrder$shopCarts> Function(
              Iterable<
                  CopyWith$Fragment$CurrentOrder$shopCarts<
                      Fragment$CurrentOrder$shopCarts>>)
          _fn);
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
  CopyWith$Fragment$FavoriteDriver<TRes> get driver;
  CopyWith$Fragment$CurrentOrder$service<TRes> get service;
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider;
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
    Object? type = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? riderLastSeenMessagesAt = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? status = _undefined,
    Object? destinationArrivedTo = _undefined,
    Object? etaPickup = _undefined,
    Object? paidAmount = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? costBest = _undefined,
    Object? currency = _undefined,
    Object? addresses = _undefined,
    Object? waitMinutes = _undefined,
    Object? paymentMode = _undefined,
    Object? paymentGateway = _undefined,
    Object? shopCarts = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? points = _undefined,
    Object? directions = _undefined,
    Object? driverDirections = _undefined,
    Object? driver = _undefined,
    Object? service = _undefined,
    Object? options = _undefined,
    Object? rider = _undefined,
    Object? conversation = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdOn: createdOn == _undefined || createdOn == null
            ? _instance.createdOn
            : (createdOn as DateTime),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$TaxiOrderType),
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
        riderLastSeenMessagesAt: riderLastSeenMessagesAt == _undefined ||
                riderLastSeenMessagesAt == null
            ? _instance.riderLastSeenMessagesAt
            : (riderLastSeenMessagesAt as DateTime),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        destinationArrivedTo:
            destinationArrivedTo == _undefined || destinationArrivedTo == null
                ? _instance.destinationArrivedTo
                : (destinationArrivedTo as int),
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
            : (waitMinutes as int),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Fragment$PaymentGateway?),
        shopCarts: shopCarts == _undefined || shopCarts == null
            ? _instance.shopCarts
            : (shopCarts as List<Fragment$CurrentOrder$shopCarts>),
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
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Fragment$FavoriteDriver?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$CurrentOrder$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        rider: rider == _undefined
            ? _instance.rider
            : (rider as Fragment$CurrentOrder$rider?),
        conversation: conversation == _undefined || conversation == null
            ? _instance.conversation
            : (conversation as List<Fragment$ChatMessage>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Fragment$PaymentGateway.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  TRes shopCarts(
          Iterable<Fragment$CurrentOrder$shopCarts> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder$shopCarts<
                          Fragment$CurrentOrder$shopCarts>>)
              _fn) =>
      call(
          shopCarts: _fn(_instance.shopCarts
              .map((e) => CopyWith$Fragment$CurrentOrder$shopCarts(
                    e,
                    (i) => i,
                  ))).toList());

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

  CopyWith$Fragment$FavoriteDriver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Fragment$FavoriteDriver.stub(_then(_instance))
        : CopyWith$Fragment$FavoriteDriver(
            local$driver, (e) => call(driver: e));
  }

  CopyWith$Fragment$CurrentOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$CurrentOrder$service.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$service(
            local$service, (e) => call(service: e));
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

  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return local$rider == null
        ? CopyWith$Fragment$CurrentOrder$rider.stub(_then(_instance))
        : CopyWith$Fragment$CurrentOrder$rider(
            local$rider, (e) => call(rider: e));
  }

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
    Enum$TaxiOrderType? type,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    DateTime? riderLastSeenMessagesAt,
    int? distanceBest,
    int? durationBest,
    Enum$OrderStatus? status,
    int? destinationArrivedTo,
    DateTime? etaPickup,
    double? paidAmount,
    double? costAfterCoupon,
    double? costBest,
    String? currency,
    List<String>? addresses,
    int? waitMinutes,
    Enum$PaymentMode? paymentMode,
    Fragment$PaymentGateway? paymentGateway,
    List<Fragment$CurrentOrder$shopCarts>? shopCarts,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    List<Fragment$Point>? points,
    List<Fragment$Point>? directions,
    List<Fragment$Point>? driverDirections,
    Fragment$FavoriteDriver? driver,
    Fragment$CurrentOrder$service? service,
    List<Fragment$RideOption>? options,
    Fragment$CurrentOrder$rider? rider,
    List<Fragment$ChatMessage>? conversation,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway =>
      CopyWith$Fragment$PaymentGateway.stub(_res);

  shopCarts(_fn) => _res;

  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod =>
      CopyWith$Fragment$SavedPaymentMethod.stub(_res);

  points(_fn) => _res;

  directions(_fn) => _res;

  driverDirections(_fn) => _res;

  CopyWith$Fragment$FavoriteDriver<TRes> get driver =>
      CopyWith$Fragment$FavoriteDriver.stub(_res);

  CopyWith$Fragment$CurrentOrder$service<TRes> get service =>
      CopyWith$Fragment$CurrentOrder$service.stub(_res);

  options(_fn) => _res;

  CopyWith$Fragment$CurrentOrder$rider<TRes> get rider =>
      CopyWith$Fragment$CurrentOrder$rider.stub(_res);

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
      name: NameNode(value: 'type'),
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
      name: NameNode(value: 'riderLastSeenMessagesAt'),
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
      name: NameNode(value: 'riderLastSeenMessagesAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
      name: NameNode(value: 'shopCarts'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'pickedAt'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'shopOrderCart'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FieldNode(
              name: NameNode(value: 'status'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: null,
            ),
            FieldNode(
              name: NameNode(value: 'shop'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                  name: NameNode(value: 'name'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'image'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FragmentSpreadNode(
                      name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'driver'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'FavoriteDriver'),
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
        FieldNode(
          name: NameNode(value: 'media'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Media'),
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
          name: NameNode(value: 'name'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'paymentMethod'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'description'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'prepayPercent'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'cancellationTotalFee'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
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
      name: NameNode(value: 'rider'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'wallets'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'Wallet'),
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
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPoint,
  fragmentDefinitionFavoriteDriver,
  fragmentDefinitionRideOption,
  fragmentDefinitionWallet,
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

class Fragment$CurrentOrder$shopCarts {
  Fragment$CurrentOrder$shopCarts({
    this.pickedAt,
    required this.shopOrderCart,
    this.$__typename = 'TaxiOrderShopDTO',
  });

  factory Fragment$CurrentOrder$shopCarts.fromJson(Map<String, dynamic> json) {
    final l$pickedAt = json['pickedAt'];
    final l$shopOrderCart = json['shopOrderCart'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$shopCarts(
      pickedAt: l$pickedAt == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$pickedAt),
      shopOrderCart: Fragment$CurrentOrder$shopCarts$shopOrderCart.fromJson(
          (l$shopOrderCart as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final DateTime? pickedAt;

  final Fragment$CurrentOrder$shopCarts$shopOrderCart shopOrderCart;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pickedAt = pickedAt;
    _resultData['pickedAt'] = l$pickedAt == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$pickedAt);
    final l$shopOrderCart = shopOrderCart;
    _resultData['shopOrderCart'] = l$shopOrderCart.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pickedAt = pickedAt;
    final l$shopOrderCart = shopOrderCart;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pickedAt,
      l$shopOrderCart,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CurrentOrder$shopCarts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pickedAt = pickedAt;
    final lOther$pickedAt = other.pickedAt;
    if (l$pickedAt != lOther$pickedAt) {
      return false;
    }
    final l$shopOrderCart = shopOrderCart;
    final lOther$shopOrderCart = other.shopOrderCart;
    if (l$shopOrderCart != lOther$shopOrderCart) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$shopCarts
    on Fragment$CurrentOrder$shopCarts {
  CopyWith$Fragment$CurrentOrder$shopCarts<Fragment$CurrentOrder$shopCarts>
      get copyWith => CopyWith$Fragment$CurrentOrder$shopCarts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$shopCarts<TRes> {
  factory CopyWith$Fragment$CurrentOrder$shopCarts(
    Fragment$CurrentOrder$shopCarts instance,
    TRes Function(Fragment$CurrentOrder$shopCarts) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$shopCarts;

  factory CopyWith$Fragment$CurrentOrder$shopCarts.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts;

  TRes call({
    DateTime? pickedAt,
    Fragment$CurrentOrder$shopCarts$shopOrderCart? shopOrderCart,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes>
      get shopOrderCart;
}

class _CopyWithImpl$Fragment$CurrentOrder$shopCarts<TRes>
    implements CopyWith$Fragment$CurrentOrder$shopCarts<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$shopCarts(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$shopCarts _instance;

  final TRes Function(Fragment$CurrentOrder$shopCarts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pickedAt = _undefined,
    Object? shopOrderCart = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$shopCarts(
        pickedAt: pickedAt == _undefined
            ? _instance.pickedAt
            : (pickedAt as DateTime?),
        shopOrderCart: shopOrderCart == _undefined || shopOrderCart == null
            ? _instance.shopOrderCart
            : (shopOrderCart as Fragment$CurrentOrder$shopCarts$shopOrderCart),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes>
      get shopOrderCart {
    final local$shopOrderCart = _instance.shopOrderCart;
    return CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart(
        local$shopOrderCart, (e) => call(shopOrderCart: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts<TRes>
    implements CopyWith$Fragment$CurrentOrder$shopCarts<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts(this._res);

  TRes _res;

  call({
    DateTime? pickedAt,
    Fragment$CurrentOrder$shopCarts$shopOrderCart? shopOrderCart,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes>
      get shopOrderCart =>
          CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart.stub(_res);
}

class Fragment$CurrentOrder$shopCarts$shopOrderCart {
  Fragment$CurrentOrder$shopCarts$shopOrderCart({
    required this.status,
    required this.shop,
    this.$__typename = 'ShopOrderCartDTO',
  });

  factory Fragment$CurrentOrder$shopCarts$shopOrderCart.fromJson(
      Map<String, dynamic> json) {
    final l$status = json['status'];
    final l$shop = json['shop'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$shopCarts$shopOrderCart(
      status: fromJson$Enum$CartStatus((l$status as String)),
      shop: Fragment$CurrentOrder$shopCarts$shopOrderCart$shop.fromJson(
          (l$shop as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Enum$CartStatus status;

  final Fragment$CurrentOrder$shopCarts$shopOrderCart$shop shop;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$status = status;
    _resultData['status'] = toJson$Enum$CartStatus(l$status);
    final l$shop = shop;
    _resultData['shop'] = l$shop.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$shop = shop;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$status,
      l$shop,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CurrentOrder$shopCarts$shopOrderCart ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$shop = shop;
    final lOther$shop = other.shop;
    if (l$shop != lOther$shop) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$shopCarts$shopOrderCart
    on Fragment$CurrentOrder$shopCarts$shopOrderCart {
  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<
          Fragment$CurrentOrder$shopCarts$shopOrderCart>
      get copyWith => CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes> {
  factory CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart(
    Fragment$CurrentOrder$shopCarts$shopOrderCart instance,
    TRes Function(Fragment$CurrentOrder$shopCarts$shopOrderCart) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart;

  factory CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart;

  TRes call({
    Enum$CartStatus? status,
    Fragment$CurrentOrder$shopCarts$shopOrderCart$shop? shop,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes> get shop;
}

class _CopyWithImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes>
    implements CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$shopCarts$shopOrderCart _instance;

  final TRes Function(Fragment$CurrentOrder$shopCarts$shopOrderCart) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? shop = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$shopCarts$shopOrderCart(
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$CartStatus),
        shop: shop == _undefined || shop == null
            ? _instance.shop
            : (shop as Fragment$CurrentOrder$shopCarts$shopOrderCart$shop),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes> get shop {
    final local$shop = _instance.shop;
    return CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
        local$shop, (e) => call(shop: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes>
    implements CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart(this._res);

  TRes _res;

  call({
    Enum$CartStatus? status,
    Fragment$CurrentOrder$shopCarts$shopOrderCart$shop? shop,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes> get shop =>
      CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop.stub(_res);
}

class Fragment$CurrentOrder$shopCarts$shopOrderCart$shop {
  Fragment$CurrentOrder$shopCarts$shopOrderCart$shop({
    required this.name,
    required this.image,
    this.$__typename = 'Shop',
  });

  factory Fragment$CurrentOrder$shopCarts$shopOrderCart$shop.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
      name: (l$name as String),
      image: Fragment$Media.fromJson((l$image as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Fragment$Media image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CurrentOrder$shopCarts$shopOrderCart$shop ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop
    on Fragment$CurrentOrder$shopCarts$shopOrderCart$shop {
  CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<
          Fragment$CurrentOrder$shopCarts$shopOrderCart$shop>
      get copyWith =>
          CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<
    TRes> {
  factory CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
    Fragment$CurrentOrder$shopCarts$shopOrderCart$shop instance,
    TRes Function(Fragment$CurrentOrder$shopCarts$shopOrderCart$shop) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop;

  factory CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop.stub(
          TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop;

  TRes call({
    String? name,
    Fragment$Media? image,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get image;
}

class _CopyWithImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes>
    implements
        CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$shopCarts$shopOrderCart$shop _instance;

  final TRes Function(Fragment$CurrentOrder$shopCarts$shopOrderCart$shop) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        image: image == _undefined || image == null
            ? _instance.image
            : (image as Fragment$Media),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Media<TRes> get image {
    final local$image = _instance.image;
    return CopyWith$Fragment$Media(local$image, (e) => call(image: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes>
    implements
        CopyWith$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$shopCarts$shopOrderCart$shop(
      this._res);

  TRes _res;

  call({
    String? name,
    Fragment$Media? image,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get image => CopyWith$Fragment$Media.stub(_res);
}

class Fragment$CurrentOrder$service {
  Fragment$CurrentOrder$service({
    required this.media,
    required this.name,
    required this.paymentMethod,
    this.description,
    required this.prepayPercent,
    required this.cancellationTotalFee,
    this.$__typename = 'Service',
  });

  factory Fragment$CurrentOrder$service.fromJson(Map<String, dynamic> json) {
    final l$media = json['media'];
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$description = json['description'];
    final l$prepayPercent = json['prepayPercent'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$service(
      media: Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      name: (l$name as String),
      paymentMethod:
          fromJson$Enum$ServicePaymentMethod((l$paymentMethod as String)),
      description: (l$description as String?),
      prepayPercent: (l$prepayPercent as int),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Media media;

  final String name;

  final Enum$ServicePaymentMethod paymentMethod;

  final String? description;

  final int prepayPercent;

  final double cancellationTotalFee;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$name = name;
    _resultData['name'] = l$name;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] =
        toJson$Enum$ServicePaymentMethod(l$paymentMethod);
    final l$description = description;
    _resultData['description'] = l$description;
    final l$prepayPercent = prepayPercent;
    _resultData['prepayPercent'] = l$prepayPercent;
    final l$cancellationTotalFee = cancellationTotalFee;
    _resultData['cancellationTotalFee'] = l$cancellationTotalFee;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$media = media;
    final l$name = name;
    final l$paymentMethod = paymentMethod;
    final l$description = description;
    final l$prepayPercent = prepayPercent;
    final l$cancellationTotalFee = cancellationTotalFee;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$media,
      l$name,
      l$paymentMethod,
      l$description,
      l$prepayPercent,
      l$cancellationTotalFee,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CurrentOrder$service ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$prepayPercent = prepayPercent;
    final lOther$prepayPercent = other.prepayPercent;
    if (l$prepayPercent != lOther$prepayPercent) {
      return false;
    }
    final l$cancellationTotalFee = cancellationTotalFee;
    final lOther$cancellationTotalFee = other.cancellationTotalFee;
    if (l$cancellationTotalFee != lOther$cancellationTotalFee) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Fragment$CurrentOrder$service
    on Fragment$CurrentOrder$service {
  CopyWith$Fragment$CurrentOrder$service<Fragment$CurrentOrder$service>
      get copyWith => CopyWith$Fragment$CurrentOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$service<TRes> {
  factory CopyWith$Fragment$CurrentOrder$service(
    Fragment$CurrentOrder$service instance,
    TRes Function(Fragment$CurrentOrder$service) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$service;

  factory CopyWith$Fragment$CurrentOrder$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$service;

  TRes call({
    Fragment$Media? media,
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? description,
    int? prepayPercent,
    double? cancellationTotalFee,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
}

class _CopyWithImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$service(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$service _instance;

  final TRes Function(Fragment$CurrentOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? media = _undefined,
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? description = _undefined,
    Object? prepayPercent = _undefined,
    Object? cancellationTotalFee = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$service(
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Fragment$Media),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        paymentMethod: paymentMethod == _undefined || paymentMethod == null
            ? _instance.paymentMethod
            : (paymentMethod as Enum$ServicePaymentMethod),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        prepayPercent: prepayPercent == _undefined || prepayPercent == null
            ? _instance.prepayPercent
            : (prepayPercent as int),
        cancellationTotalFee:
            cancellationTotalFee == _undefined || cancellationTotalFee == null
                ? _instance.cancellationTotalFee
                : (cancellationTotalFee as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$Media(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$CurrentOrder$service<TRes>
    implements CopyWith$Fragment$CurrentOrder$service<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$service(this._res);

  TRes _res;

  call({
    Fragment$Media? media,
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    String? description,
    int? prepayPercent,
    double? cancellationTotalFee,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);
}

class Fragment$CurrentOrder$rider {
  Fragment$CurrentOrder$rider({
    required this.wallets,
    this.$__typename = 'Rider',
  });

  factory Fragment$CurrentOrder$rider.fromJson(Map<String, dynamic> json) {
    final l$wallets = json['wallets'];
    final l$$__typename = json['__typename'];
    return Fragment$CurrentOrder$rider(
      wallets: (l$wallets as List<dynamic>)
          .map((e) => Fragment$Wallet.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Wallet> wallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$wallets = wallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$wallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$CurrentOrder$rider ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
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

extension UtilityExtension$Fragment$CurrentOrder$rider
    on Fragment$CurrentOrder$rider {
  CopyWith$Fragment$CurrentOrder$rider<Fragment$CurrentOrder$rider>
      get copyWith => CopyWith$Fragment$CurrentOrder$rider(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$CurrentOrder$rider<TRes> {
  factory CopyWith$Fragment$CurrentOrder$rider(
    Fragment$CurrentOrder$rider instance,
    TRes Function(Fragment$CurrentOrder$rider) then,
  ) = _CopyWithImpl$Fragment$CurrentOrder$rider;

  factory CopyWith$Fragment$CurrentOrder$rider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$CurrentOrder$rider;

  TRes call({
    List<Fragment$Wallet>? wallets,
    String? $__typename,
  });
  TRes wallets(
      Iterable<Fragment$Wallet> Function(
              Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
          _fn);
}

class _CopyWithImpl$Fragment$CurrentOrder$rider<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider<TRes> {
  _CopyWithImpl$Fragment$CurrentOrder$rider(
    this._instance,
    this._then,
  );

  final Fragment$CurrentOrder$rider _instance;

  final TRes Function(Fragment$CurrentOrder$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? wallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$CurrentOrder$rider(
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Fragment$Wallet>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes wallets(
          Iterable<Fragment$Wallet> Function(
                  Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
              _fn) =>
      call(
          wallets: _fn(_instance.wallets.map((e) => CopyWith$Fragment$Wallet(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$CurrentOrder$rider<TRes>
    implements CopyWith$Fragment$CurrentOrder$rider<TRes> {
  _CopyWithStubImpl$Fragment$CurrentOrder$rider(this._res);

  TRes _res;

  call({
    List<Fragment$Wallet>? wallets,
    String? $__typename,
  }) =>
      _res;

  wallets(_fn) => _res;
}
