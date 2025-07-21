import '../schema.gql.dart';
import 'favorite_driver.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';

class Fragment$PastOrder {
  Fragment$PastOrder({
    required this.id,
    required this.createdOn,
    required this.expectedTimestamp,
    this.startTimestamp,
    this.finishTimestamp,
    required this.costAfterCoupon,
    required this.currency,
    required this.waitMinutes,
    required this.durationBest,
    required this.distanceBest,
    this.paymentMode,
    required this.addresses,
    required this.points,
    this.savedPaymentMethod,
    this.paymentGateway,
    this.service,
    required this.options,
    this.driver,
    this.$__typename = 'Order',
  });

  factory Fragment$PastOrder.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdOn = json['createdOn'];
    final l$expectedTimestamp = json['expectedTimestamp'];
    final l$startTimestamp = json['startTimestamp'];
    final l$finishTimestamp = json['finishTimestamp'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$currency = json['currency'];
    final l$waitMinutes = json['waitMinutes'];
    final l$durationBest = json['durationBest'];
    final l$distanceBest = json['distanceBest'];
    final l$paymentMode = json['paymentMode'];
    final l$addresses = json['addresses'];
    final l$points = json['points'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$paymentGateway = json['paymentGateway'];
    final l$service = json['service'];
    final l$options = json['options'];
    final l$driver = json['driver'];
    final l$$__typename = json['__typename'];
    return Fragment$PastOrder(
      id: (l$id as String),
      createdOn: fromGraphQLTimestampToDartDateTime(l$createdOn),
      expectedTimestamp:
          fromGraphQLTimestampToDartDateTime(l$expectedTimestamp),
      startTimestamp: l$startTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$startTimestamp),
      finishTimestamp: l$finishTimestamp == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$finishTimestamp),
      costAfterCoupon: (l$costAfterCoupon as num).toDouble(),
      currency: (l$currency as String),
      waitMinutes: (l$waitMinutes as int),
      durationBest: (l$durationBest as int),
      distanceBest: (l$distanceBest as int),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Fragment$SavedPaymentMethod.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Fragment$PaymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      service: l$service == null
          ? null
          : Fragment$PastOrder$service.fromJson(
              (l$service as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      driver: l$driver == null
          ? null
          : Fragment$FavoriteDriver.fromJson(
              (l$driver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdOn;

  final DateTime expectedTimestamp;

  final DateTime? startTimestamp;

  final DateTime? finishTimestamp;

  final double costAfterCoupon;

  final String currency;

  final int waitMinutes;

  final int durationBest;

  final int distanceBest;

  final Enum$PaymentMode? paymentMode;

  final List<String> addresses;

  final List<Fragment$Point> points;

  final Fragment$SavedPaymentMethod? savedPaymentMethod;

  final Fragment$PaymentGateway? paymentGateway;

  final Fragment$PastOrder$service? service;

  final List<Fragment$RideOption> options;

  final Fragment$FavoriteDriver? driver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdOn = createdOn;
    _resultData['createdOn'] = fromDartDateTimeToGraphQLTimestamp(l$createdOn);
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
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$driver = driver;
    _resultData['driver'] = l$driver?.toJson();
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
    final l$costAfterCoupon = costAfterCoupon;
    final l$currency = currency;
    final l$waitMinutes = waitMinutes;
    final l$durationBest = durationBest;
    final l$distanceBest = distanceBest;
    final l$paymentMode = paymentMode;
    final l$addresses = addresses;
    final l$points = points;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$paymentGateway = paymentGateway;
    final l$service = service;
    final l$options = options;
    final l$driver = driver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdOn,
      l$expectedTimestamp,
      l$startTimestamp,
      l$finishTimestamp,
      l$costAfterCoupon,
      l$currency,
      l$waitMinutes,
      l$durationBest,
      l$distanceBest,
      l$paymentMode,
      Object.hashAll(l$addresses.map((v) => v)),
      Object.hashAll(l$points.map((v) => v)),
      l$savedPaymentMethod,
      l$paymentGateway,
      l$service,
      Object.hashAll(l$options.map((v) => v)),
      l$driver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PastOrder || runtimeType != other.runtimeType) {
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
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
    }
    final l$durationBest = durationBest;
    final lOther$durationBest = other.durationBest;
    if (l$durationBest != lOther$durationBest) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
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
    final l$savedPaymentMethod = savedPaymentMethod;
    final lOther$savedPaymentMethod = other.savedPaymentMethod;
    if (l$savedPaymentMethod != lOther$savedPaymentMethod) {
      return false;
    }
    final l$paymentGateway = paymentGateway;
    final lOther$paymentGateway = other.paymentGateway;
    if (l$paymentGateway != lOther$paymentGateway) {
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
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
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

extension UtilityExtension$Fragment$PastOrder on Fragment$PastOrder {
  CopyWith$Fragment$PastOrder<Fragment$PastOrder> get copyWith =>
      CopyWith$Fragment$PastOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PastOrder<TRes> {
  factory CopyWith$Fragment$PastOrder(
    Fragment$PastOrder instance,
    TRes Function(Fragment$PastOrder) then,
  ) = _CopyWithImpl$Fragment$PastOrder;

  factory CopyWith$Fragment$PastOrder.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PastOrder;

  TRes call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    double? costAfterCoupon,
    String? currency,
    int? waitMinutes,
    int? durationBest,
    int? distanceBest,
    Enum$PaymentMode? paymentMode,
    List<String>? addresses,
    List<Fragment$Point>? points,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    Fragment$PaymentGateway? paymentGateway,
    Fragment$PastOrder$service? service,
    List<Fragment$RideOption>? options,
    Fragment$FavoriteDriver? driver,
    String? $__typename,
  });
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod;
  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway;
  CopyWith$Fragment$PastOrder$service<TRes> get service;
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
  CopyWith$Fragment$FavoriteDriver<TRes> get driver;
}

class _CopyWithImpl$Fragment$PastOrder<TRes>
    implements CopyWith$Fragment$PastOrder<TRes> {
  _CopyWithImpl$Fragment$PastOrder(
    this._instance,
    this._then,
  );

  final Fragment$PastOrder _instance;

  final TRes Function(Fragment$PastOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdOn = _undefined,
    Object? expectedTimestamp = _undefined,
    Object? startTimestamp = _undefined,
    Object? finishTimestamp = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? currency = _undefined,
    Object? waitMinutes = _undefined,
    Object? durationBest = _undefined,
    Object? distanceBest = _undefined,
    Object? paymentMode = _undefined,
    Object? addresses = _undefined,
    Object? points = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? paymentGateway = _undefined,
    Object? service = _undefined,
    Object? options = _undefined,
    Object? driver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PastOrder(
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
        costAfterCoupon:
            costAfterCoupon == _undefined || costAfterCoupon == null
                ? _instance.costAfterCoupon
                : (costAfterCoupon as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod as Fragment$SavedPaymentMethod?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Fragment$PaymentGateway?),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$PastOrder$service?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        driver: driver == _undefined
            ? _instance.driver
            : (driver as Fragment$FavoriteDriver?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes points(
          Iterable<Fragment$Point> Function(
                  Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Fragment$Point(
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

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway {
    final local$paymentGateway = _instance.paymentGateway;
    return local$paymentGateway == null
        ? CopyWith$Fragment$PaymentGateway.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGateway(
            local$paymentGateway, (e) => call(paymentGateway: e));
  }

  CopyWith$Fragment$PastOrder$service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$PastOrder$service.stub(_then(_instance))
        : CopyWith$Fragment$PastOrder$service(
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

  CopyWith$Fragment$FavoriteDriver<TRes> get driver {
    final local$driver = _instance.driver;
    return local$driver == null
        ? CopyWith$Fragment$FavoriteDriver.stub(_then(_instance))
        : CopyWith$Fragment$FavoriteDriver(
            local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Fragment$PastOrder<TRes>
    implements CopyWith$Fragment$PastOrder<TRes> {
  _CopyWithStubImpl$Fragment$PastOrder(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdOn,
    DateTime? expectedTimestamp,
    DateTime? startTimestamp,
    DateTime? finishTimestamp,
    double? costAfterCoupon,
    String? currency,
    int? waitMinutes,
    int? durationBest,
    int? distanceBest,
    Enum$PaymentMode? paymentMode,
    List<String>? addresses,
    List<Fragment$Point>? points,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    Fragment$PaymentGateway? paymentGateway,
    Fragment$PastOrder$service? service,
    List<Fragment$RideOption>? options,
    Fragment$FavoriteDriver? driver,
    String? $__typename,
  }) =>
      _res;

  points(_fn) => _res;

  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod =>
      CopyWith$Fragment$SavedPaymentMethod.stub(_res);

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway =>
      CopyWith$Fragment$PaymentGateway.stub(_res);

  CopyWith$Fragment$PastOrder$service<TRes> get service =>
      CopyWith$Fragment$PastOrder$service.stub(_res);

  options(_fn) => _res;

  CopyWith$Fragment$FavoriteDriver<TRes> get driver =>
      CopyWith$Fragment$FavoriteDriver.stub(_res);
}

const fragmentDefinitionPastOrder = FragmentDefinitionNode(
  name: NameNode(value: 'PastOrder'),
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
      name: NameNode(value: 'costAfterCoupon'),
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
      name: NameNode(value: 'waitMinutes'),
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
      name: NameNode(value: 'distanceBest'),
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
      name: NameNode(value: 'addresses'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
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
      name: NameNode(value: 'service'),
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
      name: NameNode(value: '__typename'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
  ]),
);
const documentNodeFragmentPastOrder = DocumentNode(definitions: [
  fragmentDefinitionPastOrder,
  fragmentDefinitionPoint,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionRideOption,
  fragmentDefinitionFavoriteDriver,
]);

extension ClientExtension$Fragment$PastOrder on graphql.GraphQLClient {
  void writeFragment$PastOrder({
    required Fragment$PastOrder data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PastOrder',
            document: documentNodeFragmentPastOrder,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PastOrder? readFragment$PastOrder({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PastOrder',
          document: documentNodeFragmentPastOrder,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PastOrder.fromJson(result);
  }
}

class Fragment$PastOrder$service {
  Fragment$PastOrder$service({
    required this.name,
    required this.media,
    this.$__typename = 'Service',
  });

  factory Fragment$PastOrder$service.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$PastOrder$service(
      name: (l$name as String),
      media: Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final Fragment$Media media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PastOrder$service ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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

extension UtilityExtension$Fragment$PastOrder$service
    on Fragment$PastOrder$service {
  CopyWith$Fragment$PastOrder$service<Fragment$PastOrder$service>
      get copyWith => CopyWith$Fragment$PastOrder$service(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PastOrder$service<TRes> {
  factory CopyWith$Fragment$PastOrder$service(
    Fragment$PastOrder$service instance,
    TRes Function(Fragment$PastOrder$service) then,
  ) = _CopyWithImpl$Fragment$PastOrder$service;

  factory CopyWith$Fragment$PastOrder$service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PastOrder$service;

  TRes call({
    String? name,
    Fragment$Media? media,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
}

class _CopyWithImpl$Fragment$PastOrder$service<TRes>
    implements CopyWith$Fragment$PastOrder$service<TRes> {
  _CopyWithImpl$Fragment$PastOrder$service(
    this._instance,
    this._then,
  );

  final Fragment$PastOrder$service _instance;

  final TRes Function(Fragment$PastOrder$service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PastOrder$service(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Fragment$Media),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$Media(local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$PastOrder$service<TRes>
    implements CopyWith$Fragment$PastOrder$service<TRes> {
  _CopyWithStubImpl$Fragment$PastOrder$service(this._res);

  TRes _res;

  call({
    String? name,
    Fragment$Media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);
}
