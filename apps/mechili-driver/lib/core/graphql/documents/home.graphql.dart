import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/order_request.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/rider.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../fragments/service.fragment.graphql.dart';
import '../fragments/wallet.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Subscription$OrderCreated {
  Subscription$OrderCreated({required this.orderCreated});

  factory Subscription$OrderCreated.fromJson(Map<String, dynamic> json) {
    final l$orderCreated = json['orderCreated'];
    return Subscription$OrderCreated(
        orderCreated: Fragment$OrderRequest.fromJson(
            (l$orderCreated as Map<String, dynamic>)));
  }

  final Fragment$OrderRequest orderCreated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCreated = orderCreated;
    _resultData['orderCreated'] = l$orderCreated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCreated = orderCreated;
    return Object.hashAll([l$orderCreated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$OrderCreated ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCreated = orderCreated;
    final lOther$orderCreated = other.orderCreated;
    if (l$orderCreated != lOther$orderCreated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderCreated
    on Subscription$OrderCreated {
  CopyWith$Subscription$OrderCreated<Subscription$OrderCreated> get copyWith =>
      CopyWith$Subscription$OrderCreated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderCreated<TRes> {
  factory CopyWith$Subscription$OrderCreated(
    Subscription$OrderCreated instance,
    TRes Function(Subscription$OrderCreated) then,
  ) = _CopyWithImpl$Subscription$OrderCreated;

  factory CopyWith$Subscription$OrderCreated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderCreated;

  TRes call({Fragment$OrderRequest? orderCreated});
  CopyWith$Fragment$OrderRequest<TRes> get orderCreated;
}

class _CopyWithImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithImpl$Subscription$OrderCreated(
    this._instance,
    this._then,
  );

  final Subscription$OrderCreated _instance;

  final TRes Function(Subscription$OrderCreated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderCreated = _undefined}) => _then(
      Subscription$OrderCreated(
          orderCreated: orderCreated == _undefined || orderCreated == null
              ? _instance.orderCreated
              : (orderCreated as Fragment$OrderRequest)));

  CopyWith$Fragment$OrderRequest<TRes> get orderCreated {
    final local$orderCreated = _instance.orderCreated;
    return CopyWith$Fragment$OrderRequest(
        local$orderCreated, (e) => call(orderCreated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderCreated<TRes>
    implements CopyWith$Subscription$OrderCreated<TRes> {
  _CopyWithStubImpl$Subscription$OrderCreated(this._res);

  TRes _res;

  call({Fragment$OrderRequest? orderCreated}) => _res;

  CopyWith$Fragment$OrderRequest<TRes> get orderCreated =>
      CopyWith$Fragment$OrderRequest.stub(_res);
}

const documentNodeSubscriptionOrderCreated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderCreated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCreated'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'OrderRequest'),
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
      )
    ]),
  ),
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionService,
]);
Subscription$OrderCreated _parserFn$Subscription$OrderCreated(
        Map<String, dynamic> data) =>
    Subscription$OrderCreated.fromJson(data);

class Options$Subscription$OrderCreated
    extends graphql.SubscriptionOptions<Subscription$OrderCreated> {
  Options$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class WatchOptions$Subscription$OrderCreated
    extends graphql.WatchQueryOptions<Subscription$OrderCreated> {
  WatchOptions$Subscription$OrderCreated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderCreated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderCreated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderCreated,
        );
}

class FetchMoreOptions$Subscription$OrderCreated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderCreated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderCreated,
        );
}

extension ClientExtension$Subscription$OrderCreated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderCreated>> subscribe$OrderCreated(
          [Options$Subscription$OrderCreated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderCreated());
  graphql.ObservableQuery<Subscription$OrderCreated>
      watchSubscription$OrderCreated(
              [WatchOptions$Subscription$OrderCreated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderCreated());
}

class Subscription$OrderRemoved {
  Subscription$OrderRemoved({required this.orderRemoved});

  factory Subscription$OrderRemoved.fromJson(Map<String, dynamic> json) {
    final l$orderRemoved = json['orderRemoved'];
    return Subscription$OrderRemoved(
        orderRemoved: Subscription$OrderRemoved$orderRemoved.fromJson(
            (l$orderRemoved as Map<String, dynamic>)));
  }

  final Subscription$OrderRemoved$orderRemoved orderRemoved;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderRemoved = orderRemoved;
    _resultData['orderRemoved'] = l$orderRemoved.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderRemoved = orderRemoved;
    return Object.hashAll([l$orderRemoved]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$OrderRemoved ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderRemoved = orderRemoved;
    final lOther$orderRemoved = other.orderRemoved;
    if (l$orderRemoved != lOther$orderRemoved) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved
    on Subscription$OrderRemoved {
  CopyWith$Subscription$OrderRemoved<Subscription$OrderRemoved> get copyWith =>
      CopyWith$Subscription$OrderRemoved(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved(
    Subscription$OrderRemoved instance,
    TRes Function(Subscription$OrderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved;

  factory CopyWith$Subscription$OrderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved;

  TRes call({Subscription$OrderRemoved$orderRemoved? orderRemoved});
  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved;
}

class _CopyWithImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderRemoved = _undefined}) => _then(
      Subscription$OrderRemoved(
          orderRemoved: orderRemoved == _undefined || orderRemoved == null
              ? _instance.orderRemoved
              : (orderRemoved as Subscription$OrderRemoved$orderRemoved)));

  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved {
    final local$orderRemoved = _instance.orderRemoved;
    return CopyWith$Subscription$OrderRemoved$orderRemoved(
        local$orderRemoved, (e) => call(orderRemoved: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved(this._res);

  TRes _res;

  call({Subscription$OrderRemoved$orderRemoved? orderRemoved}) => _res;

  CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> get orderRemoved =>
      CopyWith$Subscription$OrderRemoved$orderRemoved.stub(_res);
}

const documentNodeSubscriptionOrderRemoved = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderRemoved'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderRemoved'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'OrderRequest'),
            directives: [],
          ),
          FieldNode(
            name: NameNode(value: 'id'),
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
      )
    ]),
  ),
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionService,
]);
Subscription$OrderRemoved _parserFn$Subscription$OrderRemoved(
        Map<String, dynamic> data) =>
    Subscription$OrderRemoved.fromJson(data);

