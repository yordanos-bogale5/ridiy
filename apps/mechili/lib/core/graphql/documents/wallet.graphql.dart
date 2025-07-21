import '../fragments/intent_result.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/rider_transaction.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Wallet {
  Query$Wallet({
    required this.rider,
    required this.savedPaymentMethods,
    required this.paymentGateways,
    this.$__typename = 'Query',
  });

  factory Query$Wallet.fromJson(Map<String, dynamic> json) {
    final l$rider = json['rider'];
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$$__typename = json['__typename'];
    return Query$Wallet(
      rider: Query$Wallet$rider.fromJson((l$rider as Map<String, dynamic>)),
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

  final Query$Wallet$rider rider;

  final List<Fragment$SavedPaymentMethod> savedPaymentMethods;

  final List<Fragment$PaymentGateway> paymentGateways;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$rider = rider;
    _resultData['rider'] = l$rider.toJson();
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
    final l$rider = rider;
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$paymentGateways = paymentGateways;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$rider,
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
    if (other is! Query$Wallet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$rider = rider;
    final lOther$rider = other.rider;
    if (l$rider != lOther$rider) {
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
    Query$Wallet$rider? rider,
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    String? $__typename,
  });
  CopyWith$Query$Wallet$rider<TRes> get rider;
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

class _CopyWithImpl$Query$Wallet<TRes> implements CopyWith$Query$Wallet<TRes> {
  _CopyWithImpl$Query$Wallet(
    this._instance,
    this._then,
  );

  final Query$Wallet _instance;

  final TRes Function(Query$Wallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? rider = _undefined,
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet(
        rider: rider == _undefined || rider == null
            ? _instance.rider
            : (rider as Query$Wallet$rider),
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

  CopyWith$Query$Wallet$rider<TRes> get rider {
    final local$rider = _instance.rider;
    return CopyWith$Query$Wallet$rider(local$rider, (e) => call(rider: e));
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
}

class _CopyWithStubImpl$Query$Wallet<TRes>
    implements CopyWith$Query$Wallet<TRes> {
  _CopyWithStubImpl$Query$Wallet(this._res);

  TRes _res;

  call({
    Query$Wallet$rider? rider,
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Wallet$rider<TRes> get rider =>
      CopyWith$Query$Wallet$rider.stub(_res);

  savedPaymentMethods(_fn) => _res;

  paymentGateways(_fn) => _res;
}

const documentNodeQueryWallet = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Wallet'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'rider'),
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
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'firstName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'lastName'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'transactions'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'nodes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FragmentSpreadNode(
                    name: NameNode(value: 'RiderTransaction'),
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
            name: NameNode(value: 'wallets'),
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
                name: NameNode(value: 'currency'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'balance'),
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
  fragmentDefinitionRiderTransaction,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
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

class Query$Wallet$rider {
  Query$Wallet$rider({
    required this.id,
    this.firstName,
    this.lastName,
    required this.transactions,
    required this.wallets,
    this.$__typename = 'Rider',
  });

  factory Query$Wallet$rider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$transactions = json['transactions'];
    final l$wallets = json['wallets'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      transactions: Query$Wallet$rider$transactions.fromJson(
          (l$transactions as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Query$Wallet$rider$wallets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Query$Wallet$rider$transactions transactions;

  final List<Query$Wallet$rider$wallets> wallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$transactions = transactions;
    _resultData['transactions'] = l$transactions.toJson();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$transactions = transactions;
    final l$wallets = wallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$transactions,
      Object.hashAll(l$wallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$transactions = transactions;
    final lOther$transactions = other.transactions;
    if (l$transactions != lOther$transactions) {
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

extension UtilityExtension$Query$Wallet$rider on Query$Wallet$rider {
  CopyWith$Query$Wallet$rider<Query$Wallet$rider> get copyWith =>
      CopyWith$Query$Wallet$rider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Wallet$rider<TRes> {
  factory CopyWith$Query$Wallet$rider(
    Query$Wallet$rider instance,
    TRes Function(Query$Wallet$rider) then,
  ) = _CopyWithImpl$Query$Wallet$rider;

  factory CopyWith$Query$Wallet$rider.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Query$Wallet$rider$transactions? transactions,
    List<Query$Wallet$rider$wallets>? wallets,
    String? $__typename,
  });
  CopyWith$Query$Wallet$rider$transactions<TRes> get transactions;
  TRes wallets(
      Iterable<Query$Wallet$rider$wallets> Function(
              Iterable<
                  CopyWith$Query$Wallet$rider$wallets<
                      Query$Wallet$rider$wallets>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$rider<TRes>
    implements CopyWith$Query$Wallet$rider<TRes> {
  _CopyWithImpl$Query$Wallet$rider(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider _instance;

  final TRes Function(Query$Wallet$rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? transactions = _undefined,
    Object? wallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        transactions: transactions == _undefined || transactions == null
            ? _instance.transactions
            : (transactions as Query$Wallet$rider$transactions),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Query$Wallet$rider$wallets>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Wallet$rider$transactions<TRes> get transactions {
    final local$transactions = _instance.transactions;
    return CopyWith$Query$Wallet$rider$transactions(
        local$transactions, (e) => call(transactions: e));
  }

  TRes wallets(
          Iterable<Query$Wallet$rider$wallets> Function(
                  Iterable<
                      CopyWith$Query$Wallet$rider$wallets<
                          Query$Wallet$rider$wallets>>)
              _fn) =>
      call(
          wallets: _fn(
              _instance.wallets.map((e) => CopyWith$Query$Wallet$rider$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$rider<TRes>
    implements CopyWith$Query$Wallet$rider<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Query$Wallet$rider$transactions? transactions,
    List<Query$Wallet$rider$wallets>? wallets,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Wallet$rider$transactions<TRes> get transactions =>
      CopyWith$Query$Wallet$rider$transactions.stub(_res);

  wallets(_fn) => _res;
}

class Query$Wallet$rider$transactions {
  Query$Wallet$rider$transactions({
    required this.nodes,
    this.$__typename = 'RiderTransactionsConnection',
  });

  factory Query$Wallet$rider$transactions.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider$transactions(
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$RiderTransaction.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$RiderTransaction> nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider$transactions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Query$Wallet$rider$transactions
    on Query$Wallet$rider$transactions {
  CopyWith$Query$Wallet$rider$transactions<Query$Wallet$rider$transactions>
      get copyWith => CopyWith$Query$Wallet$rider$transactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$rider$transactions<TRes> {
  factory CopyWith$Query$Wallet$rider$transactions(
    Query$Wallet$rider$transactions instance,
    TRes Function(Query$Wallet$rider$transactions) then,
  ) = _CopyWithImpl$Query$Wallet$rider$transactions;

  factory CopyWith$Query$Wallet$rider$transactions.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider$transactions;

  TRes call({
    List<Fragment$RiderTransaction>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$RiderTransaction> Function(
              Iterable<
                  CopyWith$Fragment$RiderTransaction<
                      Fragment$RiderTransaction>>)
          _fn);
}

class _CopyWithImpl$Query$Wallet$rider$transactions<TRes>
    implements CopyWith$Query$Wallet$rider$transactions<TRes> {
  _CopyWithImpl$Query$Wallet$rider$transactions(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider$transactions _instance;

  final TRes Function(Query$Wallet$rider$transactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider$transactions(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Fragment$RiderTransaction>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$RiderTransaction> Function(
                  Iterable<
                      CopyWith$Fragment$RiderTransaction<
                          Fragment$RiderTransaction>>)
              _fn) =>
      call(
          nodes:
              _fn(_instance.nodes.map((e) => CopyWith$Fragment$RiderTransaction(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Wallet$rider$transactions<TRes>
    implements CopyWith$Query$Wallet$rider$transactions<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider$transactions(this._res);

  TRes _res;

  call({
    List<Fragment$RiderTransaction>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Query$Wallet$rider$wallets {
  Query$Wallet$rider$wallets({
    required this.id,
    required this.currency,
    required this.balance,
    this.$__typename = 'RiderWallet',
  });

  factory Query$Wallet$rider$wallets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$currency = json['currency'];
    final l$balance = json['balance'];
    final l$$__typename = json['__typename'];
    return Query$Wallet$rider$wallets(
      id: (l$id as String),
      currency: (l$currency as String),
      balance: (l$balance as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String currency;

  final double balance;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$currency = currency;
    final l$balance = balance;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$currency,
      l$balance,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Wallet$rider$wallets ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
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

extension UtilityExtension$Query$Wallet$rider$wallets
    on Query$Wallet$rider$wallets {
  CopyWith$Query$Wallet$rider$wallets<Query$Wallet$rider$wallets>
      get copyWith => CopyWith$Query$Wallet$rider$wallets(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$Wallet$rider$wallets<TRes> {
  factory CopyWith$Query$Wallet$rider$wallets(
    Query$Wallet$rider$wallets instance,
    TRes Function(Query$Wallet$rider$wallets) then,
  ) = _CopyWithImpl$Query$Wallet$rider$wallets;

  factory CopyWith$Query$Wallet$rider$wallets.stub(TRes res) =
      _CopyWithStubImpl$Query$Wallet$rider$wallets;

  TRes call({
    String? id,
    String? currency,
    double? balance,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Wallet$rider$wallets<TRes>
    implements CopyWith$Query$Wallet$rider$wallets<TRes> {
  _CopyWithImpl$Query$Wallet$rider$wallets(
    this._instance,
    this._then,
  );

  final Query$Wallet$rider$wallets _instance;

  final TRes Function(Query$Wallet$rider$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? currency = _undefined,
    Object? balance = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Wallet$rider$wallets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Wallet$rider$wallets<TRes>
    implements CopyWith$Query$Wallet$rider$wallets<TRes> {
  _CopyWithStubImpl$Query$Wallet$rider$wallets(this._res);

  TRes _res;

  call({
    String? id,
    String? currency,
    double? balance,
    String? $__typename,
  }) =>
      _res;
}

class Query$PaymentMethods {
  Query$PaymentMethods({
    required this.savedPaymentMethods,
    required this.paymentGateways,
    this.$__typename = 'Query',
  });

  factory Query$PaymentMethods.fromJson(Map<String, dynamic> json) {
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$$__typename = json['__typename'];
    return Query$PaymentMethods(
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
    if (other is! Query$PaymentMethods || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PaymentMethods on Query$PaymentMethods {
  CopyWith$Query$PaymentMethods<Query$PaymentMethods> get copyWith =>
      CopyWith$Query$PaymentMethods(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PaymentMethods<TRes> {
  factory CopyWith$Query$PaymentMethods(
    Query$PaymentMethods instance,
    TRes Function(Query$PaymentMethods) then,
  ) = _CopyWithImpl$Query$PaymentMethods;

  factory CopyWith$Query$PaymentMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentMethods;

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

class _CopyWithImpl$Query$PaymentMethods<TRes>
    implements CopyWith$Query$PaymentMethods<TRes> {
  _CopyWithImpl$Query$PaymentMethods(
    this._instance,
    this._then,
  );

  final Query$PaymentMethods _instance;

  final TRes Function(Query$PaymentMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentMethods(
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

class _CopyWithStubImpl$Query$PaymentMethods<TRes>
    implements CopyWith$Query$PaymentMethods<TRes> {
  _CopyWithStubImpl$Query$PaymentMethods(this._res);

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

const documentNodeQueryPaymentMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaymentMethods'),
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
Query$PaymentMethods _parserFn$Query$PaymentMethods(
        Map<String, dynamic> data) =>
    Query$PaymentMethods.fromJson(data);
typedef OnQueryComplete$Query$PaymentMethods = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PaymentMethods?,
);

class Options$Query$PaymentMethods
    extends graphql.QueryOptions<Query$PaymentMethods> {
  Options$Query$PaymentMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentMethods? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PaymentMethods? onComplete,
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
                    data == null ? null : _parserFn$Query$PaymentMethods(data),
                  ),
          onError: onError,
          document: documentNodeQueryPaymentMethods,
          parserFn: _parserFn$Query$PaymentMethods,
        );

  final OnQueryComplete$Query$PaymentMethods? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PaymentMethods
    extends graphql.WatchQueryOptions<Query$PaymentMethods> {
  WatchOptions$Query$PaymentMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentMethods? typedOptimisticResult,
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
          document: documentNodeQueryPaymentMethods,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PaymentMethods,
        );
}

class FetchMoreOptions$Query$PaymentMethods extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PaymentMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPaymentMethods,
        );
}

extension ClientExtension$Query$PaymentMethods on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PaymentMethods>> query$PaymentMethods(
          [Options$Query$PaymentMethods? options]) async =>
      await this.query(options ?? Options$Query$PaymentMethods());
  graphql.ObservableQuery<Query$PaymentMethods> watchQuery$PaymentMethods(
          [WatchOptions$Query$PaymentMethods? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PaymentMethods());
  void writeQuery$PaymentMethods({
    required Query$PaymentMethods data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPaymentMethods)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PaymentMethods? readQuery$PaymentMethods({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPaymentMethods)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PaymentMethods.fromJson(result);
  }
}

class Query$SavedPaymentMethods {
  Query$SavedPaymentMethods({
    required this.savedPaymentMethods,
    this.$__typename = 'Query',
  });

  factory Query$SavedPaymentMethods.fromJson(Map<String, dynamic> json) {
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$$__typename = json['__typename'];
    return Query$SavedPaymentMethods(
      savedPaymentMethods: (l$savedPaymentMethods as List<dynamic>)
          .map((e) =>
              Fragment$SavedPaymentMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SavedPaymentMethod> savedPaymentMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$savedPaymentMethods = savedPaymentMethods;
    _resultData['savedPaymentMethods'] =
        l$savedPaymentMethods.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$savedPaymentMethods.map((v) => v)),
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
    String? $__typename,
  });
  TRes savedPaymentMethods(
      Iterable<Fragment$SavedPaymentMethod> Function(
              Iterable<
                  CopyWith$Fragment$SavedPaymentMethod<
                      Fragment$SavedPaymentMethod>>)
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
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SavedPaymentMethods(
        savedPaymentMethods:
            savedPaymentMethods == _undefined || savedPaymentMethods == null
                ? _instance.savedPaymentMethods
                : (savedPaymentMethods as List<Fragment$SavedPaymentMethod>),
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
}

class _CopyWithStubImpl$Query$SavedPaymentMethods<TRes>
    implements CopyWith$Query$SavedPaymentMethods<TRes> {
  _CopyWithStubImpl$Query$SavedPaymentMethods(this._res);

  TRes _res;

  call({
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    String? $__typename,
  }) =>
      _res;

  savedPaymentMethods(_fn) => _res;
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

class Query$PaymentGateways {
  Query$PaymentGateways({
    required this.paymentGateways,
    this.$__typename = 'Query',
  });

  factory Query$PaymentGateways.fromJson(Map<String, dynamic> json) {
    final l$paymentGateways = json['paymentGateways'];
    final l$$__typename = json['__typename'];
    return Query$PaymentGateways(
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) =>
              Fragment$PaymentGateway.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PaymentGateway> paymentGateways;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$paymentGateways = paymentGateways;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$paymentGateways.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PaymentGateways || runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$PaymentGateways on Query$PaymentGateways {
  CopyWith$Query$PaymentGateways<Query$PaymentGateways> get copyWith =>
      CopyWith$Query$PaymentGateways(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PaymentGateways<TRes> {
  factory CopyWith$Query$PaymentGateways(
    Query$PaymentGateways instance,
    TRes Function(Query$PaymentGateways) then,
  ) = _CopyWithImpl$Query$PaymentGateways;

  factory CopyWith$Query$PaymentGateways.stub(TRes res) =
      _CopyWithStubImpl$Query$PaymentGateways;

  TRes call({
    List<Fragment$PaymentGateway>? paymentGateways,
    String? $__typename,
  });
  TRes paymentGateways(
      Iterable<Fragment$PaymentGateway> Function(
              Iterable<
                  CopyWith$Fragment$PaymentGateway<Fragment$PaymentGateway>>)
          _fn);
}

class _CopyWithImpl$Query$PaymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways<TRes> {
  _CopyWithImpl$Query$PaymentGateways(
    this._instance,
    this._then,
  );

  final Query$PaymentGateways _instance;

  final TRes Function(Query$PaymentGateways) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? paymentGateways = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PaymentGateways(
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Fragment$PaymentGateway>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

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

class _CopyWithStubImpl$Query$PaymentGateways<TRes>
    implements CopyWith$Query$PaymentGateways<TRes> {
  _CopyWithStubImpl$Query$PaymentGateways(this._res);

  TRes _res;

  call({
    List<Fragment$PaymentGateway>? paymentGateways,
    String? $__typename,
  }) =>
      _res;

  paymentGateways(_fn) => _res;
}

const documentNodeQueryPaymentGateways = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PaymentGateways'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
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
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
]);
Query$PaymentGateways _parserFn$Query$PaymentGateways(
        Map<String, dynamic> data) =>
    Query$PaymentGateways.fromJson(data);
typedef OnQueryComplete$Query$PaymentGateways = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PaymentGateways?,
);

class Options$Query$PaymentGateways
    extends graphql.QueryOptions<Query$PaymentGateways> {
  Options$Query$PaymentGateways({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentGateways? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PaymentGateways? onComplete,
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
                    data == null ? null : _parserFn$Query$PaymentGateways(data),
                  ),
          onError: onError,
          document: documentNodeQueryPaymentGateways,
          parserFn: _parserFn$Query$PaymentGateways,
        );

  final OnQueryComplete$Query$PaymentGateways? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PaymentGateways
    extends graphql.WatchQueryOptions<Query$PaymentGateways> {
  WatchOptions$Query$PaymentGateways({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PaymentGateways? typedOptimisticResult,
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
          document: documentNodeQueryPaymentGateways,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PaymentGateways,
        );
}

class FetchMoreOptions$Query$PaymentGateways extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PaymentGateways(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPaymentGateways,
        );
}

extension ClientExtension$Query$PaymentGateways on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PaymentGateways>> query$PaymentGateways(
          [Options$Query$PaymentGateways? options]) async =>
      await this.query(options ?? Options$Query$PaymentGateways());
  graphql.ObservableQuery<Query$PaymentGateways> watchQuery$PaymentGateways(
          [WatchOptions$Query$PaymentGateways? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PaymentGateways());
  void writeQuery$PaymentGateways({
    required Query$PaymentGateways data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPaymentGateways)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PaymentGateways? readQuery$PaymentGateways({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPaymentGateways)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PaymentGateways.fromJson(result);
  }
}

class Variables$Mutation$GetSetupPaymentMethodLink {
  factory Variables$Mutation$GetSetupPaymentMethodLink(
          {required String gatewayId}) =>
      Variables$Mutation$GetSetupPaymentMethodLink._({
        r'gatewayId': gatewayId,
      });

  Variables$Mutation$GetSetupPaymentMethodLink._(this._$data);

  factory Variables$Mutation$GetSetupPaymentMethodLink.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    return Variables$Mutation$GetSetupPaymentMethodLink._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    return result$data;
  }

  CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<
          Variables$Mutation$GetSetupPaymentMethodLink>
      get copyWith => CopyWith$Variables$Mutation$GetSetupPaymentMethodLink(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$GetSetupPaymentMethodLink ||
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

abstract class CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<TRes> {
  factory CopyWith$Variables$Mutation$GetSetupPaymentMethodLink(
    Variables$Mutation$GetSetupPaymentMethodLink instance,
    TRes Function(Variables$Mutation$GetSetupPaymentMethodLink) then,
  ) = _CopyWithImpl$Variables$Mutation$GetSetupPaymentMethodLink;

  factory CopyWith$Variables$Mutation$GetSetupPaymentMethodLink.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$GetSetupPaymentMethodLink;

  TRes call({String? gatewayId});
}

class _CopyWithImpl$Variables$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithImpl$Variables$Mutation$GetSetupPaymentMethodLink(
    this._instance,
    this._then,
  );

  final Variables$Mutation$GetSetupPaymentMethodLink _instance;

  final TRes Function(Variables$Mutation$GetSetupPaymentMethodLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gatewayId = _undefined}) =>
      _then(Variables$Mutation$GetSetupPaymentMethodLink._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Variables$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithStubImpl$Variables$Mutation$GetSetupPaymentMethodLink(this._res);

  TRes _res;

  call({String? gatewayId}) => _res;
}

class Mutation$GetSetupPaymentMethodLink {
  Mutation$GetSetupPaymentMethodLink({
    required this.setupPaymentMethod,
    this.$__typename = 'Mutation',
  });

  factory Mutation$GetSetupPaymentMethodLink.fromJson(
      Map<String, dynamic> json) {
    final l$setupPaymentMethod = json['setupPaymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$GetSetupPaymentMethodLink(
      setupPaymentMethod:
          Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.fromJson(
              (l$setupPaymentMethod as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$GetSetupPaymentMethodLink$setupPaymentMethod
      setupPaymentMethod;

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
    if (other is! Mutation$GetSetupPaymentMethodLink ||
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

extension UtilityExtension$Mutation$GetSetupPaymentMethodLink
    on Mutation$GetSetupPaymentMethodLink {
  CopyWith$Mutation$GetSetupPaymentMethodLink<
          Mutation$GetSetupPaymentMethodLink>
      get copyWith => CopyWith$Mutation$GetSetupPaymentMethodLink(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$GetSetupPaymentMethodLink<TRes> {
  factory CopyWith$Mutation$GetSetupPaymentMethodLink(
    Mutation$GetSetupPaymentMethodLink instance,
    TRes Function(Mutation$GetSetupPaymentMethodLink) then,
  ) = _CopyWithImpl$Mutation$GetSetupPaymentMethodLink;

  factory CopyWith$Mutation$GetSetupPaymentMethodLink.stub(TRes res) =
      _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink;

  TRes call({
    Mutation$GetSetupPaymentMethodLink$setupPaymentMethod? setupPaymentMethod,
    String? $__typename,
  });
  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod;
}

class _CopyWithImpl$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithImpl$Mutation$GetSetupPaymentMethodLink(
    this._instance,
    this._then,
  );

  final Mutation$GetSetupPaymentMethodLink _instance;

  final TRes Function(Mutation$GetSetupPaymentMethodLink) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? setupPaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$GetSetupPaymentMethodLink(
        setupPaymentMethod:
            setupPaymentMethod == _undefined || setupPaymentMethod == null
                ? _instance.setupPaymentMethod
                : (setupPaymentMethod
                    as Mutation$GetSetupPaymentMethodLink$setupPaymentMethod),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod {
    final local$setupPaymentMethod = _instance.setupPaymentMethod;
    return CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
        local$setupPaymentMethod, (e) => call(setupPaymentMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink<TRes>
    implements CopyWith$Mutation$GetSetupPaymentMethodLink<TRes> {
  _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink(this._res);

  TRes _res;

  call({
    Mutation$GetSetupPaymentMethodLink$setupPaymentMethod? setupPaymentMethod,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
      get setupPaymentMethod =>
          CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.stub(
              _res);
}

const documentNodeMutationGetSetupPaymentMethodLink =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'GetSetupPaymentMethodLink'),
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
Mutation$GetSetupPaymentMethodLink _parserFn$Mutation$GetSetupPaymentMethodLink(
        Map<String, dynamic> data) =>
    Mutation$GetSetupPaymentMethodLink.fromJson(data);
typedef OnMutationCompleted$Mutation$GetSetupPaymentMethodLink = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$GetSetupPaymentMethodLink?,
);

class Options$Mutation$GetSetupPaymentMethodLink
    extends graphql.MutationOptions<Mutation$GetSetupPaymentMethodLink> {
  Options$Mutation$GetSetupPaymentMethodLink({
    String? operationName,
    required Variables$Mutation$GetSetupPaymentMethodLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$GetSetupPaymentMethodLink? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$GetSetupPaymentMethodLink? onCompleted,
    graphql.OnMutationUpdate<Mutation$GetSetupPaymentMethodLink>? update,
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
                        : _parserFn$Mutation$GetSetupPaymentMethodLink(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationGetSetupPaymentMethodLink,
          parserFn: _parserFn$Mutation$GetSetupPaymentMethodLink,
        );

  final OnMutationCompleted$Mutation$GetSetupPaymentMethodLink?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$GetSetupPaymentMethodLink
    extends graphql.WatchQueryOptions<Mutation$GetSetupPaymentMethodLink> {
  WatchOptions$Mutation$GetSetupPaymentMethodLink({
    String? operationName,
    required Variables$Mutation$GetSetupPaymentMethodLink variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$GetSetupPaymentMethodLink? typedOptimisticResult,
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
          document: documentNodeMutationGetSetupPaymentMethodLink,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$GetSetupPaymentMethodLink,
        );
}

extension ClientExtension$Mutation$GetSetupPaymentMethodLink
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$GetSetupPaymentMethodLink>>
      mutate$GetSetupPaymentMethodLink(
              Options$Mutation$GetSetupPaymentMethodLink options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$GetSetupPaymentMethodLink>
      watchMutation$GetSetupPaymentMethodLink(
              WatchOptions$Mutation$GetSetupPaymentMethodLink options) =>
          this.watchMutation(options);
}

class Mutation$GetSetupPaymentMethodLink$setupPaymentMethod {
  Mutation$GetSetupPaymentMethodLink$setupPaymentMethod({
    this.url,
    this.$__typename = 'SetupPaymentMethod',
  });

  factory Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
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
    if (other is! Mutation$GetSetupPaymentMethodLink$setupPaymentMethod ||
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

extension UtilityExtension$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod
    on Mutation$GetSetupPaymentMethodLink$setupPaymentMethod {
  CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<
          Mutation$GetSetupPaymentMethodLink$setupPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
    Mutation$GetSetupPaymentMethodLink$setupPaymentMethod instance,
    TRes Function(Mutation$GetSetupPaymentMethodLink$setupPaymentMethod) then,
  ) = _CopyWithImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod;

  factory CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod;

  TRes call({
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes>
    implements
        CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes> {
  _CopyWithImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$GetSetupPaymentMethodLink$setupPaymentMethod _instance;

  final TRes Function(Mutation$GetSetupPaymentMethodLink$setupPaymentMethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod<TRes> {
  _CopyWithStubImpl$Mutation$GetSetupPaymentMethodLink$setupPaymentMethod(
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
  factory Variables$Mutation$MarkAsDefault({required String id}) =>
      Variables$Mutation$MarkAsDefault._({
        r'id': id,
      });

  Variables$Mutation$MarkAsDefault._(this._$data);

  factory Variables$Mutation$MarkAsDefault.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$MarkAsDefault._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
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
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  factory CopyWith$Variables$Mutation$MarkAsDefault(
    Variables$Mutation$MarkAsDefault instance,
    TRes Function(Variables$Mutation$MarkAsDefault) then,
  ) = _CopyWithImpl$Variables$Mutation$MarkAsDefault;

  factory CopyWith$Variables$Mutation$MarkAsDefault.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$MarkAsDefault;

  TRes call({String? id});
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

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$MarkAsDefault._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$MarkAsDefault<TRes>
    implements CopyWith$Variables$Mutation$MarkAsDefault<TRes> {
  _CopyWithStubImpl$Variables$Mutation$MarkAsDefault(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$MarkAsDefault {
  Mutation$MarkAsDefault({
    required this.markPaymentMethodAsDefault,
    this.$__typename = 'Mutation',
  });

  factory Mutation$MarkAsDefault.fromJson(Map<String, dynamic> json) {
    final l$markPaymentMethodAsDefault = json['markPaymentMethodAsDefault'];
    final l$$__typename = json['__typename'];
    return Mutation$MarkAsDefault(
      markPaymentMethodAsDefault: (l$markPaymentMethodAsDefault
              as List<dynamic>)
          .map((e) =>
              Fragment$SavedPaymentMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$SavedPaymentMethod> markPaymentMethodAsDefault;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$markPaymentMethodAsDefault = markPaymentMethodAsDefault;
    _resultData['markPaymentMethodAsDefault'] =
        l$markPaymentMethodAsDefault.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$markPaymentMethodAsDefault = markPaymentMethodAsDefault;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$markPaymentMethodAsDefault.map((v) => v)),
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
    final l$markPaymentMethodAsDefault = markPaymentMethodAsDefault;
    final lOther$markPaymentMethodAsDefault = other.markPaymentMethodAsDefault;
    if (l$markPaymentMethodAsDefault.length !=
        lOther$markPaymentMethodAsDefault.length) {
      return false;
    }
    for (int i = 0; i < l$markPaymentMethodAsDefault.length; i++) {
      final l$markPaymentMethodAsDefault$entry =
          l$markPaymentMethodAsDefault[i];
      final lOther$markPaymentMethodAsDefault$entry =
          lOther$markPaymentMethodAsDefault[i];
      if (l$markPaymentMethodAsDefault$entry !=
          lOther$markPaymentMethodAsDefault$entry) {
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
    List<Fragment$SavedPaymentMethod>? markPaymentMethodAsDefault,
    String? $__typename,
  });
  TRes markPaymentMethodAsDefault(
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
    Object? markPaymentMethodAsDefault = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$MarkAsDefault(
        markPaymentMethodAsDefault: markPaymentMethodAsDefault == _undefined ||
                markPaymentMethodAsDefault == null
            ? _instance.markPaymentMethodAsDefault
            : (markPaymentMethodAsDefault as List<Fragment$SavedPaymentMethod>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes markPaymentMethodAsDefault(
          Iterable<Fragment$SavedPaymentMethod> Function(
                  Iterable<
                      CopyWith$Fragment$SavedPaymentMethod<
                          Fragment$SavedPaymentMethod>>)
              _fn) =>
      call(
          markPaymentMethodAsDefault: _fn(_instance.markPaymentMethodAsDefault
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
    List<Fragment$SavedPaymentMethod>? markPaymentMethodAsDefault,
    String? $__typename,
  }) =>
      _res;

  markPaymentMethodAsDefault(_fn) => _res;
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
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'markPaymentMethodAsDefault'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
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

class Variables$Mutation$DeleteSavedPaymentMethod {
  factory Variables$Mutation$DeleteSavedPaymentMethod({required String id}) =>
      Variables$Mutation$DeleteSavedPaymentMethod._({
        r'id': id,
      });

  Variables$Mutation$DeleteSavedPaymentMethod._(this._$data);

  factory Variables$Mutation$DeleteSavedPaymentMethod.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeleteSavedPaymentMethod._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeleteSavedPaymentMethod<
          Variables$Mutation$DeleteSavedPaymentMethod>
      get copyWith => CopyWith$Variables$Mutation$DeleteSavedPaymentMethod(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeleteSavedPaymentMethod ||
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

abstract class CopyWith$Variables$Mutation$DeleteSavedPaymentMethod<TRes> {
  factory CopyWith$Variables$Mutation$DeleteSavedPaymentMethod(
    Variables$Mutation$DeleteSavedPaymentMethod instance,
    TRes Function(Variables$Mutation$DeleteSavedPaymentMethod) then,
  ) = _CopyWithImpl$Variables$Mutation$DeleteSavedPaymentMethod;

  factory CopyWith$Variables$Mutation$DeleteSavedPaymentMethod.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeleteSavedPaymentMethod;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeleteSavedPaymentMethod<TRes>
    implements CopyWith$Variables$Mutation$DeleteSavedPaymentMethod<TRes> {
  _CopyWithImpl$Variables$Mutation$DeleteSavedPaymentMethod(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeleteSavedPaymentMethod _instance;

  final TRes Function(Variables$Mutation$DeleteSavedPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeleteSavedPaymentMethod._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeleteSavedPaymentMethod<TRes>
    implements CopyWith$Variables$Mutation$DeleteSavedPaymentMethod<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeleteSavedPaymentMethod(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeleteSavedPaymentMethod {
  Mutation$DeleteSavedPaymentMethod({
    required this.deleteSavedPaymentMethod,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteSavedPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$deleteSavedPaymentMethod = json['deleteSavedPaymentMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSavedPaymentMethod(
      deleteSavedPaymentMethod: (l$deleteSavedPaymentMethod as List<dynamic>)
          .map((e) => Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod
              .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>
      deleteSavedPaymentMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteSavedPaymentMethod = deleteSavedPaymentMethod;
    _resultData['deleteSavedPaymentMethod'] =
        l$deleteSavedPaymentMethod.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteSavedPaymentMethod = deleteSavedPaymentMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$deleteSavedPaymentMethod.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteSavedPaymentMethod ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteSavedPaymentMethod = deleteSavedPaymentMethod;
    final lOther$deleteSavedPaymentMethod = other.deleteSavedPaymentMethod;
    if (l$deleteSavedPaymentMethod.length !=
        lOther$deleteSavedPaymentMethod.length) {
      return false;
    }
    for (int i = 0; i < l$deleteSavedPaymentMethod.length; i++) {
      final l$deleteSavedPaymentMethod$entry = l$deleteSavedPaymentMethod[i];
      final lOther$deleteSavedPaymentMethod$entry =
          lOther$deleteSavedPaymentMethod[i];
      if (l$deleteSavedPaymentMethod$entry !=
          lOther$deleteSavedPaymentMethod$entry) {
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

extension UtilityExtension$Mutation$DeleteSavedPaymentMethod
    on Mutation$DeleteSavedPaymentMethod {
  CopyWith$Mutation$DeleteSavedPaymentMethod<Mutation$DeleteSavedPaymentMethod>
      get copyWith => CopyWith$Mutation$DeleteSavedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSavedPaymentMethod<TRes> {
  factory CopyWith$Mutation$DeleteSavedPaymentMethod(
    Mutation$DeleteSavedPaymentMethod instance,
    TRes Function(Mutation$DeleteSavedPaymentMethod) then,
  ) = _CopyWithImpl$Mutation$DeleteSavedPaymentMethod;

  factory CopyWith$Mutation$DeleteSavedPaymentMethod.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSavedPaymentMethod;

  TRes call({
    List<Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>?
        deleteSavedPaymentMethod,
    String? $__typename,
  });
  TRes deleteSavedPaymentMethod(
      Iterable<Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod> Function(
              Iterable<
                  CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
                      Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>>)
          _fn);
}

class _CopyWithImpl$Mutation$DeleteSavedPaymentMethod<TRes>
    implements CopyWith$Mutation$DeleteSavedPaymentMethod<TRes> {
  _CopyWithImpl$Mutation$DeleteSavedPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSavedPaymentMethod _instance;

  final TRes Function(Mutation$DeleteSavedPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteSavedPaymentMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSavedPaymentMethod(
        deleteSavedPaymentMethod: deleteSavedPaymentMethod == _undefined ||
                deleteSavedPaymentMethod == null
            ? _instance.deleteSavedPaymentMethod
            : (deleteSavedPaymentMethod as List<
                Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes deleteSavedPaymentMethod(
          Iterable<Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod> Function(
                  Iterable<
                      CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
                          Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>>)
              _fn) =>
      call(
          deleteSavedPaymentMethod: _fn(_instance.deleteSavedPaymentMethod.map(
              (e) =>
                  CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Mutation$DeleteSavedPaymentMethod<TRes>
    implements CopyWith$Mutation$DeleteSavedPaymentMethod<TRes> {
  _CopyWithStubImpl$Mutation$DeleteSavedPaymentMethod(this._res);

  TRes _res;

  call({
    List<Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>?
        deleteSavedPaymentMethod,
    String? $__typename,
  }) =>
      _res;

  deleteSavedPaymentMethod(_fn) => _res;
}

const documentNodeMutationDeleteSavedPaymentMethod = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteSavedPaymentMethod'),
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
        name: NameNode(value: 'deleteSavedPaymentMethod'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
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
Mutation$DeleteSavedPaymentMethod _parserFn$Mutation$DeleteSavedPaymentMethod(
        Map<String, dynamic> data) =>
    Mutation$DeleteSavedPaymentMethod.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteSavedPaymentMethod = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeleteSavedPaymentMethod?,
);

class Options$Mutation$DeleteSavedPaymentMethod
    extends graphql.MutationOptions<Mutation$DeleteSavedPaymentMethod> {
  Options$Mutation$DeleteSavedPaymentMethod({
    String? operationName,
    required Variables$Mutation$DeleteSavedPaymentMethod variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSavedPaymentMethod? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteSavedPaymentMethod? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteSavedPaymentMethod>? update,
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
                        : _parserFn$Mutation$DeleteSavedPaymentMethod(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteSavedPaymentMethod,
          parserFn: _parserFn$Mutation$DeleteSavedPaymentMethod,
        );

  final OnMutationCompleted$Mutation$DeleteSavedPaymentMethod?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteSavedPaymentMethod
    extends graphql.WatchQueryOptions<Mutation$DeleteSavedPaymentMethod> {
  WatchOptions$Mutation$DeleteSavedPaymentMethod({
    String? operationName,
    required Variables$Mutation$DeleteSavedPaymentMethod variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteSavedPaymentMethod? typedOptimisticResult,
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
          document: documentNodeMutationDeleteSavedPaymentMethod,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteSavedPaymentMethod,
        );
}

extension ClientExtension$Mutation$DeleteSavedPaymentMethod
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteSavedPaymentMethod>>
      mutate$DeleteSavedPaymentMethod(
              Options$Mutation$DeleteSavedPaymentMethod options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeleteSavedPaymentMethod>
      watchMutation$DeleteSavedPaymentMethod(
              WatchOptions$Mutation$DeleteSavedPaymentMethod options) =>
          this.watchMutation(options);
}

class Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod {
  Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod({
    required this.id,
    this.$__typename = 'SavedPaymentMethod',
  });

  factory Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
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
    if (other is! Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod ||
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

extension UtilityExtension$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod
    on Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod {
  CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
          Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod>
      get copyWith =>
          CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
    TRes> {
  factory CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
    Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod instance,
    TRes Function(Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod)
        then,
  ) = _CopyWithImpl$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod;

  factory CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
            TRes> {
  _CopyWithImpl$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
    this._instance,
    this._then,
  );

  final Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod _instance;

  final TRes Function(
      Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
        TRes>
    implements
        CopyWith$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod<
            TRes> {
  _CopyWithStubImpl$Mutation$DeleteSavedPaymentMethod$deleteSavedPaymentMethod(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
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
