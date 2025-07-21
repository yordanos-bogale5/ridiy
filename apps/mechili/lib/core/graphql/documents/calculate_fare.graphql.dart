import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../fragments/service.fragment.graphql.dart';
import '../fragments/service_category.fragment.graphql.dart';
import '../fragments/wallet.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$CalculateFare {
  factory Variables$Query$CalculateFare(
          {required Input$CalculateFareInput input}) =>
      Variables$Query$CalculateFare._({
        r'input': input,
      });

  Variables$Query$CalculateFare._(this._$data);

  factory Variables$Query$CalculateFare.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$CalculateFareInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Query$CalculateFare._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CalculateFareInput get input =>
      (_$data['input'] as Input$CalculateFareInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Query$CalculateFare<Variables$Query$CalculateFare>
      get copyWith => CopyWith$Variables$Query$CalculateFare(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$CalculateFare ||
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

abstract class CopyWith$Variables$Query$CalculateFare<TRes> {
  factory CopyWith$Variables$Query$CalculateFare(
    Variables$Query$CalculateFare instance,
    TRes Function(Variables$Query$CalculateFare) then,
  ) = _CopyWithImpl$Variables$Query$CalculateFare;

  factory CopyWith$Variables$Query$CalculateFare.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$CalculateFare;

  TRes call({Input$CalculateFareInput? input});
}

class _CopyWithImpl$Variables$Query$CalculateFare<TRes>
    implements CopyWith$Variables$Query$CalculateFare<TRes> {
  _CopyWithImpl$Variables$Query$CalculateFare(
    this._instance,
    this._then,
  );

  final Variables$Query$CalculateFare _instance;

  final TRes Function(Variables$Query$CalculateFare) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Query$CalculateFare._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CalculateFareInput),
      }));
}

class _CopyWithStubImpl$Variables$Query$CalculateFare<TRes>
    implements CopyWith$Variables$Query$CalculateFare<TRes> {
  _CopyWithStubImpl$Variables$Query$CalculateFare(this._res);

  TRes _res;

  call({Input$CalculateFareInput? input}) => _res;
}

class Query$CalculateFare {
  Query$CalculateFare({
    required this.getFares,
    required this.savedPaymentMethods,
    required this.paymentGateways,
    required this.riderWallets,
    this.$__typename = 'Query',
  });