class Options$Subscription$OrderRemoved
    extends graphql.SubscriptionOptions<Subscription$OrderRemoved> {
  Options$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class WatchOptions$Subscription$OrderRemoved
    extends graphql.WatchQueryOptions<Subscription$OrderRemoved> {
  WatchOptions$Subscription$OrderRemoved({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderRemoved? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderRemoved,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderRemoved,
        );
}

class FetchMoreOptions$Subscription$OrderRemoved
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderRemoved(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderRemoved,
        );
}

extension ClientExtension$Subscription$OrderRemoved on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderRemoved>> subscribe$OrderRemoved(
          [Options$Subscription$OrderRemoved? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderRemoved());
  graphql.ObservableQuery<Subscription$OrderRemoved>
      watchSubscription$OrderRemoved(
              [WatchOptions$Subscription$OrderRemoved? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderRemoved());
}

class Subscription$OrderRemoved$orderRemoved implements Fragment$OrderRequest {
  Subscription$OrderRemoved$orderRemoved({
    required this.id,
    required this.status,
    required this.currency,
    required this.costBest,
    this.paymentMode,
    this.savedPaymentMethod,
    this.paymentGateway,
    required this.addresses,
    required this.providerShare,
    required this.distanceBest,
    required this.durationBest,
    required this.waitMinutes,
    this.directions,
    required this.options,
    this.service,
    required this.points,
    this.$__typename = 'Order',
  });

  factory Subscription$OrderRemoved$orderRemoved.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$status = json['status'];
    final l$currency = json['currency'];
    final l$costBest = json['costBest'];
    final l$paymentMode = json['paymentMode'];
    final l$savedPaymentMethod = json['savedPaymentMethod'];
    final l$paymentGateway = json['paymentGateway'];
    final l$addresses = json['addresses'];
    final l$providerShare = json['providerShare'];
    final l$distanceBest = json['distanceBest'];
    final l$durationBest = json['durationBest'];
    final l$waitMinutes = json['waitMinutes'];
    final l$directions = json['directions'];
    final l$options = json['options'];
    final l$service = json['service'];
    final l$points = json['points'];
    final l$$__typename = json['__typename'];
    return Subscription$OrderRemoved$orderRemoved(
      id: (l$id as String),
      status: fromJson$Enum$OrderStatus((l$status as String)),
      currency: (l$currency as String),
      costBest: (l$costBest as num).toDouble(),
      paymentMode: l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String)),
      savedPaymentMethod: l$savedPaymentMethod == null
          ? null
          : Fragment$SavedPaymentMethod.fromJson(
              (l$savedPaymentMethod as Map<String, dynamic>)),
      paymentGateway: l$paymentGateway == null
          ? null
          : Fragment$PaymentGateway.fromJson(
              (l$paymentGateway as Map<String, dynamic>)),
      addresses:
          (l$addresses as List<dynamic>).map((e) => (e as String)).toList(),
      providerShare: (l$providerShare as num).toDouble(),
      distanceBest: (l$distanceBest as int),
      durationBest: (l$durationBest as int),
      waitMinutes: (l$waitMinutes as num).toDouble(),
      directions: (l$directions as List<dynamic>?)
          ?.map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      service: l$service == null
          ? null
          : Fragment$Service.fromJson((l$service as Map<String, dynamic>)),
      points: (l$points as List<dynamic>)
          .map((e) => Fragment$Point.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$OrderStatus status;

  final String currency;

  final double costBest;

  final Enum$PaymentMode? paymentMode;

  final Fragment$SavedPaymentMethod? savedPaymentMethod;

  final Fragment$PaymentGateway? paymentGateway;

  final List<String> addresses;

  final double providerShare;

  final int distanceBest;

  final int durationBest;

  final double waitMinutes;

  final List<Fragment$Point>? directions;

  final List<Fragment$RideOption> options;

  final Fragment$Service? service;

  final List<Fragment$Point> points;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$status = status;
    _resultData['status'] = toJson$Enum$OrderStatus(l$status);
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$costBest = costBest;
    _resultData['costBest'] = l$costBest;
    final l$paymentMode = paymentMode;
    _resultData['paymentMode'] =
        l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    final l$savedPaymentMethod = savedPaymentMethod;
    _resultData['savedPaymentMethod'] = l$savedPaymentMethod?.toJson();
    final l$paymentGateway = paymentGateway;
    _resultData['paymentGateway'] = l$paymentGateway?.toJson();
    final l$addresses = addresses;
    _resultData['addresses'] = l$addresses.map((e) => e).toList();
    final l$providerShare = providerShare;
    _resultData['providerShare'] = l$providerShare;
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$durationBest = durationBest;
    _resultData['durationBest'] = l$durationBest;
    final l$waitMinutes = waitMinutes;
    _resultData['waitMinutes'] = l$waitMinutes;
    final l$directions = directions;
    _resultData['directions'] = l$directions?.map((e) => e.toJson()).toList();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$service = service;
    _resultData['service'] = l$service?.toJson();
    final l$points = points;
    _resultData['points'] = l$points.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$status = status;
    final l$currency = currency;
    final l$costBest = costBest;
    final l$paymentMode = paymentMode;
    final l$savedPaymentMethod = savedPaymentMethod;
    final l$paymentGateway = paymentGateway;
    final l$addresses = addresses;
    final l$providerShare = providerShare;
    final l$distanceBest = distanceBest;
    final l$durationBest = durationBest;
    final l$waitMinutes = waitMinutes;
    final l$directions = directions;
    final l$options = options;
    final l$service = service;
    final l$points = points;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$status,
      l$currency,
      l$costBest,
      l$paymentMode,
      l$savedPaymentMethod,
      l$paymentGateway,
      Object.hashAll(l$addresses.map((v) => v)),
      l$providerShare,
      l$distanceBest,
      l$durationBest,
      l$waitMinutes,
      l$directions == null ? null : Object.hashAll(l$directions.map((v) => v)),
      Object.hashAll(l$options.map((v) => v)),
      l$service,
      Object.hashAll(l$points.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$OrderRemoved$orderRemoved ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (l$costBest != lOther$costBest) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (l$paymentMode != lOther$paymentMode) {
      return false;
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
    final l$providerShare = providerShare;
    final lOther$providerShare = other.providerShare;
    if (l$providerShare != lOther$providerShare) {
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
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
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
    final l$service = service;
    final lOther$service = other.service;
    if (l$service != lOther$service) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderRemoved$orderRemoved
    on Subscription$OrderRemoved$orderRemoved {
  CopyWith$Subscription$OrderRemoved$orderRemoved<
          Subscription$OrderRemoved$orderRemoved>
      get copyWith => CopyWith$Subscription$OrderRemoved$orderRemoved(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  factory CopyWith$Subscription$OrderRemoved$orderRemoved(
    Subscription$OrderRemoved$orderRemoved instance,
    TRes Function(Subscription$OrderRemoved$orderRemoved) then,
  ) = _CopyWithImpl$Subscription$OrderRemoved$orderRemoved;

  factory CopyWith$Subscription$OrderRemoved$orderRemoved.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved;

  TRes call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    Enum$PaymentMode? paymentMode,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    Fragment$PaymentGateway? paymentGateway,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    double? waitMinutes,
    List<Fragment$Point>? directions,
    List<Fragment$RideOption>? options,
    Fragment$Service? service,
    List<Fragment$Point>? points,
    String? $__typename,
  });
  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod;
  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway;
  TRes directions(
      Iterable<Fragment$Point>? Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>?)
          _fn);
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
  CopyWith$Fragment$Service<TRes> get service;
  TRes points(
      Iterable<Fragment$Point> Function(
              Iterable<CopyWith$Fragment$Point<Fragment$Point>>)
          _fn);
}

class _CopyWithImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithImpl$Subscription$OrderRemoved$orderRemoved(
    this._instance,
    this._then,
  );

  final Subscription$OrderRemoved$orderRemoved _instance;

  final TRes Function(Subscription$OrderRemoved$orderRemoved) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? status = _undefined,
    Object? currency = _undefined,
    Object? costBest = _undefined,
    Object? paymentMode = _undefined,
    Object? savedPaymentMethod = _undefined,
    Object? paymentGateway = _undefined,
    Object? addresses = _undefined,
    Object? providerShare = _undefined,
    Object? distanceBest = _undefined,
    Object? durationBest = _undefined,
    Object? waitMinutes = _undefined,
    Object? directions = _undefined,
    Object? options = _undefined,
    Object? service = _undefined,
    Object? points = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Subscription$OrderRemoved$orderRemoved(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$OrderStatus),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        costBest: costBest == _undefined || costBest == null
            ? _instance.costBest
            : (costBest as double),
        paymentMode: paymentMode == _undefined
            ? _instance.paymentMode
            : (paymentMode as Enum$PaymentMode?),
        savedPaymentMethod: savedPaymentMethod == _undefined
            ? _instance.savedPaymentMethod
            : (savedPaymentMethod as Fragment$SavedPaymentMethod?),
        paymentGateway: paymentGateway == _undefined
            ? _instance.paymentGateway
            : (paymentGateway as Fragment$PaymentGateway?),
        addresses: addresses == _undefined || addresses == null
            ? _instance.addresses
            : (addresses as List<String>),
        providerShare: providerShare == _undefined || providerShare == null
            ? _instance.providerShare
            : (providerShare as double),
        distanceBest: distanceBest == _undefined || distanceBest == null
            ? _instance.distanceBest
            : (distanceBest as int),
        durationBest: durationBest == _undefined || durationBest == null
            ? _instance.durationBest
            : (durationBest as int),
        waitMinutes: waitMinutes == _undefined || waitMinutes == null
            ? _instance.waitMinutes
            : (waitMinutes as double),
        directions: directions == _undefined
            ? _instance.directions
            : (directions as List<Fragment$Point>?),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        service: service == _undefined
            ? _instance.service
            : (service as Fragment$Service?),
        points: points == _undefined || points == null
            ? _instance.points
            : (points as List<Fragment$Point>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

  CopyWith$Fragment$Service<TRes> get service {
    final local$service = _instance.service;
    return local$service == null
        ? CopyWith$Fragment$Service.stub(_then(_instance))
        : CopyWith$Fragment$Service(local$service, (e) => call(service: e));
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
}

class _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved<TRes>
    implements CopyWith$Subscription$OrderRemoved$orderRemoved<TRes> {
  _CopyWithStubImpl$Subscription$OrderRemoved$orderRemoved(this._res);

  TRes _res;

  call({
    String? id,
    Enum$OrderStatus? status,
    String? currency,
    double? costBest,
    Enum$PaymentMode? paymentMode,
    Fragment$SavedPaymentMethod? savedPaymentMethod,
    Fragment$PaymentGateway? paymentGateway,
    List<String>? addresses,
    double? providerShare,
    int? distanceBest,
    int? durationBest,
    double? waitMinutes,
    List<Fragment$Point>? directions,
    List<Fragment$RideOption>? options,
    Fragment$Service? service,
    List<Fragment$Point>? points,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$SavedPaymentMethod<TRes> get savedPaymentMethod =>
      CopyWith$Fragment$SavedPaymentMethod.stub(_res);

  CopyWith$Fragment$PaymentGateway<TRes> get paymentGateway =>
      CopyWith$Fragment$PaymentGateway.stub(_res);

  directions(_fn) => _res;

  options(_fn) => _res;

  CopyWith$Fragment$Service<TRes> get service =>
      CopyWith$Fragment$Service.stub(_res);

  points(_fn) => _res;
}

class Subscription$OrderUpdated {
  Subscription$OrderUpdated({required this.orderUpdated});

  factory Subscription$OrderUpdated.fromJson(Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$OrderUpdated(
        orderUpdated: Fragment$CurrentOrder.fromJson(
            (l$orderUpdated as Map<String, dynamic>)));
  }

  final Fragment$CurrentOrder orderUpdated;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderUpdated = orderUpdated;
    _resultData['orderUpdated'] = l$orderUpdated.toJson();
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderUpdated = orderUpdated;
    return Object.hashAll([l$orderUpdated]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Subscription$OrderUpdated ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderUpdated = orderUpdated;
    final lOther$orderUpdated = other.orderUpdated;
    if (l$orderUpdated != lOther$orderUpdated) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Subscription$OrderUpdated
    on Subscription$OrderUpdated {
  CopyWith$Subscription$OrderUpdated<Subscription$OrderUpdated> get copyWith =>
      CopyWith$Subscription$OrderUpdated(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Subscription$OrderUpdated<TRes> {
  factory CopyWith$Subscription$OrderUpdated(
    Subscription$OrderUpdated instance,
    TRes Function(Subscription$OrderUpdated) then,
  ) = _CopyWithImpl$Subscription$OrderUpdated;

  factory CopyWith$Subscription$OrderUpdated.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdated;

  TRes call({Fragment$CurrentOrder? orderUpdated});
  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithImpl$Subscription$OrderUpdated(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdated _instance;

  final TRes Function(Subscription$OrderUpdated) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) => _then(
      Subscription$OrderUpdated(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Fragment$CurrentOrder)));

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Fragment$CurrentOrder(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderUpdated<TRes>
    implements CopyWith$Subscription$OrderUpdated<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdated(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? orderUpdated}) => _res;

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeSubscriptionOrderUpdated = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderUpdated'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderUpdated'),
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
      )
    ]),
  ),
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
Subscription$OrderUpdated _parserFn$Subscription$OrderUpdated(
        Map<String, dynamic> data) =>
    Subscription$OrderUpdated.fromJson(data);

class Options$Subscription$OrderUpdated
    extends graphql.SubscriptionOptions<Subscription$OrderUpdated> {
  Options$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class WatchOptions$Subscription$OrderUpdated
    extends graphql.WatchQueryOptions<Subscription$OrderUpdated> {
  WatchOptions$Subscription$OrderUpdated({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdated? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdated,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderUpdated,
        );
}

class FetchMoreOptions$Subscription$OrderUpdated
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderUpdated(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderUpdated,
        );
}

extension ClientExtension$Subscription$OrderUpdated on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderUpdated>> subscribe$OrderUpdated(
          [Options$Subscription$OrderUpdated? options]) =>
      this.subscribe(options ?? Options$Subscription$OrderUpdated());
  graphql.ObservableQuery<Subscription$OrderUpdated>
      watchSubscription$OrderUpdated(
              [WatchOptions$Subscription$OrderUpdated? options]) =>
          this.watchQuery(options ?? WatchOptions$Subscription$OrderUpdated());
}

class Variables$Mutation$UpdateDriverLocation {
  factory Variables$Mutation$UpdateDriverLocation(
          {required Input$PointInput point}) =>
      Variables$Mutation$UpdateDriverLocation._({
        r'point': point,
      });

  Variables$Mutation$UpdateDriverLocation._(this._$data);

  factory Variables$Mutation$UpdateDriverLocation.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$point = data['point'];
    result$data['point'] =
        Input$PointInput.fromJson((l$point as Map<String, dynamic>));
    return Variables$Mutation$UpdateDriverLocation._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PointInput get point => (_$data['point'] as Input$PointInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$point = point;
    result$data['point'] = l$point.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverLocation<
          Variables$Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDriverLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$point = point;
    final lOther$point = other.point;
    if (l$point != lOther$point) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$point = point;
    return Object.hashAll([l$point]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverLocation(
    Variables$Mutation$UpdateDriverLocation instance,
    TRes Function(Variables$Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverLocation;

  factory CopyWith$Variables$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation;

  TRes call({Input$PointInput? point});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverLocation _instance;

  final TRes Function(Variables$Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? point = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverLocation._({
        ..._instance._$data,
        if (point != _undefined && point != null)
          'point': (point as Input$PointInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({Input$PointInput? point}) => _res;
}

class Mutation$UpdateDriverLocation {
  Mutation$UpdateDriverLocation({
    required this.updateDriversLocationNew,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverLocation.fromJson(Map<String, dynamic> json) {
    final l$updateDriversLocationNew = json['updateDriversLocationNew'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverLocation(
      updateDriversLocationNew: (l$updateDriversLocationNew as List<dynamic>)
          .map((e) =>
              Fragment$OrderRequest.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$OrderRequest> updateDriversLocationNew;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateDriversLocationNew = updateDriversLocationNew;
    _resultData['updateDriversLocationNew'] =
        l$updateDriversLocationNew.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateDriversLocationNew = updateDriversLocationNew;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$updateDriversLocationNew.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDriverLocation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateDriversLocationNew = updateDriversLocationNew;
    final lOther$updateDriversLocationNew = other.updateDriversLocationNew;
    if (l$updateDriversLocationNew.length !=
        lOther$updateDriversLocationNew.length) {
      return false;
    }
    for (int i = 0; i < l$updateDriversLocationNew.length; i++) {
      final l$updateDriversLocationNew$entry = l$updateDriversLocationNew[i];
      final lOther$updateDriversLocationNew$entry =
          lOther$updateDriversLocationNew[i];
      if (l$updateDriversLocationNew$entry !=
          lOther$updateDriversLocationNew$entry) {
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

extension UtilityExtension$Mutation$UpdateDriverLocation
    on Mutation$UpdateDriverLocation {
  CopyWith$Mutation$UpdateDriverLocation<Mutation$UpdateDriverLocation>
      get copyWith => CopyWith$Mutation$UpdateDriverLocation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverLocation<TRes> {
  factory CopyWith$Mutation$UpdateDriverLocation(
    Mutation$UpdateDriverLocation instance,
    TRes Function(Mutation$UpdateDriverLocation) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverLocation;

  factory CopyWith$Mutation$UpdateDriverLocation.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverLocation;

  TRes call({
    List<Fragment$OrderRequest>? updateDriversLocationNew,
    String? $__typename,
  });
  TRes updateDriversLocationNew(
      Iterable<Fragment$OrderRequest> Function(
              Iterable<CopyWith$Fragment$OrderRequest<Fragment$OrderRequest>>)
          _fn);
}

class _CopyWithImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverLocation(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverLocation _instance;

  final TRes Function(Mutation$UpdateDriverLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateDriversLocationNew = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverLocation(
        updateDriversLocationNew: updateDriversLocationNew == _undefined ||
                updateDriversLocationNew == null
            ? _instance.updateDriversLocationNew
            : (updateDriversLocationNew as List<Fragment$OrderRequest>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes updateDriversLocationNew(
          Iterable<Fragment$OrderRequest> Function(
                  Iterable<
                      CopyWith$Fragment$OrderRequest<Fragment$OrderRequest>>)
              _fn) =>
      call(
          updateDriversLocationNew: _fn(_instance.updateDriversLocationNew
              .map((e) => CopyWith$Fragment$OrderRequest(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$UpdateDriverLocation<TRes>
    implements CopyWith$Mutation$UpdateDriverLocation<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverLocation(this._res);

  TRes _res;

  call({
    List<Fragment$OrderRequest>? updateDriversLocationNew,
    String? $__typename,
  }) =>
      _res;

  updateDriversLocationNew(_fn) => _res;
}

const documentNodeMutationUpdateDriverLocation = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverLocation'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'point')),
        type: NamedTypeNode(
          name: NameNode(value: 'PointInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateDriversLocationNew'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'point'),
            value: VariableNode(name: NameNode(value: 'point')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'OrderRequest'),
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
  fragmentDefinitionOrderRequest,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionPoint,
  fragmentDefinitionRideOption,
  fragmentDefinitionService,
]);
Mutation$UpdateDriverLocation _parserFn$Mutation$UpdateDriverLocation(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverLocation.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverLocation = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverLocation?,
);

class Options$Mutation$UpdateDriverLocation
    extends graphql.MutationOptions<Mutation$UpdateDriverLocation> {
  Options$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverLocation? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverLocation>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverLocation(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverLocation,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );

  final OnMutationCompleted$Mutation$UpdateDriverLocation?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverLocation
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverLocation> {
  WatchOptions$Mutation$UpdateDriverLocation({
    String? operationName,
    required Variables$Mutation$UpdateDriverLocation variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverLocation? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverLocation,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverLocation,
        );
}

extension ClientExtension$Mutation$UpdateDriverLocation
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverLocation>>
      mutate$UpdateDriverLocation(
              Options$Mutation$UpdateDriverLocation options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverLocation>
      watchMutation$UpdateDriverLocation(
              WatchOptions$Mutation$UpdateDriverLocation options) =>
          this.watchMutation(options);
}

class Variables$Mutation$UpdateOrderStatus {
  factory Variables$Mutation$UpdateOrderStatus({
    required String orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  }) =>
      Variables$Mutation$UpdateOrderStatus._({
        r'orderId': orderId,
        if (status != null) r'status': status,
        if (cashPayment != null) r'cashPayment': cashPayment,
        if (destinationArrivedTo != null)
          r'destinationArrivedTo': destinationArrivedTo,
      });

  Variables$Mutation$UpdateOrderStatus._(this._$data);

  factory Variables$Mutation$UpdateOrderStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('cashPayment')) {
      final l$cashPayment = data['cashPayment'];
      result$data['cashPayment'] = (l$cashPayment as num?)?.toDouble();
    }
    if (data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = data['destinationArrivedTo'];
      result$data['destinationArrivedTo'] = (l$destinationArrivedTo as int?);
    }
    return Variables$Mutation$UpdateOrderStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);

  double? get cashPayment => (_$data['cashPayment'] as double?);

  int? get destinationArrivedTo => (_$data['destinationArrivedTo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('cashPayment')) {
      final l$cashPayment = cashPayment;
      result$data['cashPayment'] = l$cashPayment;
    }
    if (_$data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = destinationArrivedTo;
      result$data['destinationArrivedTo'] = l$destinationArrivedTo;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateOrderStatus<
          Variables$Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateOrderStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$cashPayment = cashPayment;
    final lOther$cashPayment = other.cashPayment;
    if (_$data.containsKey('cashPayment') !=
        other._$data.containsKey('cashPayment')) {
      return false;
    }
    if (l$cashPayment != lOther$cashPayment) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (_$data.containsKey('destinationArrivedTo') !=
        other._$data.containsKey('destinationArrivedTo')) {
      return false;
    }
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    final l$status = status;
    final l$cashPayment = cashPayment;
    final l$destinationArrivedTo = destinationArrivedTo;
    return Object.hashAll([
      l$orderId,
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('cashPayment') ? l$cashPayment : const {},
      _$data.containsKey('destinationArrivedTo')
          ? l$destinationArrivedTo
          : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateOrderStatus(
    Variables$Mutation$UpdateOrderStatus instance,
    TRes Function(Variables$Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateOrderStatus;

  factory CopyWith$Variables$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus;

  TRes call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateOrderStatus _instance;

  final TRes Function(Variables$Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderId = _undefined,
    Object? status = _undefined,
    Object? cashPayment = _undefined,
    Object? destinationArrivedTo = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateOrderStatus._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (cashPayment != _undefined) 'cashPayment': (cashPayment as double?),
        if (destinationArrivedTo != _undefined)
          'destinationArrivedTo': (destinationArrivedTo as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({
    String? orderId,
    Enum$OrderStatus? status,
    double? cashPayment,
    int? destinationArrivedTo,
  }) =>
      _res;
}

class Mutation$UpdateOrderStatus {
  Mutation$UpdateOrderStatus({
    required this.updateOneOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateOrderStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneOrder = json['updateOneOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateOrderStatus(
      updateOneOrder: Fragment$CurrentOrder.fromJson(
          (l$updateOneOrder as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder updateOneOrder;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneOrder = updateOneOrder;
    _resultData['updateOneOrder'] = l$updateOneOrder.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneOrder = updateOneOrder;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneOrder,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateOrderStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneOrder = updateOneOrder;
    final lOther$updateOneOrder = other.updateOneOrder;
    if (l$updateOneOrder != lOther$updateOneOrder) {
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

extension UtilityExtension$Mutation$UpdateOrderStatus
    on Mutation$UpdateOrderStatus {
  CopyWith$Mutation$UpdateOrderStatus<Mutation$UpdateOrderStatus>
      get copyWith => CopyWith$Mutation$UpdateOrderStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateOrderStatus<TRes> {
  factory CopyWith$Mutation$UpdateOrderStatus(
    Mutation$UpdateOrderStatus instance,
    TRes Function(Mutation$UpdateOrderStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateOrderStatus;

  factory CopyWith$Mutation$UpdateOrderStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateOrderStatus;

  TRes call({
    Fragment$CurrentOrder? updateOneOrder,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateOrderStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateOrderStatus _instance;

  final TRes Function(Mutation$UpdateOrderStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateOrderStatus(
        updateOneOrder: updateOneOrder == _undefined || updateOneOrder == null
            ? _instance.updateOneOrder
            : (updateOneOrder as Fragment$CurrentOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder {
    final local$updateOneOrder = _instance.updateOneOrder;
    return CopyWith$Fragment$CurrentOrder(
        local$updateOneOrder, (e) => call(updateOneOrder: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateOrderStatus<TRes>
    implements CopyWith$Mutation$UpdateOrderStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateOrderStatus(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? updateOneOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationUpdateOrderStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateOrderStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'OrderStatus'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'cashPayment')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'destinationArrivedTo')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneOrder'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'orderId')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'paidAmount'),
                    value: VariableNode(name: NameNode(value: 'cashPayment')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'destinationArrivedTo'),
                    value: VariableNode(
                        name: NameNode(value: 'destinationArrivedTo')),
                  ),
                ]),
              ),
            ]),
          )
        ],
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
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
Mutation$UpdateOrderStatus _parserFn$Mutation$UpdateOrderStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateOrderStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateOrderStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateOrderStatus?,
);

class Options$Mutation$UpdateOrderStatus
    extends graphql.MutationOptions<Mutation$UpdateOrderStatus> {
  Options$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateOrderStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateOrderStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateOrderStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateOrderStatus,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );

  final OnMutationCompleted$Mutation$UpdateOrderStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateOrderStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateOrderStatus> {
  WatchOptions$Mutation$UpdateOrderStatus({
    String? operationName,
    required Variables$Mutation$UpdateOrderStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateOrderStatus? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateOrderStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateOrderStatus,
        );
}

extension ClientExtension$Mutation$UpdateOrderStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateOrderStatus>>
      mutate$UpdateOrderStatus(
              Options$Mutation$UpdateOrderStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateOrderStatus>
      watchMutation$UpdateOrderStatus(
              WatchOptions$Mutation$UpdateOrderStatus options) =>
          this.watchMutation(options);
}

class Variables$Mutation$UpdateDriverStatus {
  factory Variables$Mutation$UpdateDriverStatus({
    required Enum$DriverStatus status,
    String? fcmId,
  }) =>
      Variables$Mutation$UpdateDriverStatus._({
        r'status': status,
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverStatus._(this._$data);

  factory Variables$Mutation$UpdateDriverStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$status = data['status'];
    result$data['status'] = fromJson$Enum$DriverStatus((l$status as String));
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverStatus._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverStatus get status => (_$data['status'] as Enum$DriverStatus);

  String? get fcmId => (_$data['fcmId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$status = status;
    result$data['status'] = toJson$Enum$DriverStatus(l$status);
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverStatus<
          Variables$Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDriverStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$fcmId = fcmId;
    return Object.hashAll([
      l$status,
      _$data.containsKey('fcmId') ? l$fcmId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverStatus(
    Variables$Mutation$UpdateDriverStatus instance,
    TRes Function(Variables$Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverStatus;

  factory CopyWith$Variables$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus;

  TRes call({
    Enum$DriverStatus? status,
    String? fcmId,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverStatus _instance;

  final TRes Function(Variables$Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? status = _undefined,
    Object? fcmId = _undefined,
  }) =>
      _then(Variables$Mutation$UpdateDriverStatus._({
        ..._instance._$data,
        if (status != _undefined && status != null)
          'status': (status as Enum$DriverStatus),
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({
    Enum$DriverStatus? status,
    String? fcmId,
  }) =>
      _res;
}

class Mutation$UpdateDriverStatus {
  Mutation$UpdateDriverStatus({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverStatus.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverStatus(
      updateOneDriver: Fragment$ProfileFull.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFull updateOneDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDriverStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverStatus
    on Mutation$UpdateDriverStatus {
  CopyWith$Mutation$UpdateDriverStatus<Mutation$UpdateDriverStatus>
      get copyWith => CopyWith$Mutation$UpdateDriverStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverStatus<TRes> {
  factory CopyWith$Mutation$UpdateDriverStatus(
    Mutation$UpdateDriverStatus instance,
    TRes Function(Mutation$UpdateDriverStatus) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverStatus;

  factory CopyWith$Mutation$UpdateDriverStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverStatus;

  TRes call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverStatus _instance;

  final TRes Function(Mutation$UpdateDriverStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverStatus(
        updateOneDriver:
            updateOneDriver == _undefined || updateOneDriver == null
                ? _instance.updateOneDriver
                : (updateOneDriver as Fragment$ProfileFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$ProfileFull(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverStatus<TRes>
    implements CopyWith$Mutation$UpdateDriverStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverStatus(this._res);

  TRes _res;

  call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFull.stub(_res);
}

const documentNodeMutationUpdateDriverStatus = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverStatus'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'status')),
        type: NamedTypeNode(
          name: NameNode(value: 'DriverStatus'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'status'),
                    value: VariableNode(name: NameNode(value: 'status')),
                  ),
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  ),
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ProfileFull'),
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
  fragmentDefinitionProfileFull,
  fragmentDefinitionMedia,
  fragmentDefinitionWallet,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionRider,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPoint,
  fragmentDefinitionService,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$UpdateDriverStatus _parserFn$Mutation$UpdateDriverStatus(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverStatus = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverStatus?,
);

class Options$Mutation$UpdateDriverStatus
    extends graphql.MutationOptions<Mutation$UpdateDriverStatus> {
  Options$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverStatus>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverStatus(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverStatus,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );

  final OnMutationCompleted$Mutation$UpdateDriverStatus? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverStatus
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverStatus> {
  WatchOptions$Mutation$UpdateDriverStatus({
    String? operationName,
    required Variables$Mutation$UpdateDriverStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverStatus? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverStatus,
        );
}

extension ClientExtension$Mutation$UpdateDriverStatus on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverStatus>>
      mutate$UpdateDriverStatus(
              Options$Mutation$UpdateDriverStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateDriverStatus>
      watchMutation$UpdateDriverStatus(
              WatchOptions$Mutation$UpdateDriverStatus options) =>
          this.watchMutation(options);
}

class Variables$Mutation$UpdateDriverFCMId {
  factory Variables$Mutation$UpdateDriverFCMId({String? fcmId}) =>
      Variables$Mutation$UpdateDriverFCMId._({
        if (fcmId != null) r'fcmId': fcmId,
      });

  Variables$Mutation$UpdateDriverFCMId._(this._$data);

  factory Variables$Mutation$UpdateDriverFCMId.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('fcmId')) {
      final l$fcmId = data['fcmId'];
      result$data['fcmId'] = (l$fcmId as String?);
    }
    return Variables$Mutation$UpdateDriverFCMId._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get fcmId => (_$data['fcmId'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('fcmId')) {
      final l$fcmId = fcmId;
      result$data['fcmId'] = l$fcmId;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverFCMId<
          Variables$Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDriverFCMId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fcmId = fcmId;
    final lOther$fcmId = other.fcmId;
    if (_$data.containsKey('fcmId') != other._$data.containsKey('fcmId')) {
      return false;
    }
    if (l$fcmId != lOther$fcmId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fcmId = fcmId;
    return Object.hashAll([_$data.containsKey('fcmId') ? l$fcmId : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverFCMId(
    Variables$Mutation$UpdateDriverFCMId instance,
    TRes Function(Variables$Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId;

  factory CopyWith$Variables$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId;

  TRes call({String? fcmId});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Variables$Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? fcmId = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverFCMId._({
        ..._instance._$data,
        if (fcmId != _undefined) 'fcmId': (fcmId as String?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({String? fcmId}) => _res;
}

class Mutation$UpdateDriverFCMId {
  Mutation$UpdateDriverFCMId({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverFCMId.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverFCMId(
      updateOneDriver: Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$UpdateDriverFCMId$updateOneDriver updateOneDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDriverFCMId ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverFCMId
    on Mutation$UpdateDriverFCMId {
  CopyWith$Mutation$UpdateDriverFCMId<Mutation$UpdateDriverFCMId>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId(
    Mutation$UpdateDriverFCMId instance,
    TRes Function(Mutation$UpdateDriverFCMId) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId;

  factory CopyWith$Mutation$UpdateDriverFCMId.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId;

  TRes call({
    Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId _instance;

  final TRes Function(Mutation$UpdateDriverFCMId) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverFCMId(
        updateOneDriver: updateOneDriver == _undefined ||
                updateOneDriver == null
            ? _instance.updateOneDriver
            : (updateOneDriver as Mutation$UpdateDriverFCMId$updateOneDriver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId(this._res);

  TRes _res;

  call({
    Mutation$UpdateDriverFCMId$updateOneDriver? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
      get updateOneDriver =>
          CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(_res);
}

const documentNodeMutationUpdateDriverFCMId = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverFCMId'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'fcmId')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'notificationPlayerId'),
                    value: VariableNode(name: NameNode(value: 'fcmId')),
                  )
                ]),
              ),
            ]),
          )
        ],
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
]);
Mutation$UpdateDriverFCMId _parserFn$Mutation$UpdateDriverFCMId(
        Map<String, dynamic> data) =>
    Mutation$UpdateDriverFCMId.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverFCMId = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverFCMId?,
);

class Options$Mutation$UpdateDriverFCMId
    extends graphql.MutationOptions<Mutation$UpdateDriverFCMId> {
  Options$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverFCMId>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverFCMId(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverFCMId,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );

  final OnMutationCompleted$Mutation$UpdateDriverFCMId? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverFCMId
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverFCMId> {
  WatchOptions$Mutation$UpdateDriverFCMId({
    String? operationName,
    Variables$Mutation$UpdateDriverFCMId? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverFCMId? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverFCMId,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverFCMId,
        );
}

extension ClientExtension$Mutation$UpdateDriverFCMId on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverFCMId>>
      mutate$UpdateDriverFCMId(
              [Options$Mutation$UpdateDriverFCMId? options]) async =>
          await this.mutate(options ?? Options$Mutation$UpdateDriverFCMId());
  graphql.ObservableQuery<
      Mutation$UpdateDriverFCMId> watchMutation$UpdateDriverFCMId(
          [WatchOptions$Mutation$UpdateDriverFCMId? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$UpdateDriverFCMId());
}

class Mutation$UpdateDriverFCMId$updateOneDriver {
  Mutation$UpdateDriverFCMId$updateOneDriver({
    required this.id,
    this.$__typename = 'Driver',
  });

  factory Mutation$UpdateDriverFCMId$updateOneDriver.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverFCMId$updateOneDriver(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDriverFCMId$updateOneDriver ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$UpdateDriverFCMId$updateOneDriver
    on Mutation$UpdateDriverFCMId$updateOneDriver {
  CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<
          Mutation$UpdateDriverFCMId$updateOneDriver>
      get copyWith => CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver(
    Mutation$UpdateDriverFCMId$updateOneDriver instance,
    TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  factory CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverFCMId$updateOneDriver(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverFCMId$updateOneDriver _instance;

  final TRes Function(Mutation$UpdateDriverFCMId$updateOneDriver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverFCMId$updateOneDriver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver<TRes>
    implements CopyWith$Mutation$UpdateDriverFCMId$updateOneDriver<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverFCMId$updateOneDriver(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateDriverSearchDistance {
  factory Variables$Mutation$UpdateDriverSearchDistance({int? distance}) =>
      Variables$Mutation$UpdateDriverSearchDistance._({
        if (distance != null) r'distance': distance,
      });

  Variables$Mutation$UpdateDriverSearchDistance._(this._$data);

  factory Variables$Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('distance')) {
      final l$distance = data['distance'];
      result$data['distance'] = (l$distance as int?);
    }
    return Variables$Mutation$UpdateDriverSearchDistance._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get distance => (_$data['distance'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('distance')) {
      final l$distance = distance;
      result$data['distance'] = l$distance;
    }
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateDriverSearchDistance<
          Variables$Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateDriverSearchDistance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (_$data.containsKey('distance') !=
        other._$data.containsKey('distance')) {
      return false;
    }
    if (l$distance != lOther$distance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$distance = distance;
    return Object.hashAll(
        [_$data.containsKey('distance') ? l$distance : const {}]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance(
    Variables$Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Variables$Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Variables$Mutation$UpdateDriverSearchDistance.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance;

  TRes call({int? distance});
}

class _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Variables$Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? distance = _undefined}) =>
      _then(Variables$Mutation$UpdateDriverSearchDistance._({
        ..._instance._$data,
        if (distance != _undefined) 'distance': (distance as int?),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Variables$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call({int? distance}) => _res;
}

class Mutation$UpdateDriverSearchDistance {
  Mutation$UpdateDriverSearchDistance({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateDriverSearchDistance.fromJson(
      Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateDriverSearchDistance(
      updateOneDriver: Fragment$ProfileFull.fromJson(
          (l$updateOneDriver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFull updateOneDriver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateOneDriver = updateOneDriver;
    _resultData['updateOneDriver'] = l$updateOneDriver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateOneDriver = updateOneDriver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateOneDriver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateDriverSearchDistance ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateOneDriver = updateOneDriver;
    final lOther$updateOneDriver = other.updateOneDriver;
    if (l$updateOneDriver != lOther$updateOneDriver) {
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

extension UtilityExtension$Mutation$UpdateDriverSearchDistance
    on Mutation$UpdateDriverSearchDistance {
  CopyWith$Mutation$UpdateDriverSearchDistance<
          Mutation$UpdateDriverSearchDistance>
      get copyWith => CopyWith$Mutation$UpdateDriverSearchDistance(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  factory CopyWith$Mutation$UpdateDriverSearchDistance(
    Mutation$UpdateDriverSearchDistance instance,
    TRes Function(Mutation$UpdateDriverSearchDistance) then,
  ) = _CopyWithImpl$Mutation$UpdateDriverSearchDistance;

  factory CopyWith$Mutation$UpdateDriverSearchDistance.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance;

  TRes call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithImpl$Mutation$UpdateDriverSearchDistance(
    this._instance,
    this._then,
  );

  final Mutation$UpdateDriverSearchDistance _instance;

  final TRes Function(Mutation$UpdateDriverSearchDistance) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateDriverSearchDistance(
        updateOneDriver:
            updateOneDriver == _undefined || updateOneDriver == null
                ? _instance.updateOneDriver
                : (updateOneDriver as Fragment$ProfileFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver {
    final local$updateOneDriver = _instance.updateOneDriver;
    return CopyWith$Fragment$ProfileFull(
        local$updateOneDriver, (e) => call(updateOneDriver: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance<TRes>
    implements CopyWith$Mutation$UpdateDriverSearchDistance<TRes> {
  _CopyWithStubImpl$Mutation$UpdateDriverSearchDistance(this._res);

  TRes _res;

  call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFull.stub(_res);
}

const documentNodeMutationUpdateDriverSearchDistance =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateDriverSearchDistance'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'distance')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updateOneDriver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: StringValueNode(
                  value: '1',
                  isBlock: false,
                ),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'update'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'searchDistance'),
                    value: VariableNode(name: NameNode(value: 'distance')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'ProfileFull'),
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
  fragmentDefinitionProfileFull,
  fragmentDefinitionMedia,
  fragmentDefinitionWallet,
  fragmentDefinitionCurrentOrder,
  fragmentDefinitionRider,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPoint,
  fragmentDefinitionService,
  fragmentDefinitionRideOption,
  fragmentDefinitionChatMessage,
]);
Mutation$UpdateDriverSearchDistance
    _parserFn$Mutation$UpdateDriverSearchDistance(Map<String, dynamic> data) =>
        Mutation$UpdateDriverSearchDistance.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateDriverSearchDistance = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateDriverSearchDistance?,
);

class Options$Mutation$UpdateDriverSearchDistance
    extends graphql.MutationOptions<Mutation$UpdateDriverSearchDistance> {
  Options$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    Variables$Mutation$UpdateDriverSearchDistance? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateDriverSearchDistance? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateDriverSearchDistance>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null
                        ? null
                        : _parserFn$Mutation$UpdateDriverSearchDistance(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateDriverSearchDistance,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );

  final OnMutationCompleted$Mutation$UpdateDriverSearchDistance?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateDriverSearchDistance
    extends graphql.WatchQueryOptions<Mutation$UpdateDriverSearchDistance> {
  WatchOptions$Mutation$UpdateDriverSearchDistance({
    String? operationName,
    Variables$Mutation$UpdateDriverSearchDistance? variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateDriverSearchDistance? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables?.toJson() ?? {},
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationUpdateDriverSearchDistance,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateDriverSearchDistance,
        );
}

extension ClientExtension$Mutation$UpdateDriverSearchDistance
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateDriverSearchDistance>>
      mutate$UpdateDriverSearchDistance(
              [Options$Mutation$UpdateDriverSearchDistance? options]) async =>
          await this
              .mutate(options ?? Options$Mutation$UpdateDriverSearchDistance());
  graphql.ObservableQuery<Mutation$UpdateDriverSearchDistance>
      watchMutation$UpdateDriverSearchDistance(
              [WatchOptions$Mutation$UpdateDriverSearchDistance? options]) =>
          this.watchMutation(
              options ?? WatchOptions$Mutation$UpdateDriverSearchDistance());
}

class Query$CancelReasons {
  Query$CancelReasons({
    required this.orderCancelReasons,
    this.$__typename = 'Query',
  });

  factory Query$CancelReasons.fromJson(Map<String, dynamic> json) {
    final l$orderCancelReasons = json['orderCancelReasons'];
    final l$$__typename = json['__typename'];
    return Query$CancelReasons(
      orderCancelReasons: (l$orderCancelReasons as List<dynamic>)
          .map((e) => Query$CancelReasons$orderCancelReasons.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$CancelReasons$orderCancelReasons> orderCancelReasons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orderCancelReasons = orderCancelReasons;
    _resultData['orderCancelReasons'] =
        l$orderCancelReasons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orderCancelReasons = orderCancelReasons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$orderCancelReasons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CancelReasons || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderCancelReasons = orderCancelReasons;
    final lOther$orderCancelReasons = other.orderCancelReasons;
    if (l$orderCancelReasons.length != lOther$orderCancelReasons.length) {
      return false;
    }
    for (int i = 0; i < l$orderCancelReasons.length; i++) {
      final l$orderCancelReasons$entry = l$orderCancelReasons[i];
      final lOther$orderCancelReasons$entry = lOther$orderCancelReasons[i];
      if (l$orderCancelReasons$entry != lOther$orderCancelReasons$entry) {
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

extension UtilityExtension$Query$CancelReasons on Query$CancelReasons {
  CopyWith$Query$CancelReasons<Query$CancelReasons> get copyWith =>
      CopyWith$Query$CancelReasons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CancelReasons<TRes> {
  factory CopyWith$Query$CancelReasons(
    Query$CancelReasons instance,
    TRes Function(Query$CancelReasons) then,
  ) = _CopyWithImpl$Query$CancelReasons;

  factory CopyWith$Query$CancelReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$CancelReasons;

  TRes call({
    List<Query$CancelReasons$orderCancelReasons>? orderCancelReasons,
    String? $__typename,
  });
  TRes orderCancelReasons(
      Iterable<Query$CancelReasons$orderCancelReasons> Function(
              Iterable<
                  CopyWith$Query$CancelReasons$orderCancelReasons<
                      Query$CancelReasons$orderCancelReasons>>)
          _fn);
}

class _CopyWithImpl$Query$CancelReasons<TRes>
    implements CopyWith$Query$CancelReasons<TRes> {
  _CopyWithImpl$Query$CancelReasons(
    this._instance,
    this._then,
  );

  final Query$CancelReasons _instance;

  final TRes Function(Query$CancelReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderCancelReasons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CancelReasons(
        orderCancelReasons:
            orderCancelReasons == _undefined || orderCancelReasons == null
                ? _instance.orderCancelReasons
                : (orderCancelReasons
                    as List<Query$CancelReasons$orderCancelReasons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes orderCancelReasons(
          Iterable<Query$CancelReasons$orderCancelReasons> Function(
                  Iterable<
                      CopyWith$Query$CancelReasons$orderCancelReasons<
                          Query$CancelReasons$orderCancelReasons>>)
              _fn) =>
      call(
          orderCancelReasons: _fn(_instance.orderCancelReasons
              .map((e) => CopyWith$Query$CancelReasons$orderCancelReasons(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CancelReasons<TRes>
    implements CopyWith$Query$CancelReasons<TRes> {
  _CopyWithStubImpl$Query$CancelReasons(this._res);

  TRes _res;

  call({
    List<Query$CancelReasons$orderCancelReasons>? orderCancelReasons,
    String? $__typename,
  }) =>
      _res;

  orderCancelReasons(_fn) => _res;
}

const documentNodeQueryCancelReasons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CancelReasons'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orderCancelReasons'),
        alias: null,
        arguments: [],
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
            name: NameNode(value: 'title'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$CancelReasons _parserFn$Query$CancelReasons(Map<String, dynamic> data) =>
    Query$CancelReasons.fromJson(data);
typedef OnQueryComplete$Query$CancelReasons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CancelReasons?,
);

class Options$Query$CancelReasons
    extends graphql.QueryOptions<Query$CancelReasons> {
  Options$Query$CancelReasons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CancelReasons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CancelReasons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$CancelReasons(data),
                  ),
          onError: onError,
          document: documentNodeQueryCancelReasons,
          parserFn: _parserFn$Query$CancelReasons,
        );

  final OnQueryComplete$Query$CancelReasons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CancelReasons
    extends graphql.WatchQueryOptions<Query$CancelReasons> {
  WatchOptions$Query$CancelReasons({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CancelReasons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryCancelReasons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CancelReasons,
        );
}

class FetchMoreOptions$Query$CancelReasons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CancelReasons(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryCancelReasons,
        );
}

extension ClientExtension$Query$CancelReasons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CancelReasons>> query$CancelReasons(
          [Options$Query$CancelReasons? options]) async =>
      await this.query(options ?? Options$Query$CancelReasons());
  graphql.ObservableQuery<Query$CancelReasons> watchQuery$CancelReasons(
          [WatchOptions$Query$CancelReasons? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$CancelReasons());
  void writeQuery$CancelReasons({
    required Query$CancelReasons data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryCancelReasons)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CancelReasons? readQuery$CancelReasons({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCancelReasons)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CancelReasons.fromJson(result);
  }
}

class Query$CancelReasons$orderCancelReasons {
  Query$CancelReasons$orderCancelReasons({
    required this.id,
    required this.title,
    this.$__typename = 'OrderCancelReason',
  });

  factory Query$CancelReasons$orderCancelReasons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$CancelReasons$orderCancelReasons(
      id: (l$id as String),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CancelReasons$orderCancelReasons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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

extension UtilityExtension$Query$CancelReasons$orderCancelReasons
    on Query$CancelReasons$orderCancelReasons {
  CopyWith$Query$CancelReasons$orderCancelReasons<
          Query$CancelReasons$orderCancelReasons>
      get copyWith => CopyWith$Query$CancelReasons$orderCancelReasons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  factory CopyWith$Query$CancelReasons$orderCancelReasons(
    Query$CancelReasons$orderCancelReasons instance,
    TRes Function(Query$CancelReasons$orderCancelReasons) then,
  ) = _CopyWithImpl$Query$CancelReasons$orderCancelReasons;

  factory CopyWith$Query$CancelReasons$orderCancelReasons.stub(TRes res) =
      _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons;

  TRes call({
    String? id,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CancelReasons$orderCancelReasons<TRes>
    implements CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  _CopyWithImpl$Query$CancelReasons$orderCancelReasons(
    this._instance,
    this._then,
  );

  final Query$CancelReasons$orderCancelReasons _instance;

  final TRes Function(Query$CancelReasons$orderCancelReasons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CancelReasons$orderCancelReasons(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons<TRes>
    implements CopyWith$Query$CancelReasons$orderCancelReasons<TRes> {
  _CopyWithStubImpl$Query$CancelReasons$orderCancelReasons(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$SubmitReview {
  factory Variables$Mutation$SubmitReview(
          {required Input$RiderReviewInput input}) =>
      Variables$Mutation$SubmitReview._({
        r'input': input,
      });

  Variables$Mutation$SubmitReview._(this._$data);

  factory Variables$Mutation$SubmitReview.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$RiderReviewInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$SubmitReview._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$RiderReviewInput get input =>
      (_$data['input'] as Input$RiderReviewInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitReview<Variables$Mutation$SubmitReview>
      get copyWith => CopyWith$Variables$Mutation$SubmitReview(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitReview ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$input = input;
    final lOther$input = other.input;
    if (l$input != lOther$input) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$input = input;
    return Object.hashAll([l$input]);
  }
}

abstract class CopyWith$Variables$Mutation$SubmitReview<TRes> {
  factory CopyWith$Variables$Mutation$SubmitReview(
    Variables$Mutation$SubmitReview instance,
    TRes Function(Variables$Mutation$SubmitReview) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitReview;

  factory CopyWith$Variables$Mutation$SubmitReview.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitReview;

  TRes call({Input$RiderReviewInput? input});
}

class _CopyWithImpl$Variables$Mutation$SubmitReview<TRes>
    implements CopyWith$Variables$Mutation$SubmitReview<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitReview(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitReview _instance;

  final TRes Function(Variables$Mutation$SubmitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SubmitReview._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$RiderReviewInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitReview<TRes>
    implements CopyWith$Variables$Mutation$SubmitReview<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitReview(this._res);

  TRes _res;

  call({Input$RiderReviewInput? input}) => _res;
}

class Mutation$SubmitReview {
  Mutation$SubmitReview({
    required this.submitReview,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitReview.fromJson(Map<String, dynamic> json) {
    final l$submitReview = json['submitReview'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitReview(
      submitReview: Fragment$CurrentOrder.fromJson(
          (l$submitReview as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$CurrentOrder submitReview;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$submitReview = submitReview;
    _resultData['submitReview'] = l$submitReview.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$submitReview = submitReview;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$submitReview,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitReview || runtimeType != other.runtimeType) {
      return false;
    }
    final l$submitReview = submitReview;
    final lOther$submitReview = other.submitReview;
    if (l$submitReview != lOther$submitReview) {
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

extension UtilityExtension$Mutation$SubmitReview on Mutation$SubmitReview {
  CopyWith$Mutation$SubmitReview<Mutation$SubmitReview> get copyWith =>
      CopyWith$Mutation$SubmitReview(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitReview<TRes> {
  factory CopyWith$Mutation$SubmitReview(
    Mutation$SubmitReview instance,
    TRes Function(Mutation$SubmitReview) then,
  ) = _CopyWithImpl$Mutation$SubmitReview;

  factory CopyWith$Mutation$SubmitReview.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitReview;

  TRes call({
    Fragment$CurrentOrder? submitReview,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get submitReview;
}

class _CopyWithImpl$Mutation$SubmitReview<TRes>
    implements CopyWith$Mutation$SubmitReview<TRes> {
  _CopyWithImpl$Mutation$SubmitReview(
    this._instance,
    this._then,
  );

  final Mutation$SubmitReview _instance;

  final TRes Function(Mutation$SubmitReview) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? submitReview = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitReview(
        submitReview: submitReview == _undefined || submitReview == null
            ? _instance.submitReview
            : (submitReview as Fragment$CurrentOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$CurrentOrder<TRes> get submitReview {
    final local$submitReview = _instance.submitReview;
    return CopyWith$Fragment$CurrentOrder(
        local$submitReview, (e) => call(submitReview: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitReview<TRes>
    implements CopyWith$Mutation$SubmitReview<TRes> {
  _CopyWithStubImpl$Mutation$SubmitReview(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? submitReview,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get submitReview =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationSubmitReview = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitReview'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'RiderReviewInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'submitReview'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
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
Mutation$SubmitReview _parserFn$Mutation$SubmitReview(
        Map<String, dynamic> data) =>
    Mutation$SubmitReview.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitReview = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitReview?,
);

class Options$Mutation$SubmitReview
    extends graphql.MutationOptions<Mutation$SubmitReview> {
  Options$Mutation$SubmitReview({
    String? operationName,
    required Variables$Mutation$SubmitReview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitReview? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitReview? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitReview>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SubmitReview(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitReview,
          parserFn: _parserFn$Mutation$SubmitReview,
        );

  final OnMutationCompleted$Mutation$SubmitReview? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitReview
    extends graphql.WatchQueryOptions<Mutation$SubmitReview> {
  WatchOptions$Mutation$SubmitReview({
    String? operationName,
    required Variables$Mutation$SubmitReview variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitReview? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSubmitReview,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitReview,
        );
}

extension ClientExtension$Mutation$SubmitReview on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitReview>> mutate$SubmitReview(
          Options$Mutation$SubmitReview options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitReview> watchMutation$SubmitReview(
          WatchOptions$Mutation$SubmitReview options) =>
      this.watchMutation(options);
}

class Variables$Mutation$SendSOS {
  factory Variables$Mutation$SendSOS({required String id}) =>
      Variables$Mutation$SendSOS._({
        r'id': id,
      });

  Variables$Mutation$SendSOS._(this._$data);

  factory Variables$Mutation$SendSOS.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$SendSOS._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$SendSOS<Variables$Mutation$SendSOS>
      get copyWith => CopyWith$Variables$Mutation$SendSOS(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SendSOS ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$SendSOS<TRes> {
  factory CopyWith$Variables$Mutation$SendSOS(
    Variables$Mutation$SendSOS instance,
    TRes Function(Variables$Mutation$SendSOS) then,
  ) = _CopyWithImpl$Variables$Mutation$SendSOS;

  factory CopyWith$Variables$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SendSOS;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Variables$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SendSOS _instance;

  final TRes Function(Variables$Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Mutation$SendSOS._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SendSOS<TRes>
    implements CopyWith$Variables$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SendSOS(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$SendSOS {
  Mutation$SendSOS({
    required this.sosSignal,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SendSOS.fromJson(Map<String, dynamic> json) {
    final l$sosSignal = json['sosSignal'];
    final l$$__typename = json['__typename'];
    return Mutation$SendSOS(
      sosSignal: Mutation$SendSOS$sosSignal.fromJson(
          (l$sosSignal as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SendSOS$sosSignal sosSignal;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sosSignal = sosSignal;
    _resultData['sosSignal'] = l$sosSignal.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sosSignal = sosSignal;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sosSignal,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendSOS || runtimeType != other.runtimeType) {
      return false;
    }
    final l$sosSignal = sosSignal;
    final lOther$sosSignal = other.sosSignal;
    if (l$sosSignal != lOther$sosSignal) {
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

extension UtilityExtension$Mutation$SendSOS on Mutation$SendSOS {
  CopyWith$Mutation$SendSOS<Mutation$SendSOS> get copyWith =>
      CopyWith$Mutation$SendSOS(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SendSOS<TRes> {
  factory CopyWith$Mutation$SendSOS(
    Mutation$SendSOS instance,
    TRes Function(Mutation$SendSOS) then,
  ) = _CopyWithImpl$Mutation$SendSOS;

  factory CopyWith$Mutation$SendSOS.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS;

  TRes call({
    Mutation$SendSOS$sosSignal? sosSignal,
    String? $__typename,
  });
  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal;
}

class _CopyWithImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithImpl$Mutation$SendSOS(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS _instance;

  final TRes Function(Mutation$SendSOS) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sosSignal = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendSOS(
        sosSignal: sosSignal == _undefined || sosSignal == null
            ? _instance.sosSignal
            : (sosSignal as Mutation$SendSOS$sosSignal),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal {
    final local$sosSignal = _instance.sosSignal;
    return CopyWith$Mutation$SendSOS$sosSignal(
        local$sosSignal, (e) => call(sosSignal: e));
  }
}

class _CopyWithStubImpl$Mutation$SendSOS<TRes>
    implements CopyWith$Mutation$SendSOS<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS(this._res);

  TRes _res;

  call({
    Mutation$SendSOS$sosSignal? sosSignal,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SendSOS$sosSignal<TRes> get sosSignal =>
      CopyWith$Mutation$SendSOS$sosSignal.stub(_res);
}

const documentNodeMutationSendSOS = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SendSOS'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'sosSignal'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
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
]);
Mutation$SendSOS _parserFn$Mutation$SendSOS(Map<String, dynamic> data) =>
    Mutation$SendSOS.fromJson(data);
typedef OnMutationCompleted$Mutation$SendSOS = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SendSOS?,
);

class Options$Mutation$SendSOS
    extends graphql.MutationOptions<Mutation$SendSOS> {
  Options$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SendSOS? onCompleted,
    graphql.OnMutationUpdate<Mutation$SendSOS>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          onCompleted: onCompleted == null
              ? null
              : (data) => onCompleted(
                    data,
                    data == null ? null : _parserFn$Mutation$SendSOS(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSendSOS,
          parserFn: _parserFn$Mutation$SendSOS,
        );

  final OnMutationCompleted$Mutation$SendSOS? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SendSOS
    extends graphql.WatchQueryOptions<Mutation$SendSOS> {
  WatchOptions$Mutation$SendSOS({
    String? operationName,
    required Variables$Mutation$SendSOS variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SendSOS? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeMutationSendSOS,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SendSOS,
        );
}

extension ClientExtension$Mutation$SendSOS on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SendSOS>> mutate$SendSOS(
          Options$Mutation$SendSOS options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SendSOS> watchMutation$SendSOS(
          WatchOptions$Mutation$SendSOS options) =>
      this.watchMutation(options);
}

class Mutation$SendSOS$sosSignal {
  Mutation$SendSOS$sosSignal({
    required this.id,
    this.$__typename = 'SOS',
  });

  factory Mutation$SendSOS$sosSignal.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SendSOS$sosSignal(
      id: (l$id as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SendSOS$sosSignal ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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

extension UtilityExtension$Mutation$SendSOS$sosSignal
    on Mutation$SendSOS$sosSignal {
  CopyWith$Mutation$SendSOS$sosSignal<Mutation$SendSOS$sosSignal>
      get copyWith => CopyWith$Mutation$SendSOS$sosSignal(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  factory CopyWith$Mutation$SendSOS$sosSignal(
    Mutation$SendSOS$sosSignal instance,
    TRes Function(Mutation$SendSOS$sosSignal) then,
  ) = _CopyWithImpl$Mutation$SendSOS$sosSignal;

  factory CopyWith$Mutation$SendSOS$sosSignal.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SendSOS$sosSignal;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithImpl$Mutation$SendSOS$sosSignal(
    this._instance,
    this._then,
  );

  final Mutation$SendSOS$sosSignal _instance;

  final TRes Function(Mutation$SendSOS$sosSignal) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SendSOS$sosSignal(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SendSOS$sosSignal<TRes>
    implements CopyWith$Mutation$SendSOS$sosSignal<TRes> {
  _CopyWithStubImpl$Mutation$SendSOS$sosSignal(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
