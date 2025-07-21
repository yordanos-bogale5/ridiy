import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/driver_transactions.fragment.graphql.dart';
import '../fragments/intent_result.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
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
import 'package:flutter_common/core/graphql/scalars/datetime.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Wallet {
  Query$Wallet({
    required this.driver,
    required this.savedPaymentMethods,
    required this.paymentGateways,
    required this.driverTransacions,
    this.$__typename = 'Query',
  });

  factory Query$Wallet.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$driverTransacions = json['driverTransacions'];
    final l$$__typename = json['__typename'];
    return Query$Wallet(
      driver: Fragment$Profile.fromJson((l$driver as Map<String, dynamic>)),
      savedPaymentMethods: (l$savedPaymentMethods as List<dynamic>)
          .map((e) =>
              Fragment$SavedPaymentMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) =>
              Fragment$PaymentGateway.fromJson((e as Map<String, dynamic>)))
          .toList(),
      driverTransacions: Query$Wallet$driverTransacions.fromJson(
          (l$driverTransacions as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$Profile driver;

  final List<Fragment$SavedPaymentMethod> savedPaymentMethods;

  final List<Fragment$PaymentGateway> paymentGateways;

  final Query$Wallet$driverTransacions driverTransacions;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver.toJson();
    final l$savedPaymentMethods = savedPaymentMethods;
    _resultData['savedPaymentMethods'] =
        l$savedPaymentMethods.map((e) => e.toJson()).toList();
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$driverTransacions = driverTransacions;
    _resultData['driverTransacions'] = l$driverTransacions.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$paymentGateways = paymentGateways;
    final l$driverTransacions = driverTransacions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$driver,
      Object.hashAll(l$savedPaymentMethods.map((v) => v)),
      Object.hashAll(l$paymentGateways.map((v) => v)),
      l$driverTransacions,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$driver = driver;
    final lOther$driver = other.driver;
    if (l$driver != lOther$driver) {
      return false;
    }
    final l$savedPaymentMethods = savedPaymentMethods;
    final lOther$savedPaymentMethods = other.savedPaymentMethods;
    if (l$savedPaymentMethods.length != lOther$savedPaymentMethods.length) {
      return false;
    }
    for (int i = 0; i < l$savedPaymentMethods.length; i++) {
      final l$savedPaymentMethods$entry = l$savedPaymentMethods[i];
      final lOther$savedPaymentMethods$entry = lOther$savedPaymentMethods[i];
      if (l$savedPaymentMethods$entry != lOther$savedPaymentMethods$entry) {
        return false;
      }
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
        return false;
      }
    }
    final l$driverTransacions = driverTransacions;
    final lOther$driverTransacions = other.driverTransacions;
    if (l$driverTransacions != lOther$driverTransacions) {
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

extension UtilityExtension$Query$Wallet on Query$Wallet {
  CopyWith$Query$Wallet<Query$Wallet> get copyWith => CopyWith$Query$Wallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet<TRes> {
  factory CopyWith$Query$Wallet(
    Query$Wallet instance,
    TRes Function(Query$Wallet) then,
  ) = _CopyWithImpl$Query$Wallet;

  factory CopyWith$Query$Wallet.stub(TRes res) = _CopyWithStubImpl$Query$Wallet;

  TRes call({
    Fragment$Profile? driver,
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    Query$Wallet$driverTransacions? driverTransacions,
    String? $__typename,
  });
  CopyWith$Fragment$Profile<TRes> get driver;
  TRes savedPaymentMethods(
      Iterable<Fragment$SavedPaymentMethod> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethod<
                      Fragment$SavedPaymentMethod>>)
          _fn);
  TRes paymentGateways(
      Iterable<Fragment$PaymentGateway> Function(
              Iterable<
                  CopyWith$Fragment$PaymentGateway<Fragment$PaymentGateway>>)
          _fn);
  CopyWith$Query$Wallet$driverTransacions<TRes> get driverTransacions;
}

class _CopyWithImpl$Query$Wallet<TRes> implements CopyWith$Query$Wallet<TRes> {
  _CopyWithImpl$Query$Wallet(
    this._instance,
    this._then,
  );

  final Query$Wallet _instance;

  final TRes Function(Query$Wallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? driverTransacions = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet(
        driver: driver == _undefined || driver == null
            ? _instance.driver
            : (driver as Fragment$Profile),
        savedPaymentMethods:
            savedPaymentMethods == _undefined || savedPaymentMethods == null
                ? _instance.savedPaymentMethods
                : (savedPaymentMethods as List<Fragment$SavedPaymentMethod>),
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Fragment$PaymentGateway>),
        driverTransacions:
            driverTransacions == _undefined || driverTransacions == null
                ? _instance.driverTransacions
                : (driverTransacions as Query$Wallet$driverTransacions),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Profile<TRes> get driver {
    final local$driver = _instance.driver;
    return CopyWith$Fragment$Profile(local$driver, (e) => call(driver: e));
  }

  TRes savedPaymentMethods(
          Iterable<Fragment$SavedPaymentMethod> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethod<
                          Fragment$SavedPaymentMethod>>)
              _fn) =>
      call(
          savedPaymentMethods: _fn(_instance.savedPaymentMethods
              .map((e) => CopyWith$Fragment$SavedPaymentMethod(
                    e,
                    (i) => i,
                  ))).toList());

  TRes paymentGateways(
          Iterable<Fragment$PaymentGateway> Function(
                  Iterable<
                      CopyWith$Fragment$PaymentGateway<
                          Fragment$PaymentGateway>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Fragment$PaymentGateway(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$Wallet$driverTransacions<TRes> get driverTransacions {
    final local$driverTransacions = _instance.driverTransacions;
    return CopyWith$Query$Wallet$driverTransacions(
        local$driverTransacions, (e) => call(driverTransacions: e));
  }
}

class _CopyWithStubImpl$Query$Wallet<TRes>
    implements CopyWith$Query$Wallet<TRes> {
  _CopyWithStubImpl$Query$Wallet(this._res);

  TRes _res;

  call({
    Fragment$Profile? driver,
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    Query$Wallet$driverTransacions? driverTransacions,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Profile<TRes> get driver =>
      CopyWith$Fragment$Profile.stub(_res);

  savedPaymentMethods(_fn) => _res;

  paymentGateways(_fn) => _res;

  CopyWith$Query$Wallet$driverTransacions<TRes> get driverTransacions =>
      CopyWith$Query$Wallet$driverTransacions.stub(_res);
}

const documentNodeQueryWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Wallet'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'driver'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: StringValueNode(
              value: '1',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Profile'),
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
        name: NameNode(value: 'savedPaymentMethods'),
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
        name: NameNode(value: 'paymentGateways'),
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
        name: NameNode(value: 'driverTransacions'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
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
                    name: NameNode(value: 'createdAt'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'action'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'deductType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'rechargeType'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'amount'),
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
                    name: NameNode(value: 'refrenceNumber'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'driverId'),
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
  fragmentDefinitionProfile,
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
  fragmentDefinitionDriverTransacion,
]);
Query$Wallet _parserFn$Query$Wallet(Map<String, dynamic> data) =>
    Query$Wallet.fromJson(data);
typedef OnQueryComplete$Query$Wallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Wallet?,
);

class Options$Query$Wallet extends graphql.QueryOptions<Query$Wallet> {
  Options$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Wallet? onComplete,
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
                    data == null ? null : _parserFn$Query$Wallet(data),
                  ),
          onError: onError,
          document: documentNodeQueryWallet,
          parserFn: _parserFn$Query$Wallet,
        );

  final OnQueryComplete$Query$Wallet? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Wallet
    extends graphql.WatchQueryOptions<Query$Wallet> {
  WatchOptions$Query$Wallet({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Wallet? typedOptimisticResult,
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
          document: documentNodeQueryWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Wallet,
        );
}

class FetchMoreOptions$Query$Wallet extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Wallet({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryWallet,
        );
}

extension ClientExtension$Query$Wallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Wallet>> query$Wallet(
          [Options$Query$Wallet? options]) async =>
      await this.query(options ?? Options$Query$Wallet());
  graphql.ObservableQuery<Query$Wallet> watchQuery$Wallet(
          [WatchOptions$Query$Wallet? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Wallet());
  void writeQuery$Wallet({
    required Query$Wallet data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryWallet)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Wallet? readQuery$Wallet({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryWallet)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Wallet.fromJson(result);
  }
}

class Query$Wallet$driverTransacions {
  Query$Wallet$driverTransacions({
    required this.edges,
    this.$__typename = 'DriverTransacionConnection',
  });

  factory Query$Wallet$driverTransacions.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$driverTransacions(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$Wallet$driverTransacions$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Wallet$driverTransacions$edges> edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$edges = edges;
    _resultData['edges'] = l$edges.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$driverTransacions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges.length != lOther$edges.length) {
      return false;
    }
    for (int i = 0; i < l$edges.length; i++) {
      final l$edges$entry = l$edges[i];
      final lOther$edges$entry = lOther$edges[i];
      if (l$edges$entry != lOther$edges$entry) {
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

extension UtilityExtension$Query$Wallet$driverTransacions
    on Query$Wallet$driverTransacions {
  CopyWith$Query$Wallet$driverTransacions<Query$Wallet$driverTransacions>
      get copyWith => CopyWith$Query$Wallet$driverTransacions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverTransacions<TRes> {
  factory CopyWith$Query$Wallet$driverTransacions(
    Query$Wallet$driverTransacions instance,
    TRes Function(Query$Wallet$driverTransacions) then,
  ) = _CopyWithImpl$Query$Wallet$driverTransacions;

  factory CopyWith$Query$Wallet$driverTransacions.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverTransacions;

  TRes call({
    List<Query$Wallet$driverTransacions$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$Wallet$driverTransacions$edges> Function(
              Iterable<
                  CopyWith$Query$Wallet$driverTransacions$edges<
                      Query$Wallet$driverTransacions$edges>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$driverTransacions<TRes>
    implements CopyWith$Query$Wallet$driverTransacions<TRes> {
  _CopyWithImpl$Query$Wallet$driverTransacions(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverTransacions _instance;

  final TRes Function(Query$Wallet$driverTransacions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$driverTransacions(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$Wallet$driverTransacions$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$Wallet$driverTransacions$edges> Function(
                  Iterable<
                      CopyWith$Query$Wallet$driverTransacions$edges<
                          Query$Wallet$driverTransacions$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$Wallet$driverTransacions$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$driverTransacions<TRes>
    implements CopyWith$Query$Wallet$driverTransacions<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverTransacions(this._res);

  TRes _res;

  call({
    List<Query$Wallet$driverTransacions$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$Wallet$driverTransacions$edges {
  Query$Wallet$driverTransacions$edges({
    required this.node,
    this.$__typename = 'DriverTransacionEdge',
  });

  factory Query$Wallet$driverTransacions$edges.fromJson(
      Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$driverTransacions$edges(
      node: Query$Wallet$driverTransacions$edges$node.fromJson(
          (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Wallet$driverTransacions$edges$node node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$driverTransacions$edges ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
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

extension UtilityExtension$Query$Wallet$driverTransacions$edges
    on Query$Wallet$driverTransacions$edges {
  CopyWith$Query$Wallet$driverTransacions$edges<
          Query$Wallet$driverTransacions$edges>
      get copyWith => CopyWith$Query$Wallet$driverTransacions$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverTransacions$edges<TRes> {
  factory CopyWith$Query$Wallet$driverTransacions$edges(
    Query$Wallet$driverTransacions$edges instance,
    TRes Function(Query$Wallet$driverTransacions$edges) then,
  ) = _CopyWithImpl$Query$Wallet$driverTransacions$edges;

  factory CopyWith$Query$Wallet$driverTransacions$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverTransacions$edges;

  TRes call({
    Query$Wallet$driverTransacions$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$Wallet$driverTransacions$edges<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges<TRes> {
  _CopyWithImpl$Query$Wallet$driverTransacions$edges(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverTransacions$edges _instance;

  final TRes Function(Query$Wallet$driverTransacions$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$driverTransacions$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Query$Wallet$driverTransacions$edges$node),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Query$Wallet$driverTransacions$edges$node(
        local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$Wallet$driverTransacions$edges<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverTransacions$edges(this._res);

  TRes _res;

  call({
    Query$Wallet$driverTransacions$edges$node? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> get node =>
      CopyWith$Query$Wallet$driverTransacions$edges$node.stub(_res);
}

class Query$Wallet$driverTransacions$edges$node {
  Query$Wallet$driverTransacions$edges$node({
    required this.id,
    required this.createdAt,
    required this.action,
    this.deductType,
    this.rechargeType,
    required this.amount,
    required this.currency,
    this.refrenceNumber,
    required this.driverId,
    this.$__typename = 'DriverTransacion',
  });

  factory Query$Wallet$driverTransacions$edges$node.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$createdAt = json['createdAt'];
    final l$action = json['action'];
    final l$deductType = json['deductType'];
    final l$rechargeType = json['rechargeType'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$refrenceNumber = json['refrenceNumber'];
    final l$driverId = json['driverId'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$driverTransacions$edges$node(
      id: (l$id as String),
      createdAt: fromGraphQLDateTimeToDartDateTime(l$createdAt),
      action: fromJson$Enum$TransactionAction((l$action as String)),
      deductType: l$deductType == null
          ? null
          : fromJson$Enum$DriverDeductTransactionType((l$deductType as String)),
      rechargeType: l$rechargeType == null
          ? null
          : fromJson$Enum$DriverRechargeTransactionType(
              (l$rechargeType as String)),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      refrenceNumber: (l$refrenceNumber as String?),
      driverId: (l$driverId as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final DateTime createdAt;

  final Enum$TransactionAction action;

  final Enum$DriverDeductTransactionType? deductType;

  final Enum$DriverRechargeTransactionType? rechargeType;

  final double amount;

  final String currency;

  final String? refrenceNumber;

  final String driverId;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = fromDartDateTimeToGraphQLDateTime(l$createdAt);
    final l$action = action;
    _resultData['action'] = toJson$Enum$TransactionAction(l$action);
    final l$deductType = deductType;
    _resultData['deductType'] = l$deductType == null
        ? null
        : toJson$Enum$DriverDeductTransactionType(l$deductType);
    final l$rechargeType = rechargeType;
    _resultData['rechargeType'] = l$rechargeType == null
        ? null
        : toJson$Enum$DriverRechargeTransactionType(l$rechargeType);
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$refrenceNumber = refrenceNumber;
    _resultData['refrenceNumber'] = l$refrenceNumber;
    final l$driverId = driverId;
    _resultData['driverId'] = l$driverId;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$createdAt = createdAt;
    final l$action = action;
    final l$deductType = deductType;
    final l$rechargeType = rechargeType;
    final l$amount = amount;
    final l$currency = currency;
    final l$refrenceNumber = refrenceNumber;
    final l$driverId = driverId;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$createdAt,
      l$action,
      l$deductType,
      l$rechargeType,
      l$amount,
      l$currency,
      l$refrenceNumber,
      l$driverId,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$driverTransacions$edges$node ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
      return false;
    }
    final l$action = action;
    final lOther$action = other.action;
    if (l$action != lOther$action) {
      return false;
    }
    final l$deductType = deductType;
    final lOther$deductType = other.deductType;
    if (l$deductType != lOther$deductType) {
      return false;
    }
    final l$rechargeType = rechargeType;
    final lOther$rechargeType = other.rechargeType;
    if (l$rechargeType != lOther$rechargeType) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$refrenceNumber = refrenceNumber;
    final lOther$refrenceNumber = other.refrenceNumber;
    if (l$refrenceNumber != lOther$refrenceNumber) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (l$driverId != lOther$driverId) {
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

extension UtilityExtension$Query$Wallet$driverTransacions$edges$node
    on Query$Wallet$driverTransacions$edges$node {
  CopyWith$Query$Wallet$driverTransacions$edges$node<
          Query$Wallet$driverTransacions$edges$node>
      get copyWith => CopyWith$Query$Wallet$driverTransacions$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> {
  factory CopyWith$Query$Wallet$driverTransacions$edges$node(
    Query$Wallet$driverTransacions$edges$node instance,
    TRes Function(Query$Wallet$driverTransacions$edges$node) then,
  ) = _CopyWithImpl$Query$Wallet$driverTransacions$edges$node;

  factory CopyWith$Query$Wallet$driverTransacions$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$driverTransacions$edges$node;

  TRes call({
    String? id,
    DateTime? createdAt,
    Enum$TransactionAction? action,
    Enum$DriverDeductTransactionType? deductType,
    Enum$DriverRechargeTransactionType? rechargeType,
    double? amount,
    String? currency,
    String? refrenceNumber,
    String? driverId,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Wallet$driverTransacions$edges$node<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> {
  _CopyWithImpl$Query$Wallet$driverTransacions$edges$node(
    this._instance,
    this._then,
  );

  final Query$Wallet$driverTransacions$edges$node _instance;

  final TRes Function(Query$Wallet$driverTransacions$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? createdAt = _undefined,
    Object? action = _undefined,
    Object? deductType = _undefined,
    Object? rechargeType = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? refrenceNumber = _undefined,
    Object? driverId = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$driverTransacions$edges$node(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        action: action == _undefined || action == null
            ? _instance.action
            : (action as Enum$TransactionAction),
        deductType: deductType == _undefined
            ? _instance.deductType
            : (deductType as Enum$DriverDeductTransactionType?),
        rechargeType: rechargeType == _undefined
            ? _instance.rechargeType
            : (rechargeType as Enum$DriverRechargeTransactionType?),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        refrenceNumber: refrenceNumber == _undefined
            ? _instance.refrenceNumber
            : (refrenceNumber as String?),
        driverId: driverId == _undefined || driverId == null
            ? _instance.driverId
            : (driverId as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Wallet$driverTransacions$edges$node<TRes>
    implements CopyWith$Query$Wallet$driverTransacions$edges$node<TRes> {
  _CopyWithStubImpl$Query$Wallet$driverTransacions$edges$node(this._res);

  TRes _res;

  call({
    String? id,
    DateTime? createdAt,
    Enum$TransactionAction? action,
    Enum$DriverDeductTransactionType? deductType,
    Enum$DriverRechargeTransactionType? rechargeType,
    double? amount,
    String? currency,
    String? refrenceNumber,
    String? driverId,
    String? $__typename,
  }) =>
      _res;
}

class Query$SavedPaymentMethods {
  Query$SavedPaymentMethods({
    required this.savedPaymentMethods,
    required this.paymentGateways,
    this.$__typename = 'Query',
  });

  factory Query$SavedPaymentMethods.fromJson(Map<String, dynamic> json) {
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$$__typename = json['__typename'];
    return Query$SavedPaymentMethods(
      savedPaymentMethods: (l$savedPaymentMethods as List<dynamic>)
          .map((e) =>
              Fragment$SavedPaymentMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) =>
              Fragment$PaymentGateway.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SavedPaymentMethod> savedPaymentMethods;

  final List<Fragment$PaymentGateway> paymentGateways;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$savedPaymentMethods = savedPaymentMethods;
    _resultData['savedPaymentMethods'] =
        l$savedPaymentMethods.map((e) => e.toJson()).toList();
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$paymentGateways = paymentGateways;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$savedPaymentMethods.map((v) => v)),
      Object.hashAll(l$paymentGateways.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SavedPaymentMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$savedPaymentMethods = savedPaymentMethods;
    final lOther$savedPaymentMethods = other.savedPaymentMethods;
    if (l$savedPaymentMethods.length != lOther$savedPaymentMethods.length) {
      return false;
    }
    for (int i = 0; i < l$savedPaymentMethods.length; i++) {
      final l$savedPaymentMethods$entry = l$savedPaymentMethods[i];
      final lOther$savedPaymentMethods$entry = lOther$savedPaymentMethods[i];
      if (l$savedPaymentMethods$entry != lOther$savedPaymentMethods$entry) {
        return false;
      }
    }
    final l$paymentGateways = paymentGateways;
    final lOther$paymentGateways = other.paymentGateways;
    if (l$paymentGateways.length != lOther$paymentGateways.length) {
      return false;
    }
    for (int i = 0; i < l$paymentGateways.length; i++) {
      final l$paymentGateways$entry = l$paymentGateways[i];
      final lOther$paymentGateways$entry = lOther$paymentGateways[i];
      if (l$paymentGateways$entry != lOther$paymentGateways$entry) {
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

extension UtilityExtension$Query$SavedPaymentMethods
    on Query$SavedPaymentMethods {
  CopyWith$Query$SavedPaymentMethods<Query$SavedPaymentMethods> get copyWith =>
      CopyWith$Query$SavedPaymentMethods(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$SavedPaymentMethods<TRes> {
  factory CopyWith$Query$SavedPaymentMethods(
    Query$SavedPaymentMethods instance,
    TRes Function(Query$SavedPaymentMethods) then,
  ) = _CopyWithImpl$Query$SavedPaymentMethods;

  factory CopyWith$Query$SavedPaymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$SavedPaymentMethods;

  TRes call({
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    String? $__typename,
  });
  TRes savedPaymentMethods(
      Iterable<Fragment$SavedPaymentMethod> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethod<
                      Fragment$SavedPaymentMethod>>)
          _fn);
  TRes paymentGateways(
      Iterable<Fragment$PaymentGateway> Function(
              Iterable<
                  CopyWith$Fragment$PaymentGateway<Fragment$PaymentGateway>>)
          _fn);
}

class _CopyWithImpl$Query$SavedPaymentMethods<TRes>
    implements CopyWith$Query$SavedPaymentMethods<TRes> {
  _CopyWithImpl$Query$SavedPaymentMethods(
    this._instance,
    this._then,
  );

  final Query$SavedPaymentMethods _instance;

  final TRes Function(Query$SavedPaymentMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SavedPaymentMethods(
        savedPaymentMethods:
            savedPaymentMethods == _undefined || savedPaymentMethods == null
                ? _instance.savedPaymentMethods
                : (savedPaymentMethods as List<Fragment$SavedPaymentMethod>),
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Fragment$PaymentGateway>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes savedPaymentMethods(
          Iterable<Fragment$SavedPaymentMethod> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethod<
                          Fragment$SavedPaymentMethod>>)
              _fn) =>
      call(
          savedPaymentMethods: _fn(_instance.savedPaymentMethods
              .map((e) => CopyWith$Fragment$SavedPaymentMethod(
                    e,
                    (i) => i,
                  ))).toList());

  TRes paymentGateways(
          Iterable<Fragment$PaymentGateway> Function(
                  Iterable<
                      CopyWith$Fragment$PaymentGateway<
                          Fragment$PaymentGateway>>)
              _fn) =>
      call(
          paymentGateways: _fn(_instance.paymentGateways
              .map((e) => CopyWith$Fragment$PaymentGateway(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SavedPaymentMethods<TRes>
    implements CopyWith$Query$SavedPaymentMethods<TRes> {
  _CopyWithStubImpl$Query$SavedPaymentMethods(this._res);

  TRes _res;

  call({
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    String? $__typename,
  }) =>
      _res;

  savedPaymentMethods(_fn) => _res;

  paymentGateways(_fn) => _res;
}

const documentNodeQuerySavedPaymentMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SavedPaymentMethods'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'savedPaymentMethods'),
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
        name: NameNode(value: 'paymentGateways'),
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
]);
Query$SavedPaymentMethods _parserFn$Query$SavedPaymentMethods(
        Map<String, dynamic> data) =>
    Query$SavedPaymentMethods.fromJson(data);
typedef OnQueryComplete$Query$SavedPaymentMethods = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SavedPaymentMethods?,
);

class Options$Query$SavedPaymentMethods
    extends graphql.QueryOptions<Query$SavedPaymentMethods> {
  Options$Query$SavedPaymentMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SavedPaymentMethods? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SavedPaymentMethods? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$SavedPaymentMethods(data),
                  ),
          onError: onError,
          document: documentNodeQuerySavedPaymentMethods,
          parserFn: _parserFn$Query$SavedPaymentMethods,
        );

  final OnQueryComplete$Query$SavedPaymentMethods? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SavedPaymentMethods
    extends graphql.WatchQueryOptions<Query$SavedPaymentMethods> {
  WatchOptions$Query$SavedPaymentMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SavedPaymentMethods? typedOptimisticResult,
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
          document: documentNodeQuerySavedPaymentMethods,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SavedPaymentMethods,
        );
}

class FetchMoreOptions$Query$SavedPaymentMethods
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SavedPaymentMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySavedPaymentMethods,
        );
}

extension ClientExtension$Query$SavedPaymentMethods on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SavedPaymentMethods>>
      query$SavedPaymentMethods(
              [Options$Query$SavedPaymentMethods? options]) async =>
          await this.query(options ?? Options$Query$SavedPaymentMethods());
  graphql.ObservableQuery<Query$SavedPaymentMethods>
      watchQuery$SavedPaymentMethods(
              [WatchOptions$Query$SavedPaymentMethods? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$SavedPaymentMethods());
  void writeQuery$SavedPaymentMethods({
    required Query$SavedPaymentMethods data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerySavedPaymentMethods)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SavedPaymentMethods? readQuery$SavedPaymentMethods(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerySavedPaymentMethods)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$SavedPaymentMethods.fromJson(result);
  }
}

class Variables$Mutation$SetupPaymentMethodLink {
  factory Variables$Mutation$SetupPaymentMethodLink(
          {required String gatewayId}) =>
      Variables$Mutation$SetupPaymentMethodLink._({
        r'gatewayId': gatewayId,
      });

  Variables$Mutation$SetupPaymentMethodLink._(this._$data);

  factory Variables$Mutation$SetupPaymentMethodLink.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    return Variables$Mutation$SetupPaymentMethodLink._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    return result$data;
  }

  CopyWith$Variables$Mutation$SetupPaymentMethodLink<
          Variables$Mutation$SetupPaymentMethodLink>
      get copyWith => CopyWith$Variables$Mutation$SetupPaymentMethodLink(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SetupPaymentMethodLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gatewayId = gatewayId;
    final lOther$gatewayId = other.gatewayId;
    if (l$gatewayId != lOther$gatewayId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gatewayId = gatewayId;
    return Object.hashAll([l$gatewayId]);
  }
}

abstract class CopyWith$Variables$Mutation$SetupPaymentMethodLink<TRes> {
  factory CopyWith$Variables$Mutation$SetupPaymentMethodLink(
    Variables$Mutation$SetupPaymentMethodLink instance,
    TRes Function(Variables$Mutation$SetupPaymentMethodLink) then,
  ) = _CopyWithImpl$Variables$Mutation$SetupPaymentMethodLink;

  factory CopyWith$Variables$Mutation$SetupPaymentMethodLink.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SetupPaymentMethodLink;

  TRes call({String? gatewayId});
}

class _CopyWithImpl$Variables$Mutation$SetupPaymentMethodLink<TRes>
    implements CopyWith$Variables$Mutation$SetupPaymentMethodLink<TRes> {
  _CopyWithImpl$Variables$Mutation$SetupPaymentMethodLink(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SetupPaymentMethodLink _instance;

  final TRes Function(Variables$Mutation$SetupPaymentMethodLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gatewayId = _undefined}) =>
      _then(Variables$Mutation$SetupPaymentMethodLink._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SetupPaymentMethodLink<TRes>
    implements CopyWith$Variables$Mutation$SetupPaymentMethodLink<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SetupPaymentMethodLink(this._res);

  TRes _res;

  call({String? gatewayId}) => _res;
}

class Mutation$SetupPaymentMethodLink {
  Mutation$SetupPaymentMethodLink({
    required this.setupPaymentMethod,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SetupPaymentMethodLink.fromJson(Map<String, dynamic> json) {
    final l$setupPaymentMethod = json['setupPaymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$SetupPaymentMethodLink(
      setupPaymentMethod:
          Mutation$SetupPaymentMethodLink$setupPaymentMethod.fromJson(
              (l$setupPaymentMethod as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SetupPaymentMethodLink$setupPaymentMethod setupPaymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$setupPaymentMethod = setupPaymentMethod;
    _resultData['setupPaymentMethod'] = l$setupPaymentMethod.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$setupPaymentMethod = setupPaymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$setupPaymentMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetupPaymentMethodLink ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$setupPaymentMethod = setupPaymentMethod;
    final lOther$setupPaymentMethod = other.setupPaymentMethod;
    if (l$setupPaymentMethod != lOther$setupPaymentMethod) {
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

extension UtilityExtension$Mutation$SetupPaymentMethodLink
    on Mutation$SetupPaymentMethodLink {
  CopyWith$Mutation$SetupPaymentMethodLink<Mutation$SetupPaymentMethodLink>
      get copyWith => CopyWith$Mutation$SetupPaymentMethodLink(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetupPaymentMethodLink<TRes> {
  factory CopyWith$Mutation$SetupPaymentMethodLink(
    Mutation$SetupPaymentMethodLink instance,
    TRes Function(Mutation$SetupPaymentMethodLink) then,
  ) = _CopyWithImpl$Mutation$SetupPaymentMethodLink;

  factory CopyWith$Mutation$SetupPaymentMethodLink.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SetupPaymentMethodLink;

  TRes call({
    Mutation$SetupPaymentMethodLink$setupPaymentMethod? setupPaymentMethod,
    String? $__typename,
  });
  CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod;
}

class _CopyWithImpl$Mutation$SetupPaymentMethodLink<TRes>
    implements CopyWith$Mutation$SetupPaymentMethodLink<TRes> {
  _CopyWithImpl$Mutation$SetupPaymentMethodLink(
    this._instance,
    this._then,
  );

  final Mutation$SetupPaymentMethodLink _instance;

  final TRes Function(Mutation$SetupPaymentMethodLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setupPaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetupPaymentMethodLink(
        setupPaymentMethod:
            setupPaymentMethod == _undefined || setupPaymentMethod == null
                ? _instance.setupPaymentMethod
                : (setupPaymentMethod
                    as Mutation$SetupPaymentMethodLink$setupPaymentMethod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod {
    final local$setupPaymentMethod = _instance.setupPaymentMethod;
    return CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod(
        local$setupPaymentMethod, (e) => call(setupPaymentMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$SetupPaymentMethodLink<TRes>
    implements CopyWith$Mutation$SetupPaymentMethodLink<TRes> {
  _CopyWithStubImpl$Mutation$SetupPaymentMethodLink(this._res);

  TRes _res;

  call({
    Mutation$SetupPaymentMethodLink$setupPaymentMethod? setupPaymentMethod,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod =>
          CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod.stub(
              _res);
}

const documentNodeMutationSetupPaymentMethodLink = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SetupPaymentMethodLink'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'gatewayId')),
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
        name: NameNode(value: 'setupPaymentMethod'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'gatewayId'),
            value: VariableNode(name: NameNode(value: 'gatewayId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'url'),
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
Mutation$SetupPaymentMethodLink _parserFn$Mutation$SetupPaymentMethodLink(
        Map<String, dynamic> data) =>
    Mutation$SetupPaymentMethodLink.fromJson(data);
typedef OnMutationCompleted$Mutation$SetupPaymentMethodLink = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$SetupPaymentMethodLink?,
);

class Options$Mutation$SetupPaymentMethodLink
    extends graphql.MutationOptions<Mutation$SetupPaymentMethodLink> {
  Options$Mutation$SetupPaymentMethodLink({
    String? operationName,
    required Variables$Mutation$SetupPaymentMethodLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetupPaymentMethodLink? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SetupPaymentMethodLink? onCompleted,
    graphql.OnMutationUpdate<Mutation$SetupPaymentMethodLink>? update,
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
                        : _parserFn$Mutation$SetupPaymentMethodLink(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSetupPaymentMethodLink,
          parserFn: _parserFn$Mutation$SetupPaymentMethodLink,
        );

  final OnMutationCompleted$Mutation$SetupPaymentMethodLink?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SetupPaymentMethodLink
    extends graphql.WatchQueryOptions<Mutation$SetupPaymentMethodLink> {
  WatchOptions$Mutation$SetupPaymentMethodLink({
    String? operationName,
    required Variables$Mutation$SetupPaymentMethodLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SetupPaymentMethodLink? typedOptimisticResult,
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
          document: documentNodeMutationSetupPaymentMethodLink,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SetupPaymentMethodLink,
        );
}

extension ClientExtension$Mutation$SetupPaymentMethodLink
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SetupPaymentMethodLink>>
      mutate$SetupPaymentMethodLink(
              Options$Mutation$SetupPaymentMethodLink options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$SetupPaymentMethodLink>
      watchMutation$SetupPaymentMethodLink(
              WatchOptions$Mutation$SetupPaymentMethodLink options) =>
          this.watchMutation(options);
}

class Mutation$SetupPaymentMethodLink$setupPaymentMethod {
  Mutation$SetupPaymentMethodLink$setupPaymentMethod({
    this.url,
    this.$__typename = 'SetupPaymentMethod',
  });

  factory Mutation$SetupPaymentMethodLink$setupPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Mutation$SetupPaymentMethodLink$setupPaymentMethod(
      url: (l$url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SetupPaymentMethodLink$setupPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Mutation$SetupPaymentMethodLink$setupPaymentMethod
    on Mutation$SetupPaymentMethodLink$setupPaymentMethod {
  CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<
          Mutation$SetupPaymentMethodLink$setupPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod(
    Mutation$SetupPaymentMethodLink$setupPaymentMethod instance,
    TRes Function(Mutation$SetupPaymentMethodLink$setupPaymentMethod) then,
  ) = _CopyWithImpl$Mutation$SetupPaymentMethodLink$setupPaymentMethod;

  factory CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$SetupPaymentMethodLink$setupPaymentMethod;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes>
    implements
        CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes> {
  _CopyWithImpl$Mutation$SetupPaymentMethodLink$setupPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$SetupPaymentMethodLink$setupPaymentMethod _instance;

  final TRes Function(Mutation$SetupPaymentMethodLink$setupPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SetupPaymentMethodLink$setupPaymentMethod(
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes>
    implements
        CopyWith$Mutation$SetupPaymentMethodLink$setupPaymentMethod<TRes> {
  _CopyWithStubImpl$Mutation$SetupPaymentMethodLink$setupPaymentMethod(
      this._res);

  TRes _res;

  call({
    String? url,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$RedeemGiftCard {
  factory Variables$Mutation$RedeemGiftCard({required String code}) =>
      Variables$Mutation$RedeemGiftCard._({
        r'code': code,
      });

  Variables$Mutation$RedeemGiftCard._(this._$data);

  factory Variables$Mutation$RedeemGiftCard.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    return Variables$Mutation$RedeemGiftCard._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    return result$data;
  }

  CopyWith$Variables$Mutation$RedeemGiftCard<Variables$Mutation$RedeemGiftCard>
      get copyWith => CopyWith$Variables$Mutation$RedeemGiftCard(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$RedeemGiftCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    return Object.hashAll([l$code]);
  }
}

abstract class CopyWith$Variables$Mutation$RedeemGiftCard<TRes> {
  factory CopyWith$Variables$Mutation$RedeemGiftCard(
    Variables$Mutation$RedeemGiftCard instance,
    TRes Function(Variables$Mutation$RedeemGiftCard) then,
  ) = _CopyWithImpl$Variables$Mutation$RedeemGiftCard;

  factory CopyWith$Variables$Mutation$RedeemGiftCard.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$RedeemGiftCard;

  TRes call({String? code});
}

class _CopyWithImpl$Variables$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Variables$Mutation$RedeemGiftCard<TRes> {
  _CopyWithImpl$Variables$Mutation$RedeemGiftCard(
    this._instance,
    this._then,
  );

  final Variables$Mutation$RedeemGiftCard _instance;

  final TRes Function(Variables$Mutation$RedeemGiftCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? code = _undefined}) =>
      _then(Variables$Mutation$RedeemGiftCard._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Variables$Mutation$RedeemGiftCard<TRes> {
  _CopyWithStubImpl$Variables$Mutation$RedeemGiftCard(this._res);

  TRes _res;

  call({String? code}) => _res;
}

class Mutation$RedeemGiftCard {
  Mutation$RedeemGiftCard({
    required this.redeemGiftCard,
    this.$__typename = 'Mutation',
  });

  factory Mutation$RedeemGiftCard.fromJson(Map<String, dynamic> json) {
    final l$redeemGiftCard = json['redeemGiftCard'];
    final l$$__typename = json['__typename'];
    return Mutation$RedeemGiftCard(
      redeemGiftCard: Mutation$RedeemGiftCard$redeemGiftCard.fromJson(
          (l$redeemGiftCard as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$RedeemGiftCard$redeemGiftCard redeemGiftCard;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$redeemGiftCard = redeemGiftCard;
    _resultData['redeemGiftCard'] = l$redeemGiftCard.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$redeemGiftCard = redeemGiftCard;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$redeemGiftCard,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RedeemGiftCard || runtimeType != other.runtimeType) {
      return false;
    }
    final l$redeemGiftCard = redeemGiftCard;
    final lOther$redeemGiftCard = other.redeemGiftCard;
    if (l$redeemGiftCard != lOther$redeemGiftCard) {
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

extension UtilityExtension$Mutation$RedeemGiftCard on Mutation$RedeemGiftCard {
  CopyWith$Mutation$RedeemGiftCard<Mutation$RedeemGiftCard> get copyWith =>
      CopyWith$Mutation$RedeemGiftCard(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$RedeemGiftCard<TRes> {
  factory CopyWith$Mutation$RedeemGiftCard(
    Mutation$RedeemGiftCard instance,
    TRes Function(Mutation$RedeemGiftCard) then,
  ) = _CopyWithImpl$Mutation$RedeemGiftCard;

  factory CopyWith$Mutation$RedeemGiftCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RedeemGiftCard;

  TRes call({
    Mutation$RedeemGiftCard$redeemGiftCard? redeemGiftCard,
    String? $__typename,
  });
  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> get redeemGiftCard;
}

class _CopyWithImpl$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard<TRes> {
  _CopyWithImpl$Mutation$RedeemGiftCard(
    this._instance,
    this._then,
  );

  final Mutation$RedeemGiftCard _instance;

  final TRes Function(Mutation$RedeemGiftCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? redeemGiftCard = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RedeemGiftCard(
        redeemGiftCard: redeemGiftCard == _undefined || redeemGiftCard == null
            ? _instance.redeemGiftCard
            : (redeemGiftCard as Mutation$RedeemGiftCard$redeemGiftCard),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> get redeemGiftCard {
    final local$redeemGiftCard = _instance.redeemGiftCard;
    return CopyWith$Mutation$RedeemGiftCard$redeemGiftCard(
        local$redeemGiftCard, (e) => call(redeemGiftCard: e));
  }
}

class _CopyWithStubImpl$Mutation$RedeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard<TRes> {
  _CopyWithStubImpl$Mutation$RedeemGiftCard(this._res);

  TRes _res;

  call({
    Mutation$RedeemGiftCard$redeemGiftCard? redeemGiftCard,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> get redeemGiftCard =>
      CopyWith$Mutation$RedeemGiftCard$redeemGiftCard.stub(_res);
}

const documentNodeMutationRedeemGiftCard = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'RedeemGiftCard'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'code')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'redeemGiftCard'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'code')),
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
            name: NameNode(value: 'amount'),
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
Mutation$RedeemGiftCard _parserFn$Mutation$RedeemGiftCard(
        Map<String, dynamic> data) =>
    Mutation$RedeemGiftCard.fromJson(data);
typedef OnMutationCompleted$Mutation$RedeemGiftCard = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$RedeemGiftCard?,
);

class Options$Mutation$RedeemGiftCard
    extends graphql.MutationOptions<Mutation$RedeemGiftCard> {
  Options$Mutation$RedeemGiftCard({
    String? operationName,
    required Variables$Mutation$RedeemGiftCard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RedeemGiftCard? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$RedeemGiftCard? onCompleted,
    graphql.OnMutationUpdate<Mutation$RedeemGiftCard>? update,
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
                        : _parserFn$Mutation$RedeemGiftCard(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationRedeemGiftCard,
          parserFn: _parserFn$Mutation$RedeemGiftCard,
        );

  final OnMutationCompleted$Mutation$RedeemGiftCard? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$RedeemGiftCard
    extends graphql.WatchQueryOptions<Mutation$RedeemGiftCard> {
  WatchOptions$Mutation$RedeemGiftCard({
    String? operationName,
    required Variables$Mutation$RedeemGiftCard variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$RedeemGiftCard? typedOptimisticResult,
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
          document: documentNodeMutationRedeemGiftCard,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$RedeemGiftCard,
        );
}

extension ClientExtension$Mutation$RedeemGiftCard on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$RedeemGiftCard>> mutate$RedeemGiftCard(
          Options$Mutation$RedeemGiftCard options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$RedeemGiftCard> watchMutation$RedeemGiftCard(
          WatchOptions$Mutation$RedeemGiftCard options) =>
      this.watchMutation(options);
}

class Mutation$RedeemGiftCard$redeemGiftCard {
  Mutation$RedeemGiftCard$redeemGiftCard({
    required this.id,
    required this.amount,
    required this.currency,
    this.$__typename = 'GiftCard',
  });

  factory Mutation$RedeemGiftCard$redeemGiftCard.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Mutation$RedeemGiftCard$redeemGiftCard(
      id: (l$id as String),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final double amount;

  final String currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$amount = amount;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$amount,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$RedeemGiftCard$redeemGiftCard ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
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

extension UtilityExtension$Mutation$RedeemGiftCard$redeemGiftCard
    on Mutation$RedeemGiftCard$redeemGiftCard {
  CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<
          Mutation$RedeemGiftCard$redeemGiftCard>
      get copyWith => CopyWith$Mutation$RedeemGiftCard$redeemGiftCard(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> {
  factory CopyWith$Mutation$RedeemGiftCard$redeemGiftCard(
    Mutation$RedeemGiftCard$redeemGiftCard instance,
    TRes Function(Mutation$RedeemGiftCard$redeemGiftCard) then,
  ) = _CopyWithImpl$Mutation$RedeemGiftCard$redeemGiftCard;

  factory CopyWith$Mutation$RedeemGiftCard$redeemGiftCard.stub(TRes res) =
      _CopyWithStubImpl$Mutation$RedeemGiftCard$redeemGiftCard;

  TRes call({
    String? id,
    double? amount,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$RedeemGiftCard$redeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> {
  _CopyWithImpl$Mutation$RedeemGiftCard$redeemGiftCard(
    this._instance,
    this._then,
  );

  final Mutation$RedeemGiftCard$redeemGiftCard _instance;

  final TRes Function(Mutation$RedeemGiftCard$redeemGiftCard) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$RedeemGiftCard$redeemGiftCard(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$RedeemGiftCard$redeemGiftCard<TRes>
    implements CopyWith$Mutation$RedeemGiftCard$redeemGiftCard<TRes> {
  _CopyWithStubImpl$Mutation$RedeemGiftCard$redeemGiftCard(this._res);

  TRes _res;

  call({
    String? id,
    double? amount,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$MarkAsDefault {
  factory Variables$Mutation$MarkAsDefault({
    required String id,
    required bool isDefault,
  }) =>
      Variables$Mutation$MarkAsDefault._({
        r'id': id,
        r'isDefault': isDefault,
      });

  Variables$Mutation$MarkAsDefault._(this._$data);

  factory Variables$Mutation$MarkAsDefault.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    return Variables$Mutation$MarkAsDefault._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool get isDefault => (_$data['isDefault'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$isDefault = isDefault;
    result$data['isDefault'] = l$isDefault;
    return result$data;
  }

  CopyWith$Variables$Mutation$MarkAsDefault<Variables$Mutation$MarkAsDefault>
      get copyWith => CopyWith$Variables$Mutation$MarkAsDefault(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$MarkAsDefault ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isDefault = isDefault;
    return Object.hashAll([
      l$id,
      l$isDefault,
    ]);
  }
}

abstract class CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  factory CopyWith$Variables$Mutation$MarkAsDefault(
    Variables$Mutation$MarkAsDefault instance,
    TRes Function(Variables$Mutation$MarkAsDefault) then,
  ) = _CopyWithImpl$Variables$Mutation$MarkAsDefault;

  factory CopyWith$Variables$Mutation$MarkAsDefault.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MarkAsDefault;

  TRes call({
    String? id,
    bool? isDefault,
  });
}

class _CopyWithImpl$Variables$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  _CopyWithImpl$Variables$Mutation$MarkAsDefault(
    this._instance,
    this._then,
  );

  final Variables$Mutation$MarkAsDefault _instance;

  final TRes Function(Variables$Mutation$MarkAsDefault) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isDefault = _undefined,
  }) =>
      _then(Variables$Mutation$MarkAsDefault._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MarkAsDefault(this._res);

  TRes _res;

  call({
    String? id,
    bool? isDefault,
  }) =>
      _res;
}

class Mutation$MarkAsDefault {
  Mutation$MarkAsDefault({
    required this.updatePaymentMethodDefault,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MarkAsDefault.fromJson(Map<String, dynamic> json) {
    final l$updatePaymentMethodDefault = json['updatePaymentMethodDefault'];
    final l$$__typename = json['__typename'];
    return Mutation$MarkAsDefault(
      updatePaymentMethodDefault: (l$updatePaymentMethodDefault
              as List<dynamic>)
          .map((e) =>
              Fragment$SavedPaymentMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SavedPaymentMethod> updatePaymentMethodDefault;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePaymentMethodDefault = updatePaymentMethodDefault;
    _resultData['updatePaymentMethodDefault'] =
        l$updatePaymentMethodDefault.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePaymentMethodDefault = updatePaymentMethodDefault;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$updatePaymentMethodDefault.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$MarkAsDefault || runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePaymentMethodDefault = updatePaymentMethodDefault;
    final lOther$updatePaymentMethodDefault = other.updatePaymentMethodDefault;
    if (l$updatePaymentMethodDefault.length !=
        lOther$updatePaymentMethodDefault.length) {
      return false;
    }
    for (int i = 0; i < l$updatePaymentMethodDefault.length; i++) {
      final l$updatePaymentMethodDefault$entry =
          l$updatePaymentMethodDefault[i];
      final lOther$updatePaymentMethodDefault$entry =
          lOther$updatePaymentMethodDefault[i];
      if (l$updatePaymentMethodDefault$entry !=
          lOther$updatePaymentMethodDefault$entry) {
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

extension UtilityExtension$Mutation$MarkAsDefault on Mutation$MarkAsDefault {
  CopyWith$Mutation$MarkAsDefault<Mutation$MarkAsDefault> get copyWith =>
      CopyWith$Mutation$MarkAsDefault(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$MarkAsDefault<TRes> {
  factory CopyWith$Mutation$MarkAsDefault(
    Mutation$MarkAsDefault instance,
    TRes Function(Mutation$MarkAsDefault) then,
  ) = _CopyWithImpl$Mutation$MarkAsDefault;

  factory CopyWith$Mutation$MarkAsDefault.stub(TRes res) =
      _CopyWithStubImpl$Mutation$MarkAsDefault;

  TRes call({
    List<Fragment$SavedPaymentMethod>? updatePaymentMethodDefault,
    String? $__typename,
  });
  TRes updatePaymentMethodDefault(
      Iterable<Fragment$SavedPaymentMethod> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethod<
                      Fragment$SavedPaymentMethod>>)
          _fn);
}

class _CopyWithImpl$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Mutation$MarkAsDefault<TRes> {
  _CopyWithImpl$Mutation$MarkAsDefault(
    this._instance,
    this._then,
  );

  final Mutation$MarkAsDefault _instance;

  final TRes Function(Mutation$MarkAsDefault) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePaymentMethodDefault = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$MarkAsDefault(
        updatePaymentMethodDefault: updatePaymentMethodDefault == _undefined ||
                updatePaymentMethodDefault == null
            ? _instance.updatePaymentMethodDefault
            : (updatePaymentMethodDefault as List<Fragment$SavedPaymentMethod>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes updatePaymentMethodDefault(
          Iterable<Fragment$SavedPaymentMethod> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethod<
                          Fragment$SavedPaymentMethod>>)
              _fn) =>
      call(
          updatePaymentMethodDefault: _fn(_instance.updatePaymentMethodDefault
              .map((e) => CopyWith$Fragment$SavedPaymentMethod(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Mutation$MarkAsDefault<TRes> {
  _CopyWithStubImpl$Mutation$MarkAsDefault(this._res);

  TRes _res;

  call({
    List<Fragment$SavedPaymentMethod>? updatePaymentMethodDefault,
    String? $__typename,
  }) =>
      _res;

  updatePaymentMethodDefault(_fn) => _res;
}

const documentNodeMutationMarkAsDefault = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'MarkAsDefault'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'isDefault')),
        type: NamedTypeNode(
          name: NameNode(value: 'Boolean'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'updatePaymentMethodDefault'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
          ArgumentNode(
            name: NameNode(value: 'isDefault'),
            value: VariableNode(name: NameNode(value: 'isDefault')),
          ),
        ],
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
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  fragmentDefinitionSavedPaymentMethod,
]);
Mutation$MarkAsDefault _parserFn$Mutation$MarkAsDefault(
        Map<String, dynamic> data) =>
    Mutation$MarkAsDefault.fromJson(data);
typedef OnMutationCompleted$Mutation$MarkAsDefault = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$MarkAsDefault?,
);

class Options$Mutation$MarkAsDefault
    extends graphql.MutationOptions<Mutation$MarkAsDefault> {
  Options$Mutation$MarkAsDefault({
    String? operationName,
    required Variables$Mutation$MarkAsDefault variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$MarkAsDefault? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$MarkAsDefault? onCompleted,
    graphql.OnMutationUpdate<Mutation$MarkAsDefault>? update,
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
                        : _parserFn$Mutation$MarkAsDefault(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationMarkAsDefault,
          parserFn: _parserFn$Mutation$MarkAsDefault,
        );

  final OnMutationCompleted$Mutation$MarkAsDefault? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$MarkAsDefault
    extends graphql.WatchQueryOptions<Mutation$MarkAsDefault> {
  WatchOptions$Mutation$MarkAsDefault({
    String? operationName,
    required Variables$Mutation$MarkAsDefault variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$MarkAsDefault? typedOptimisticResult,
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
          document: documentNodeMutationMarkAsDefault,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$MarkAsDefault,
        );
}

extension ClientExtension$Mutation$MarkAsDefault on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$MarkAsDefault>> mutate$MarkAsDefault(
          Options$Mutation$MarkAsDefault options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$MarkAsDefault> watchMutation$MarkAsDefault(
          WatchOptions$Mutation$MarkAsDefault options) =>
      this.watchMutation(options);
}

class Variables$Mutation$TopUpWallet {
  factory Variables$Mutation$TopUpWallet(
          {required Input$TopUpWalletInput input}) =>
      Variables$Mutation$TopUpWallet._({
        r'input': input,
      });

  Variables$Mutation$TopUpWallet._(this._$data);

  factory Variables$Mutation$TopUpWallet.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$TopUpWalletInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$TopUpWallet._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$TopUpWalletInput get input =>
      (_$data['input'] as Input$TopUpWalletInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$TopUpWallet<Variables$Mutation$TopUpWallet>
      get copyWith => CopyWith$Variables$Mutation$TopUpWallet(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$TopUpWallet ||
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

abstract class CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Variables$Mutation$TopUpWallet(
    Variables$Mutation$TopUpWallet instance,
    TRes Function(Variables$Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Variables$Mutation$TopUpWallet;

  factory CopyWith$Variables$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$TopUpWallet;

  TRes call({Input$TopUpWalletInput? input});
}

class _CopyWithImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Variables$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Variables$Mutation$TopUpWallet _instance;

  final TRes Function(Variables$Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$TopUpWallet._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$TopUpWalletInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$TopUpWallet<TRes>
    implements CopyWith$Variables$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Variables$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({Input$TopUpWalletInput? input}) => _res;
}

class Mutation$TopUpWallet {
  Mutation$TopUpWallet({
    required this.topUpWallet,
    this.$__typename = 'Mutation',
  });

  factory Mutation$TopUpWallet.fromJson(Map<String, dynamic> json) {
    final l$topUpWallet = json['topUpWallet'];
    final l$$__typename = json['__typename'];
    return Mutation$TopUpWallet(
      topUpWallet: Fragment$IntentResult.fromJson(
          (l$topUpWallet as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$IntentResult topUpWallet;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$topUpWallet = topUpWallet;
    _resultData['topUpWallet'] = l$topUpWallet.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$topUpWallet = topUpWallet;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$topUpWallet,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$TopUpWallet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$topUpWallet = topUpWallet;
    final lOther$topUpWallet = other.topUpWallet;
    if (l$topUpWallet != lOther$topUpWallet) {
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

extension UtilityExtension$Mutation$TopUpWallet on Mutation$TopUpWallet {
  CopyWith$Mutation$TopUpWallet<Mutation$TopUpWallet> get copyWith =>
      CopyWith$Mutation$TopUpWallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$TopUpWallet<TRes> {
  factory CopyWith$Mutation$TopUpWallet(
    Mutation$TopUpWallet instance,
    TRes Function(Mutation$TopUpWallet) then,
  ) = _CopyWithImpl$Mutation$TopUpWallet;

  factory CopyWith$Mutation$TopUpWallet.stub(TRes res) =
      _CopyWithStubImpl$Mutation$TopUpWallet;

  TRes call({
    Fragment$IntentResult? topUpWallet,
    String? $__typename,
  });
  CopyWith$Fragment$IntentResult<TRes> get topUpWallet;
}

class _CopyWithImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithImpl$Mutation$TopUpWallet(
    this._instance,
    this._then,
  );

  final Mutation$TopUpWallet _instance;

  final TRes Function(Mutation$TopUpWallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? topUpWallet = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$TopUpWallet(
        topUpWallet: topUpWallet == _undefined || topUpWallet == null
            ? _instance.topUpWallet
            : (topUpWallet as Fragment$IntentResult),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$IntentResult<TRes> get topUpWallet {
    final local$topUpWallet = _instance.topUpWallet;
    return CopyWith$Fragment$IntentResult(
        local$topUpWallet, (e) => call(topUpWallet: e));
  }
}

class _CopyWithStubImpl$Mutation$TopUpWallet<TRes>
    implements CopyWith$Mutation$TopUpWallet<TRes> {
  _CopyWithStubImpl$Mutation$TopUpWallet(this._res);

  TRes _res;

  call({
    Fragment$IntentResult? topUpWallet,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$IntentResult<TRes> get topUpWallet =>
      CopyWith$Fragment$IntentResult.stub(_res);
}

const documentNodeMutationTopUpWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'TopUpWallet'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'TopUpWalletInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'topUpWallet'),
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
            name: NameNode(value: 'IntentResult'),
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
  fragmentDefinitionIntentResult,
]);
Mutation$TopUpWallet _parserFn$Mutation$TopUpWallet(
        Map<String, dynamic> data) =>
    Mutation$TopUpWallet.fromJson(data);
typedef OnMutationCompleted$Mutation$TopUpWallet = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$TopUpWallet?,
);

class Options$Mutation$TopUpWallet
    extends graphql.MutationOptions<Mutation$TopUpWallet> {
  Options$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$TopUpWallet? onCompleted,
    graphql.OnMutationUpdate<Mutation$TopUpWallet>? update,
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
                    data == null ? null : _parserFn$Mutation$TopUpWallet(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationTopUpWallet,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );

  final OnMutationCompleted$Mutation$TopUpWallet? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$TopUpWallet
    extends graphql.WatchQueryOptions<Mutation$TopUpWallet> {
  WatchOptions$Mutation$TopUpWallet({
    String? operationName,
    required Variables$Mutation$TopUpWallet variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$TopUpWallet? typedOptimisticResult,
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
          document: documentNodeMutationTopUpWallet,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$TopUpWallet,
        );
}

extension ClientExtension$Mutation$TopUpWallet on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$TopUpWallet>> mutate$TopUpWallet(
          Options$Mutation$TopUpWallet options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$TopUpWallet> watchMutation$TopUpWallet(
          WatchOptions$Mutation$TopUpWallet options) =>
      this.watchMutation(options);
}