  factory Query$CalculateFare.fromJson(Map<String, dynamic> json) {
    final l$getFares = json['getFares'];
    final l$savedPaymentMethods = json['savedPaymentMethods'];
    final l$paymentGateways = json['paymentGateways'];
    final l$riderWallets = json['riderWallets'];
    final l$$__typename = json['__typename'];
    return Query$CalculateFare(
      getFares: Query$CalculateFare$getFares.fromJson(
          (l$getFares as Map<String, dynamic>)),
      savedPaymentMethods: (l$savedPaymentMethods as List<dynamic>)
          .map((e) =>
              Fragment$SavedPaymentMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      paymentGateways: (l$paymentGateways as List<dynamic>)
          .map((e) =>
              Fragment$PaymentGateway.fromJson((e as Map<String, dynamic>)))
          .toList(),
      riderWallets: (l$riderWallets as List<dynamic>)
          .map((e) => Fragment$Wallet.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$CalculateFare$getFares getFares;

  final List<Fragment$SavedPaymentMethod> savedPaymentMethods;

  final List<Fragment$PaymentGateway> paymentGateways;

  final List<Fragment$Wallet> riderWallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getFares = getFares;
    _resultData['getFares'] = l$getFares.toJson();
    final l$savedPaymentMethods = savedPaymentMethods;
    _resultData['savedPaymentMethods'] =
        l$savedPaymentMethods.map((e) => e.toJson()).toList();
    final l$paymentGateways = paymentGateways;
    _resultData['paymentGateways'] =
        l$paymentGateways.map((e) => e.toJson()).toList();
    final l$riderWallets = riderWallets;
    _resultData['riderWallets'] =
        l$riderWallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getFares = getFares;
    final l$savedPaymentMethods = savedPaymentMethods;
    final l$paymentGateways = paymentGateways;
    final l$riderWallets = riderWallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getFares,
      Object.hashAll(l$savedPaymentMethods.map((v) => v)),
      Object.hashAll(l$paymentGateways.map((v) => v)),
      Object.hashAll(l$riderWallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CalculateFare || runtimeType != other.runtimeType) {
      return false;
    }
    final l$getFares = getFares;
    final lOther$getFares = other.getFares;
    if (l$getFares != lOther$getFares) {
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
    final l$riderWallets = riderWallets;
    final lOther$riderWallets = other.riderWallets;
    if (l$riderWallets.length != lOther$riderWallets.length) {
      return false;
    }
    for (int i = 0; i < l$riderWallets.length; i++) {
      final l$riderWallets$entry = l$riderWallets[i];
      final lOther$riderWallets$entry = lOther$riderWallets[i];
      if (l$riderWallets$entry != lOther$riderWallets$entry) {
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

extension UtilityExtension$Query$CalculateFare on Query$CalculateFare {
  CopyWith$Query$CalculateFare<Query$CalculateFare> get copyWith =>
      CopyWith$Query$CalculateFare(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$CalculateFare<TRes> {
  factory CopyWith$Query$CalculateFare(
    Query$CalculateFare instance,
    TRes Function(Query$CalculateFare) then,
  ) = _CopyWithImpl$Query$CalculateFare;

  factory CopyWith$Query$CalculateFare.stub(TRes res) =
      _CopyWithStubImpl$Query$CalculateFare;

  TRes call({
    Query$CalculateFare$getFares? getFares,
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    List<Fragment$Wallet>? riderWallets,
    String? $__typename,
  });
  CopyWith$Query$CalculateFare$getFares<TRes> get getFares;
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
  TRes riderWallets(
      Iterable<Fragment$Wallet> Function(
              Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
          _fn);
}

class _CopyWithImpl$Query$CalculateFare<TRes>
    implements CopyWith$Query$CalculateFare<TRes> {
  _CopyWithImpl$Query$CalculateFare(
    this._instance,
    this._then,
  );

  final Query$CalculateFare _instance;

  final TRes Function(Query$CalculateFare) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getFares = _undefined,
    Object? savedPaymentMethods = _undefined,
    Object? paymentGateways = _undefined,
    Object? riderWallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalculateFare(
        getFares: getFares == _undefined || getFares == null
            ? _instance.getFares
            : (getFares as Query$CalculateFare$getFares),
        savedPaymentMethods:
            savedPaymentMethods == _undefined || savedPaymentMethods == null
                ? _instance.savedPaymentMethods
                : (savedPaymentMethods as List<Fragment$SavedPaymentMethod>),
        paymentGateways:
            paymentGateways == _undefined || paymentGateways == null
                ? _instance.paymentGateways
                : (paymentGateways as List<Fragment$PaymentGateway>),
        riderWallets: riderWallets == _undefined || riderWallets == null
            ? _instance.riderWallets
            : (riderWallets as List<Fragment$Wallet>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$CalculateFare$getFares<TRes> get getFares {
    final local$getFares = _instance.getFares;
    return CopyWith$Query$CalculateFare$getFares(
        local$getFares, (e) => call(getFares: e));
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

  TRes riderWallets(
          Iterable<Fragment$Wallet> Function(
                  Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
              _fn) =>
      call(
          riderWallets:
              _fn(_instance.riderWallets.map((e) => CopyWith$Fragment$Wallet(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CalculateFare<TRes>
    implements CopyWith$Query$CalculateFare<TRes> {
  _CopyWithStubImpl$Query$CalculateFare(this._res);

  TRes _res;

  call({
    Query$CalculateFare$getFares? getFares,
    List<Fragment$SavedPaymentMethod>? savedPaymentMethods,
    List<Fragment$PaymentGateway>? paymentGateways,
    List<Fragment$Wallet>? riderWallets,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$CalculateFare$getFares<TRes> get getFares =>
      CopyWith$Query$CalculateFare$getFares.stub(_res);

  savedPaymentMethods(_fn) => _res;

  paymentGateways(_fn) => _res;

  riderWallets(_fn) => _res;
}

const documentNodeQueryCalculateFare = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'CalculateFare'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CalculateFareInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getFares'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: VariableNode(name: NameNode(value: 'input')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'services'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'ServiceCategory'),
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
                name: NameNode(value: 'lat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'lng'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'heading'),
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
            name: NameNode(value: 'currency'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'distance'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'duration'),
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
        name: NameNode(value: 'riderWallets'),
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
  fragmentDefinitionServiceCategory,
  fragmentDefinitionService,
  fragmentDefinitionMedia,
  fragmentDefinitionRideOption,
  fragmentDefinitionPoint,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionWallet,
]);
Query$CalculateFare _parserFn$Query$CalculateFare(Map<String, dynamic> data) =>
    Query$CalculateFare.fromJson(data);
typedef OnQueryComplete$Query$CalculateFare = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$CalculateFare?,
);

class Options$Query$CalculateFare
    extends graphql.QueryOptions<Query$CalculateFare> {
  Options$Query$CalculateFare({
    String? operationName,
    required Variables$Query$CalculateFare variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalculateFare? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$CalculateFare? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$CalculateFare(data),
                  ),
          onError: onError,
          document: documentNodeQueryCalculateFare,
          parserFn: _parserFn$Query$CalculateFare,
        );

  final OnQueryComplete$Query$CalculateFare? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$CalculateFare
    extends graphql.WatchQueryOptions<Query$CalculateFare> {
  WatchOptions$Query$CalculateFare({
    String? operationName,
    required Variables$Query$CalculateFare variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$CalculateFare? typedOptimisticResult,
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
          document: documentNodeQueryCalculateFare,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$CalculateFare,
        );
}

class FetchMoreOptions$Query$CalculateFare extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$CalculateFare({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$CalculateFare variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryCalculateFare,
        );
}

extension ClientExtension$Query$CalculateFare on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$CalculateFare>> query$CalculateFare(
          Options$Query$CalculateFare options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$CalculateFare> watchQuery$CalculateFare(
          WatchOptions$Query$CalculateFare options) =>
      this.watchQuery(options);
  void writeQuery$CalculateFare({
    required Query$CalculateFare data,
    required Variables$Query$CalculateFare variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryCalculateFare),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$CalculateFare? readQuery$CalculateFare({
    required Variables$Query$CalculateFare variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryCalculateFare),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$CalculateFare.fromJson(result);
  }
}

class Query$CalculateFare$getFares {
  Query$CalculateFare$getFares({
    required this.services,
    required this.directions,
    required this.currency,
    required this.distance,
    required this.duration,
    this.$__typename = 'CalculateFareDTO',
  });

  factory Query$CalculateFare$getFares.fromJson(Map<String, dynamic> json) {
    final l$services = json['services'];
    final l$directions = json['directions'];
    final l$currency = json['currency'];
    final l$distance = json['distance'];
    final l$duration = json['duration'];
    final l$$__typename = json['__typename'];
    return Query$CalculateFare$getFares(
      services: (l$services as List<dynamic>)
          .map((e) =>
              Fragment$ServiceCategory.fromJson((e as Map<String, dynamic>)))
          .toList(),
      directions: (l$directions as List<dynamic>)
          .map((e) => Query$CalculateFare$getFares$directions.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      currency: (l$currency as String),
      distance: (l$distance as num).toDouble(),
      duration: (l$duration as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$ServiceCategory> services;

  final List<Query$CalculateFare$getFares$directions> directions;

  final String currency;

  final double distance;

  final double duration;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$directions = directions;
    _resultData['directions'] = l$directions.map((e) => e.toJson()).toList();
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$distance = distance;
    _resultData['distance'] = l$distance;
    final l$duration = duration;
    _resultData['duration'] = l$duration;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$services = services;
    final l$directions = directions;
    final l$currency = currency;
    final l$distance = distance;
    final l$duration = duration;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$services.map((v) => v)),
      Object.hashAll(l$directions.map((v) => v)),
      l$currency,
      l$distance,
      l$duration,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CalculateFare$getFares ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
        return false;
      }
    }
    final l$directions = directions;
    final lOther$directions = other.directions;
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
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$distance = distance;
    final lOther$distance = other.distance;
    if (l$distance != lOther$distance) {
      return false;
    }
    final l$duration = duration;
    final lOther$duration = other.duration;
    if (l$duration != lOther$duration) {
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

extension UtilityExtension$Query$CalculateFare$getFares
    on Query$CalculateFare$getFares {
  CopyWith$Query$CalculateFare$getFares<Query$CalculateFare$getFares>
      get copyWith => CopyWith$Query$CalculateFare$getFares(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalculateFare$getFares<TRes> {
  factory CopyWith$Query$CalculateFare$getFares(
    Query$CalculateFare$getFares instance,
    TRes Function(Query$CalculateFare$getFares) then,
  ) = _CopyWithImpl$Query$CalculateFare$getFares;

  factory CopyWith$Query$CalculateFare$getFares.stub(TRes res) =
      _CopyWithStubImpl$Query$CalculateFare$getFares;

  TRes call({
    List<Fragment$ServiceCategory>? services,
    List<Query$CalculateFare$getFares$directions>? directions,
    String? currency,
    double? distance,
    double? duration,
    String? $__typename,
  });
  TRes services(
      Iterable<Fragment$ServiceCategory> Function(
              Iterable<
                  CopyWith$Fragment$ServiceCategory<Fragment$ServiceCategory>>)
          _fn);
  TRes directions(
      Iterable<Query$CalculateFare$getFares$directions> Function(
              Iterable<
                  CopyWith$Query$CalculateFare$getFares$directions<
                      Query$CalculateFare$getFares$directions>>)
          _fn);
}

class _CopyWithImpl$Query$CalculateFare$getFares<TRes>
    implements CopyWith$Query$CalculateFare$getFares<TRes> {
  _CopyWithImpl$Query$CalculateFare$getFares(
    this._instance,
    this._then,
  );

  final Query$CalculateFare$getFares _instance;

  final TRes Function(Query$CalculateFare$getFares) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? services = _undefined,
    Object? directions = _undefined,
    Object? currency = _undefined,
    Object? distance = _undefined,
    Object? duration = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalculateFare$getFares(
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Fragment$ServiceCategory>),
        directions: directions == _undefined || directions == null
            ? _instance.directions
            : (directions as List<Query$CalculateFare$getFares$directions>),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        distance: distance == _undefined || distance == null
            ? _instance.distance
            : (distance as double),
        duration: duration == _undefined || duration == null
            ? _instance.duration
            : (duration as double),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes services(
          Iterable<Fragment$ServiceCategory> Function(
                  Iterable<
                      CopyWith$Fragment$ServiceCategory<
                          Fragment$ServiceCategory>>)
              _fn) =>
      call(
          services: _fn(
              _instance.services.map((e) => CopyWith$Fragment$ServiceCategory(
                    e,
                    (i) => i,
                  ))).toList());

  TRes directions(
          Iterable<Query$CalculateFare$getFares$directions> Function(
                  Iterable<
                      CopyWith$Query$CalculateFare$getFares$directions<
                          Query$CalculateFare$getFares$directions>>)
              _fn) =>
      call(
          directions: _fn(_instance.directions
              .map((e) => CopyWith$Query$CalculateFare$getFares$directions(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$CalculateFare$getFares<TRes>
    implements CopyWith$Query$CalculateFare$getFares<TRes> {
  _CopyWithStubImpl$Query$CalculateFare$getFares(this._res);

  TRes _res;

  call({
    List<Fragment$ServiceCategory>? services,
    List<Query$CalculateFare$getFares$directions>? directions,
    String? currency,
    double? distance,
    double? duration,
    String? $__typename,
  }) =>
      _res;

  services(_fn) => _res;

  directions(_fn) => _res;
}

class Query$CalculateFare$getFares$directions implements Fragment$Point {
  Query$CalculateFare$getFares$directions({
    required this.lat,
    required this.lng,
    this.heading,
    this.$__typename = 'Point',
  });

  factory Query$CalculateFare$getFares$directions.fromJson(
      Map<String, dynamic> json) {
    final l$lat = json['lat'];
    final l$lng = json['lng'];
    final l$heading = json['heading'];
    final l$$__typename = json['__typename'];
    return Query$CalculateFare$getFares$directions(
      lat: (l$lat as num).toDouble(),
      lng: (l$lng as num).toDouble(),
      heading: (l$heading as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final double lat;

  final double lng;

  final int? heading;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$lat = lat;
    _resultData['lat'] = l$lat;
    final l$lng = lng;
    _resultData['lng'] = l$lng;
    final l$heading = heading;
    _resultData['heading'] = l$heading;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$lat,
      l$lng,
      l$heading,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$CalculateFare$getFares$directions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (l$heading != lOther$heading) {
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

extension UtilityExtension$Query$CalculateFare$getFares$directions
    on Query$CalculateFare$getFares$directions {
  CopyWith$Query$CalculateFare$getFares$directions<
          Query$CalculateFare$getFares$directions>
      get copyWith => CopyWith$Query$CalculateFare$getFares$directions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$CalculateFare$getFares$directions<TRes> {
  factory CopyWith$Query$CalculateFare$getFares$directions(
    Query$CalculateFare$getFares$directions instance,
    TRes Function(Query$CalculateFare$getFares$directions) then,
  ) = _CopyWithImpl$Query$CalculateFare$getFares$directions;

  factory CopyWith$Query$CalculateFare$getFares$directions.stub(TRes res) =
      _CopyWithStubImpl$Query$CalculateFare$getFares$directions;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$CalculateFare$getFares$directions<TRes>
    implements CopyWith$Query$CalculateFare$getFares$directions<TRes> {
  _CopyWithImpl$Query$CalculateFare$getFares$directions(
    this._instance,
    this._then,
  );

  final Query$CalculateFare$getFares$directions _instance;

  final TRes Function(Query$CalculateFare$getFares$directions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$CalculateFare$getFares$directions(
        lat: lat == _undefined || lat == null ? _instance.lat : (lat as double),
        lng: lng == _undefined || lng == null ? _instance.lng : (lng as double),
        heading: heading == _undefined ? _instance.heading : (heading as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$CalculateFare$getFares$directions<TRes>
    implements CopyWith$Query$CalculateFare$getFares$directions<TRes> {
  _CopyWithStubImpl$Query$CalculateFare$getFares$directions(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$GetCouponInfo {
  factory Variables$Query$GetCouponInfo({required String couponCode}) =>
      Variables$Query$GetCouponInfo._({
        r'couponCode': couponCode,
      });

  Variables$Query$GetCouponInfo._(this._$data);

  factory Variables$Query$GetCouponInfo.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$couponCode = data['couponCode'];
    result$data['couponCode'] = (l$couponCode as String);
    return Variables$Query$GetCouponInfo._(result$data);
  }

  Map<String, dynamic> _$data;

  String get couponCode => (_$data['couponCode'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$couponCode = couponCode;
    result$data['couponCode'] = l$couponCode;
    return result$data;
  }

  CopyWith$Variables$Query$GetCouponInfo<Variables$Query$GetCouponInfo>
      get copyWith => CopyWith$Variables$Query$GetCouponInfo(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$GetCouponInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (l$couponCode != lOther$couponCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$couponCode = couponCode;
    return Object.hashAll([l$couponCode]);
  }
}

abstract class CopyWith$Variables$Query$GetCouponInfo<TRes> {
  factory CopyWith$Variables$Query$GetCouponInfo(
    Variables$Query$GetCouponInfo instance,
    TRes Function(Variables$Query$GetCouponInfo) then,
  ) = _CopyWithImpl$Variables$Query$GetCouponInfo;

  factory CopyWith$Variables$Query$GetCouponInfo.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$GetCouponInfo;

  TRes call({String? couponCode});
}

class _CopyWithImpl$Variables$Query$GetCouponInfo<TRes>
    implements CopyWith$Variables$Query$GetCouponInfo<TRes> {
  _CopyWithImpl$Variables$Query$GetCouponInfo(
    this._instance,
    this._then,
  );

  final Variables$Query$GetCouponInfo _instance;

  final TRes Function(Variables$Query$GetCouponInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? couponCode = _undefined}) =>
      _then(Variables$Query$GetCouponInfo._({
        ..._instance._$data,
        if (couponCode != _undefined && couponCode != null)
          'couponCode': (couponCode as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$GetCouponInfo<TRes>
    implements CopyWith$Variables$Query$GetCouponInfo<TRes> {
  _CopyWithStubImpl$Variables$Query$GetCouponInfo(this._res);

  TRes _res;

  call({String? couponCode}) => _res;
}

class Query$GetCouponInfo {
  Query$GetCouponInfo({
    required this.couponInfo,
    this.$__typename = 'Query',
  });

  factory Query$GetCouponInfo.fromJson(Map<String, dynamic> json) {
    final l$couponInfo = json['couponInfo'];
    final l$$__typename = json['__typename'];
    return Query$GetCouponInfo(
      couponInfo: Query$GetCouponInfo$couponInfo.fromJson(
          (l$couponInfo as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$GetCouponInfo$couponInfo couponInfo;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$couponInfo = couponInfo;
    _resultData['couponInfo'] = l$couponInfo.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$couponInfo = couponInfo;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$couponInfo,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCouponInfo || runtimeType != other.runtimeType) {
      return false;
    }
    final l$couponInfo = couponInfo;
    final lOther$couponInfo = other.couponInfo;
    if (l$couponInfo != lOther$couponInfo) {
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

extension UtilityExtension$Query$GetCouponInfo on Query$GetCouponInfo {
  CopyWith$Query$GetCouponInfo<Query$GetCouponInfo> get copyWith =>
      CopyWith$Query$GetCouponInfo(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$GetCouponInfo<TRes> {
  factory CopyWith$Query$GetCouponInfo(
    Query$GetCouponInfo instance,
    TRes Function(Query$GetCouponInfo) then,
  ) = _CopyWithImpl$Query$GetCouponInfo;

  factory CopyWith$Query$GetCouponInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCouponInfo;

  TRes call({
    Query$GetCouponInfo$couponInfo? couponInfo,
    String? $__typename,
  });
  CopyWith$Query$GetCouponInfo$couponInfo<TRes> get couponInfo;
}

class _CopyWithImpl$Query$GetCouponInfo<TRes>
    implements CopyWith$Query$GetCouponInfo<TRes> {
  _CopyWithImpl$Query$GetCouponInfo(
    this._instance,
    this._then,
  );

  final Query$GetCouponInfo _instance;

  final TRes Function(Query$GetCouponInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? couponInfo = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCouponInfo(
        couponInfo: couponInfo == _undefined || couponInfo == null
            ? _instance.couponInfo
            : (couponInfo as Query$GetCouponInfo$couponInfo),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$GetCouponInfo$couponInfo<TRes> get couponInfo {
    final local$couponInfo = _instance.couponInfo;
    return CopyWith$Query$GetCouponInfo$couponInfo(
        local$couponInfo, (e) => call(couponInfo: e));
  }
}

class _CopyWithStubImpl$Query$GetCouponInfo<TRes>
    implements CopyWith$Query$GetCouponInfo<TRes> {
  _CopyWithStubImpl$Query$GetCouponInfo(this._res);

  TRes _res;

  call({
    Query$GetCouponInfo$couponInfo? couponInfo,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$GetCouponInfo$couponInfo<TRes> get couponInfo =>
      CopyWith$Query$GetCouponInfo$couponInfo.stub(_res);
}

const documentNodeQueryGetCouponInfo = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetCouponInfo'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'couponCode')),
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
        name: NameNode(value: 'couponInfo'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'code'),
            value: VariableNode(name: NameNode(value: 'couponCode')),
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
            name: NameNode(value: 'code'),
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
            name: NameNode(value: 'expireAt'),
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
Query$GetCouponInfo _parserFn$Query$GetCouponInfo(Map<String, dynamic> data) =>
    Query$GetCouponInfo.fromJson(data);
typedef OnQueryComplete$Query$GetCouponInfo = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$GetCouponInfo?,
);

class Options$Query$GetCouponInfo
    extends graphql.QueryOptions<Query$GetCouponInfo> {
  Options$Query$GetCouponInfo({
    String? operationName,
    required Variables$Query$GetCouponInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCouponInfo? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$GetCouponInfo? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
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
                    data == null ? null : _parserFn$Query$GetCouponInfo(data),
                  ),
          onError: onError,
          document: documentNodeQueryGetCouponInfo,
          parserFn: _parserFn$Query$GetCouponInfo,
        );

  final OnQueryComplete$Query$GetCouponInfo? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$GetCouponInfo
    extends graphql.WatchQueryOptions<Query$GetCouponInfo> {
  WatchOptions$Query$GetCouponInfo({
    String? operationName,
    required Variables$Query$GetCouponInfo variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$GetCouponInfo? typedOptimisticResult,
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
          document: documentNodeQueryGetCouponInfo,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$GetCouponInfo,
        );
}

class FetchMoreOptions$Query$GetCouponInfo extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$GetCouponInfo({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$GetCouponInfo variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryGetCouponInfo,
        );
}

extension ClientExtension$Query$GetCouponInfo on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$GetCouponInfo>> query$GetCouponInfo(
          Options$Query$GetCouponInfo options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$GetCouponInfo> watchQuery$GetCouponInfo(
          WatchOptions$Query$GetCouponInfo options) =>
      this.watchQuery(options);
  void writeQuery$GetCouponInfo({
    required Query$GetCouponInfo data,
    required Variables$Query$GetCouponInfo variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryGetCouponInfo),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$GetCouponInfo? readQuery$GetCouponInfo({
    required Variables$Query$GetCouponInfo variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryGetCouponInfo),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$GetCouponInfo.fromJson(result);
  }
}

class Query$GetCouponInfo$couponInfo {
  Query$GetCouponInfo$couponInfo({
    required this.id,
    required this.code,
    this.description,
    this.expireAt,
    this.$__typename = 'Coupon',
  });

  factory Query$GetCouponInfo$couponInfo.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$code = json['code'];
    final l$description = json['description'];
    final l$expireAt = json['expireAt'];
    final l$$__typename = json['__typename'];
    return Query$GetCouponInfo$couponInfo(
      id: (l$id as String),
      code: (l$code as String),
      description: (l$description as String?),
      expireAt: l$expireAt == null
          ? null
          : fromGraphQLTimestampToDartDateTime(l$expireAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String code;

  final String? description;

  final DateTime? expireAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$code = code;
    _resultData['code'] = l$code;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$expireAt = expireAt;
    _resultData['expireAt'] = l$expireAt == null
        ? null
        : fromDartDateTimeToGraphQLTimestamp(l$expireAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$code = code;
    final l$description = description;
    final l$expireAt = expireAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$code,
      l$description,
      l$expireAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$GetCouponInfo$couponInfo ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$expireAt = expireAt;
    final lOther$expireAt = other.expireAt;
    if (l$expireAt != lOther$expireAt) {
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

extension UtilityExtension$Query$GetCouponInfo$couponInfo
    on Query$GetCouponInfo$couponInfo {
  CopyWith$Query$GetCouponInfo$couponInfo<Query$GetCouponInfo$couponInfo>
      get copyWith => CopyWith$Query$GetCouponInfo$couponInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$GetCouponInfo$couponInfo<TRes> {
  factory CopyWith$Query$GetCouponInfo$couponInfo(
    Query$GetCouponInfo$couponInfo instance,
    TRes Function(Query$GetCouponInfo$couponInfo) then,
  ) = _CopyWithImpl$Query$GetCouponInfo$couponInfo;

  factory CopyWith$Query$GetCouponInfo$couponInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$GetCouponInfo$couponInfo;

  TRes call({
    String? id,
    String? code,
    String? description,
    DateTime? expireAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$GetCouponInfo$couponInfo<TRes>
    implements CopyWith$Query$GetCouponInfo$couponInfo<TRes> {
  _CopyWithImpl$Query$GetCouponInfo$couponInfo(
    this._instance,
    this._then,
  );

  final Query$GetCouponInfo$couponInfo _instance;

  final TRes Function(Query$GetCouponInfo$couponInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? code = _undefined,
    Object? description = _undefined,
    Object? expireAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$GetCouponInfo$couponInfo(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        code: code == _undefined || code == null
            ? _instance.code
            : (code as String),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        expireAt: expireAt == _undefined
            ? _instance.expireAt
            : (expireAt as DateTime?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$GetCouponInfo$couponInfo<TRes>
    implements CopyWith$Query$GetCouponInfo$couponInfo<TRes> {
  _CopyWithStubImpl$Query$GetCouponInfo$couponInfo(this._res);

  TRes _res;

  call({
    String? id,
    String? code,
    String? description,
    DateTime? expireAt,
    String? $__typename,
  }) =>
      _res;
}
