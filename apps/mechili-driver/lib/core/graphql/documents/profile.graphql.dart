import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/profile.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/rider.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../fragments/service.fragment.graphql.dart';
import '../fragments/wallet.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$ProfileAggregations {
  Query$ProfileAggregations({
    required this.driver,
    this.$__typename = 'Query',
  });

  factory Query$ProfileAggregations.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations(
      driver: Query$ProfileAggregations$driver.fromJson(
          (l$driver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$driver driver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$driver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations ||
        runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$ProfileAggregations
    on Query$ProfileAggregations {
  CopyWith$Query$ProfileAggregations<Query$ProfileAggregations> get copyWith =>
      CopyWith$Query$ProfileAggregations(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ProfileAggregations<TRes> {
  factory CopyWith$Query$ProfileAggregations(
    Query$ProfileAggregations instance,
    TRes Function(Query$ProfileAggregations) then,
  ) = _CopyWithImpl$Query$ProfileAggregations;

  factory CopyWith$Query$ProfileAggregations.stub(TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations;

  TRes call({
    Query$ProfileAggregations$driver? driver,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$driver<TRes> get driver;
}

class _CopyWithImpl$Query$ProfileAggregations<TRes>
    implements CopyWith$Query$ProfileAggregations<TRes> {
  _CopyWithImpl$Query$ProfileAggregations(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations _instance;

  final TRes Function(Query$ProfileAggregations) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations(
        driver: driver == _undefined || driver == null
            ? _instance.driver
            : (driver as Query$ProfileAggregations$driver),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$driver<TRes> get driver {
    final local$driver = _instance.driver;
    return CopyWith$Query$ProfileAggregations$driver(
        local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations<TRes>
    implements CopyWith$Query$ProfileAggregations<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations(this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$driver? driver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$driver<TRes> get driver =>
      CopyWith$Query$ProfileAggregations$driver.stub(_res);
}

const documentNodeQueryProfileAggregations = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ProfileAggregations'),
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
              value: '0',
              isBlock: false,
            ),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'historyOrdersAggregate'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'count'),
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
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: 'sum'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'distanceBest'),
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
            name: NameNode(value: 'rating'),
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
Query$ProfileAggregations _parserFn$Query$ProfileAggregations(
        Map<String, dynamic> data) =>
    Query$ProfileAggregations.fromJson(data);
typedef OnQueryComplete$Query$ProfileAggregations = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ProfileAggregations?,
);

class Options$Query$ProfileAggregations
    extends graphql.QueryOptions<Query$ProfileAggregations> {
  Options$Query$ProfileAggregations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProfileAggregations? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ProfileAggregations? onComplete,
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
                        : _parserFn$Query$ProfileAggregations(data),
                  ),
          onError: onError,
          document: documentNodeQueryProfileAggregations,
          parserFn: _parserFn$Query$ProfileAggregations,
        );

  final OnQueryComplete$Query$ProfileAggregations? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ProfileAggregations
    extends graphql.WatchQueryOptions<Query$ProfileAggregations> {
  WatchOptions$Query$ProfileAggregations({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ProfileAggregations? typedOptimisticResult,
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
          document: documentNodeQueryProfileAggregations,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ProfileAggregations,
        );
}

class FetchMoreOptions$Query$ProfileAggregations
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ProfileAggregations(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryProfileAggregations,
        );
}

extension ClientExtension$Query$ProfileAggregations on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ProfileAggregations>>
      query$ProfileAggregations(
              [Options$Query$ProfileAggregations? options]) async =>
          await this.query(options ?? Options$Query$ProfileAggregations());
  graphql.ObservableQuery<Query$ProfileAggregations>
      watchQuery$ProfileAggregations(
              [WatchOptions$Query$ProfileAggregations? options]) =>
          this.watchQuery(options ?? WatchOptions$Query$ProfileAggregations());
  void writeQuery$ProfileAggregations({
    required Query$ProfileAggregations data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQueryProfileAggregations)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ProfileAggregations? readQuery$ProfileAggregations(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryProfileAggregations)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ProfileAggregations.fromJson(result);
  }
}

class Query$ProfileAggregations$driver {
  Query$ProfileAggregations$driver({
    required this.historyOrdersAggregate,
    this.rating,
    this.$__typename = 'Driver',
  });

  factory Query$ProfileAggregations$driver.fromJson(Map<String, dynamic> json) {
    final l$historyOrdersAggregate = json['historyOrdersAggregate'];
    final l$rating = json['rating'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver(
      historyOrdersAggregate: (l$historyOrdersAggregate as List<dynamic>)
          .map((e) =>
              Query$ProfileAggregations$driver$historyOrdersAggregate.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      rating: (l$rating as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$ProfileAggregations$driver$historyOrdersAggregate>
      historyOrdersAggregate;

  final double? rating;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$historyOrdersAggregate = historyOrdersAggregate;
    _resultData['historyOrdersAggregate'] =
        l$historyOrdersAggregate.map((e) => e.toJson()).toList();
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$historyOrdersAggregate = historyOrdersAggregate;
    final l$rating = rating;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$historyOrdersAggregate.map((v) => v)),
      l$rating,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$driver ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$historyOrdersAggregate = historyOrdersAggregate;
    final lOther$historyOrdersAggregate = other.historyOrdersAggregate;
    if (l$historyOrdersAggregate.length !=
        lOther$historyOrdersAggregate.length) {
      return false;
    }
    for (int i = 0; i < l$historyOrdersAggregate.length; i++) {
      final l$historyOrdersAggregate$entry = l$historyOrdersAggregate[i];
      final lOther$historyOrdersAggregate$entry =
          lOther$historyOrdersAggregate[i];
      if (l$historyOrdersAggregate$entry !=
          lOther$historyOrdersAggregate$entry) {
        return false;
      }
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
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

extension UtilityExtension$Query$ProfileAggregations$driver
    on Query$ProfileAggregations$driver {
  CopyWith$Query$ProfileAggregations$driver<Query$ProfileAggregations$driver>
      get copyWith => CopyWith$Query$ProfileAggregations$driver(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver<TRes> {
  factory CopyWith$Query$ProfileAggregations$driver(
    Query$ProfileAggregations$driver instance,
    TRes Function(Query$ProfileAggregations$driver) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver;

  factory CopyWith$Query$ProfileAggregations$driver.stub(TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver;

  TRes call({
    List<Query$ProfileAggregations$driver$historyOrdersAggregate>?
        historyOrdersAggregate,
    double? rating,
    String? $__typename,
  });
  TRes historyOrdersAggregate(
      Iterable<Query$ProfileAggregations$driver$historyOrdersAggregate> Function(
              Iterable<
                  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
                      Query$ProfileAggregations$driver$historyOrdersAggregate>>)
          _fn);
}

class _CopyWithImpl$Query$ProfileAggregations$driver<TRes>
    implements CopyWith$Query$ProfileAggregations$driver<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver _instance;

  final TRes Function(Query$ProfileAggregations$driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? historyOrdersAggregate = _undefined,
    Object? rating = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver(
        historyOrdersAggregate: historyOrdersAggregate == _undefined ||
                historyOrdersAggregate == null
            ? _instance.historyOrdersAggregate
            : (historyOrdersAggregate as List<
                Query$ProfileAggregations$driver$historyOrdersAggregate>),
        rating: rating == _undefined ? _instance.rating : (rating as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes historyOrdersAggregate(
          Iterable<Query$ProfileAggregations$driver$historyOrdersAggregate> Function(
                  Iterable<
                      CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
                          Query$ProfileAggregations$driver$historyOrdersAggregate>>)
              _fn) =>
      call(
          historyOrdersAggregate: _fn(_instance.historyOrdersAggregate.map((e) =>
              CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver<TRes>
    implements CopyWith$Query$ProfileAggregations$driver<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver(this._res);

  TRes _res;

  call({
    List<Query$ProfileAggregations$driver$historyOrdersAggregate>?
        historyOrdersAggregate,
    double? rating,
    String? $__typename,
  }) =>
      _res;

  historyOrdersAggregate(_fn) => _res;
}

class Query$ProfileAggregations$driver$historyOrdersAggregate {
  Query$ProfileAggregations$driver$historyOrdersAggregate({
    this.count,
    this.sum,
    this.$__typename = 'DriverHistoryOrdersAggregateResponse',
  });

  factory Query$ProfileAggregations$driver$historyOrdersAggregate.fromJson(
      Map<String, dynamic> json) {
    final l$count = json['count'];
    final l$sum = json['sum'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver$historyOrdersAggregate(
      count: l$count == null
          ? null
          : Query$ProfileAggregations$driver$historyOrdersAggregate$count
              .fromJson((l$count as Map<String, dynamic>)),
      sum: l$sum == null
          ? null
          : Query$ProfileAggregations$driver$historyOrdersAggregate$sum
              .fromJson((l$sum as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ProfileAggregations$driver$historyOrdersAggregate$count? count;

  final Query$ProfileAggregations$driver$historyOrdersAggregate$sum? sum;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$count = count;
    _resultData['count'] = l$count?.toJson();
    final l$sum = sum;
    _resultData['sum'] = l$sum?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$count = count;
    final l$sum = sum;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$count,
      l$sum,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$driver$historyOrdersAggregate ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$count = count;
    final lOther$count = other.count;
    if (l$count != lOther$count) {
      return false;
    }
    final l$sum = sum;
    final lOther$sum = other.sum;
    if (l$sum != lOther$sum) {
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

extension UtilityExtension$Query$ProfileAggregations$driver$historyOrdersAggregate
    on Query$ProfileAggregations$driver$historyOrdersAggregate {
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
          Query$ProfileAggregations$driver$historyOrdersAggregate>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate(
    Query$ProfileAggregations$driver$historyOrdersAggregate instance,
    TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate) then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate;

  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate;

  TRes call({
    Query$ProfileAggregations$driver$historyOrdersAggregate$count? count,
    Query$ProfileAggregations$driver$historyOrdersAggregate$sum? sum,
    String? $__typename,
  });
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<TRes>
      get count;
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<TRes>
      get sum;
}

class _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver$historyOrdersAggregate _instance;

  final TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? count = _undefined,
    Object? sum = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver$historyOrdersAggregate(
        count: count == _undefined
            ? _instance.count
            : (count
                as Query$ProfileAggregations$driver$historyOrdersAggregate$count?),
        sum: sum == _undefined
            ? _instance.sum
            : (sum
                as Query$ProfileAggregations$driver$historyOrdersAggregate$sum?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<TRes>
      get count {
    final local$count = _instance.count;
    return local$count == null
        ? CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count
            .stub(_then(_instance))
        : CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
            local$count, (e) => call(count: e));
  }

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<TRes>
      get sum {
    final local$sum = _instance.sum;
    return local$sum == null
        ? CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum
            .stub(_then(_instance))
        : CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
            local$sum, (e) => call(sum: e));
  }
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate<TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate(
      this._res);

  TRes _res;

  call({
    Query$ProfileAggregations$driver$historyOrdersAggregate$count? count,
    Query$ProfileAggregations$driver$historyOrdersAggregate$sum? sum,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<TRes>
      get count =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count
              .stub(_res);

  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<TRes>
      get sum =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum
              .stub(_res);
}

class Query$ProfileAggregations$driver$historyOrdersAggregate$count {
  Query$ProfileAggregations$driver$historyOrdersAggregate$count({
    this.id,
    this.$__typename = 'DriverHistoryOrdersCountAggregate',
  });

  factory Query$ProfileAggregations$driver$historyOrdersAggregate$count.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver$historyOrdersAggregate$count(
      id: (l$id as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final int? id;

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
    if (other
            is! Query$ProfileAggregations$driver$historyOrdersAggregate$count ||
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

extension UtilityExtension$Query$ProfileAggregations$driver$historyOrdersAggregate$count
    on Query$ProfileAggregations$driver$historyOrdersAggregate$count {
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
          Query$ProfileAggregations$driver$historyOrdersAggregate$count>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
    Query$ProfileAggregations$driver$historyOrdersAggregate$count instance,
    TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate$count)
        then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count;

  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
            TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver$historyOrdersAggregate$count _instance;

  final TRes Function(
      Query$ProfileAggregations$driver$historyOrdersAggregate$count) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver$historyOrdersAggregate$count(
        id: id == _undefined ? _instance.id : (id as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$count<
            TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$count(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$ProfileAggregations$driver$historyOrdersAggregate$sum {
  Query$ProfileAggregations$driver$historyOrdersAggregate$sum({
    this.distanceBest,
    this.$__typename = 'DriverHistoryOrdersSumAggregate',
  });

  factory Query$ProfileAggregations$driver$historyOrdersAggregate$sum.fromJson(
      Map<String, dynamic> json) {
    final l$distanceBest = json['distanceBest'];
    final l$$__typename = json['__typename'];
    return Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
      distanceBest: (l$distanceBest as num?)?.toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? distanceBest;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$distanceBest = distanceBest;
    _resultData['distanceBest'] = l$distanceBest;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$distanceBest = distanceBest;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$distanceBest,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ProfileAggregations$driver$historyOrdersAggregate$sum ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (l$distanceBest != lOther$distanceBest) {
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

extension UtilityExtension$Query$ProfileAggregations$driver$historyOrdersAggregate$sum
    on Query$ProfileAggregations$driver$historyOrdersAggregate$sum {
  CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
          Query$ProfileAggregations$driver$historyOrdersAggregate$sum>
      get copyWith =>
          CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
    TRes> {
  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
    Query$ProfileAggregations$driver$historyOrdersAggregate$sum instance,
    TRes Function(Query$ProfileAggregations$driver$historyOrdersAggregate$sum)
        then,
  ) = _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum;

  factory CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum;

  TRes call({
    double? distanceBest,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
            TRes> {
  _CopyWithImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
    this._instance,
    this._then,
  );

  final Query$ProfileAggregations$driver$historyOrdersAggregate$sum _instance;

  final TRes Function(
      Query$ProfileAggregations$driver$historyOrdersAggregate$sum) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? distanceBest = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
        distanceBest: distanceBest == _undefined
            ? _instance.distanceBest
            : (distanceBest as double?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
        TRes>
    implements
        CopyWith$Query$ProfileAggregations$driver$historyOrdersAggregate$sum<
            TRes> {
  _CopyWithStubImpl$Query$ProfileAggregations$driver$historyOrdersAggregate$sum(
      this._res);

  TRes _res;

  call({
    double? distanceBest,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateProfileImage {
  factory Variables$Mutation$UpdateProfileImage({required String mediaId}) =>
      Variables$Mutation$UpdateProfileImage._({
        r'mediaId': mediaId,
      });

  Variables$Mutation$UpdateProfileImage._(this._$data);

  factory Variables$Mutation$UpdateProfileImage.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mediaId = data['mediaId'];
    result$data['mediaId'] = (l$mediaId as String);
    return Variables$Mutation$UpdateProfileImage._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mediaId => (_$data['mediaId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mediaId = mediaId;
    result$data['mediaId'] = l$mediaId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateProfileImage<
          Variables$Mutation$UpdateProfileImage>
      get copyWith => CopyWith$Variables$Mutation$UpdateProfileImage(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateProfileImage ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    return Object.hashAll([l$mediaId]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  factory CopyWith$Variables$Mutation$UpdateProfileImage(
    Variables$Mutation$UpdateProfileImage instance,
    TRes Function(Variables$Mutation$UpdateProfileImage) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateProfileImage;

  factory CopyWith$Variables$Mutation$UpdateProfileImage.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage;

  TRes call({String? mediaId});
}

class _CopyWithImpl$Variables$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateProfileImage(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateProfileImage _instance;

  final TRes Function(Variables$Mutation$UpdateProfileImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mediaId = _undefined}) =>
      _then(Variables$Mutation$UpdateProfileImage._({
        ..._instance._$data,
        if (mediaId != _undefined && mediaId != null)
          'mediaId': (mediaId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Variables$Mutation$UpdateProfileImage<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateProfileImage(this._res);

  TRes _res;

  call({String? mediaId}) => _res;
}

class Mutation$UpdateProfileImage {
  Mutation$UpdateProfileImage({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateProfileImage.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateProfileImage(
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
    if (other is! Mutation$UpdateProfileImage ||
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

extension UtilityExtension$Mutation$UpdateProfileImage
    on Mutation$UpdateProfileImage {
  CopyWith$Mutation$UpdateProfileImage<Mutation$UpdateProfileImage>
      get copyWith => CopyWith$Mutation$UpdateProfileImage(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateProfileImage<TRes> {
  factory CopyWith$Mutation$UpdateProfileImage(
    Mutation$UpdateProfileImage instance,
    TRes Function(Mutation$UpdateProfileImage) then,
  ) = _CopyWithImpl$Mutation$UpdateProfileImage;

  factory CopyWith$Mutation$UpdateProfileImage.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateProfileImage;

  TRes call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Mutation$UpdateProfileImage<TRes> {
  _CopyWithImpl$Mutation$UpdateProfileImage(
    this._instance,
    this._then,
  );

  final Mutation$UpdateProfileImage _instance;

  final TRes Function(Mutation$UpdateProfileImage) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateProfileImage(
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

class _CopyWithStubImpl$Mutation$UpdateProfileImage<TRes>
    implements CopyWith$Mutation$UpdateProfileImage<TRes> {
  _CopyWithStubImpl$Mutation$UpdateProfileImage(this._res);

  TRes _res;

  call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFull.stub(_res);
}

const documentNodeMutationUpdateProfileImage = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateProfileImage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'mediaId')),
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
                    name: NameNode(value: 'mediaId'),
                    value: VariableNode(name: NameNode(value: 'mediaId')),
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
Mutation$UpdateProfileImage _parserFn$Mutation$UpdateProfileImage(
        Map<String, dynamic> data) =>
    Mutation$UpdateProfileImage.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateProfileImage = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateProfileImage?,
);

class Options$Mutation$UpdateProfileImage
    extends graphql.MutationOptions<Mutation$UpdateProfileImage> {
  Options$Mutation$UpdateProfileImage({
    String? operationName,
    required Variables$Mutation$UpdateProfileImage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileImage? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateProfileImage? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateProfileImage>? update,
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
                        : _parserFn$Mutation$UpdateProfileImage(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateProfileImage,
          parserFn: _parserFn$Mutation$UpdateProfileImage,
        );

  final OnMutationCompleted$Mutation$UpdateProfileImage? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateProfileImage
    extends graphql.WatchQueryOptions<Mutation$UpdateProfileImage> {
  WatchOptions$Mutation$UpdateProfileImage({
    String? operationName,
    required Variables$Mutation$UpdateProfileImage variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateProfileImage? typedOptimisticResult,
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
          document: documentNodeMutationUpdateProfileImage,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateProfileImage,
        );
}

extension ClientExtension$Mutation$UpdateProfileImage on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateProfileImage>>
      mutate$UpdateProfileImage(
              Options$Mutation$UpdateProfileImage options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateProfileImage>
      watchMutation$UpdateProfileImage(
              WatchOptions$Mutation$UpdateProfileImage options) =>
          this.watchMutation(options);
}

class Query$Profile {
  Query$Profile({
    required this.driver,
    this.$__typename = 'Query',
  });

  factory Query$Profile.fromJson(Map<String, dynamic> json) {
    final l$driver = json['driver'];
    final l$$__typename = json['__typename'];
    return Query$Profile(
      driver: Fragment$ProfileFull.fromJson((l$driver as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$ProfileFull driver;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$driver = driver;
    _resultData['driver'] = l$driver.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$driver = driver;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$driver,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Profile || runtimeType != other.runtimeType) {
      return false;
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

extension UtilityExtension$Query$Profile on Query$Profile {
  CopyWith$Query$Profile<Query$Profile> get copyWith => CopyWith$Query$Profile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Profile<TRes> {
  factory CopyWith$Query$Profile(
    Query$Profile instance,
    TRes Function(Query$Profile) then,
  ) = _CopyWithImpl$Query$Profile;

  factory CopyWith$Query$Profile.stub(TRes res) =
      _CopyWithStubImpl$Query$Profile;

  TRes call({
    Fragment$ProfileFull? driver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFull<TRes> get driver;
}

class _CopyWithImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithImpl$Query$Profile(
    this._instance,
    this._then,
  );

  final Query$Profile _instance;

  final TRes Function(Query$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? driver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Profile(
        driver: driver == _undefined || driver == null
            ? _instance.driver
            : (driver as Fragment$ProfileFull),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFull<TRes> get driver {
    final local$driver = _instance.driver;
    return CopyWith$Fragment$ProfileFull(local$driver, (e) => call(driver: e));
  }
}

class _CopyWithStubImpl$Query$Profile<TRes>
    implements CopyWith$Query$Profile<TRes> {
  _CopyWithStubImpl$Query$Profile(this._res);

  TRes _res;

  call({
    Fragment$ProfileFull? driver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFull<TRes> get driver =>
      CopyWith$Fragment$ProfileFull.stub(_res);
}

const documentNodeQueryProfile = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Profile'),
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
Query$Profile _parserFn$Query$Profile(Map<String, dynamic> data) =>
    Query$Profile.fromJson(data);
typedef OnQueryComplete$Query$Profile = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Profile?,
);

class Options$Query$Profile extends graphql.QueryOptions<Query$Profile> {
  Options$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Profile? onComplete,
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
                    data == null ? null : _parserFn$Query$Profile(data),
                  ),
          onError: onError,
          document: documentNodeQueryProfile,
          parserFn: _parserFn$Query$Profile,
        );

  final OnQueryComplete$Query$Profile? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Profile
    extends graphql.WatchQueryOptions<Query$Profile> {
  WatchOptions$Query$Profile({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Profile? typedOptimisticResult,
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
          document: documentNodeQueryProfile,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Profile,
        );
}

class FetchMoreOptions$Query$Profile extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Profile({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryProfile,
        );
}

extension ClientExtension$Query$Profile on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Profile>> query$Profile(
          [Options$Query$Profile? options]) async =>
      await this.query(options ?? Options$Query$Profile());
  graphql.ObservableQuery<Query$Profile> watchQuery$Profile(
          [WatchOptions$Query$Profile? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Profile());
  void writeQuery$Profile({
    required Query$Profile data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(document: documentNodeQueryProfile)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Profile? readQuery$Profile({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryProfile)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Profile.fromJson(result);
  }
}

class Query$FeedbacksSummary {
  Query$FeedbacksSummary({
    required this.feedbacksSummary,
    this.$__typename = 'Query',
  });

  factory Query$FeedbacksSummary.fromJson(Map<String, dynamic> json) {
    final l$feedbacksSummary = json['feedbacksSummary'];
    final l$$__typename = json['__typename'];
    return Query$FeedbacksSummary(
      feedbacksSummary: Query$FeedbacksSummary$feedbacksSummary.fromJson(
          (l$feedbacksSummary as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$FeedbacksSummary$feedbacksSummary feedbacksSummary;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$feedbacksSummary = feedbacksSummary;
    _resultData['feedbacksSummary'] = l$feedbacksSummary.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$feedbacksSummary = feedbacksSummary;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$feedbacksSummary,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FeedbacksSummary || runtimeType != other.runtimeType) {
      return false;
    }
    final l$feedbacksSummary = feedbacksSummary;
    final lOther$feedbacksSummary = other.feedbacksSummary;
    if (l$feedbacksSummary != lOther$feedbacksSummary) {
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

extension UtilityExtension$Query$FeedbacksSummary on Query$FeedbacksSummary {
  CopyWith$Query$FeedbacksSummary<Query$FeedbacksSummary> get copyWith =>
      CopyWith$Query$FeedbacksSummary(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$FeedbacksSummary<TRes> {
  factory CopyWith$Query$FeedbacksSummary(
    Query$FeedbacksSummary instance,
    TRes Function(Query$FeedbacksSummary) then,
  ) = _CopyWithImpl$Query$FeedbacksSummary;

  factory CopyWith$Query$FeedbacksSummary.stub(TRes res) =
      _CopyWithStubImpl$Query$FeedbacksSummary;

  TRes call({
    Query$FeedbacksSummary$feedbacksSummary? feedbacksSummary,
    String? $__typename,
  });
  CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> get feedbacksSummary;
}

class _CopyWithImpl$Query$FeedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary<TRes> {
  _CopyWithImpl$Query$FeedbacksSummary(
    this._instance,
    this._then,
  );

  final Query$FeedbacksSummary _instance;

  final TRes Function(Query$FeedbacksSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? feedbacksSummary = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FeedbacksSummary(
        feedbacksSummary:
            feedbacksSummary == _undefined || feedbacksSummary == null
                ? _instance.feedbacksSummary
                : (feedbacksSummary as Query$FeedbacksSummary$feedbacksSummary),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> get feedbacksSummary {
    final local$feedbacksSummary = _instance.feedbacksSummary;
    return CopyWith$Query$FeedbacksSummary$feedbacksSummary(
        local$feedbacksSummary, (e) => call(feedbacksSummary: e));
  }
}

class _CopyWithStubImpl$Query$FeedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary<TRes> {
  _CopyWithStubImpl$Query$FeedbacksSummary(this._res);

  TRes _res;

  call({
    Query$FeedbacksSummary$feedbacksSummary? feedbacksSummary,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> get feedbacksSummary =>
      CopyWith$Query$FeedbacksSummary$feedbacksSummary.stub(_res);
}

const documentNodeQueryFeedbacksSummary = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'FeedbacksSummary'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'feedbacksSummary'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'averageRating'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'goodPoints'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'badPoints'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'goodReviews'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'serviceName'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'rating'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'review'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'goodPoints'),
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
]);
Query$FeedbacksSummary _parserFn$Query$FeedbacksSummary(
        Map<String, dynamic> data) =>
    Query$FeedbacksSummary.fromJson(data);
typedef OnQueryComplete$Query$FeedbacksSummary = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$FeedbacksSummary?,
);

class Options$Query$FeedbacksSummary
    extends graphql.QueryOptions<Query$FeedbacksSummary> {
  Options$Query$FeedbacksSummary({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FeedbacksSummary? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$FeedbacksSummary? onComplete,
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
                        : _parserFn$Query$FeedbacksSummary(data),
                  ),
          onError: onError,
          document: documentNodeQueryFeedbacksSummary,
          parserFn: _parserFn$Query$FeedbacksSummary,
        );

  final OnQueryComplete$Query$FeedbacksSummary? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$FeedbacksSummary
    extends graphql.WatchQueryOptions<Query$FeedbacksSummary> {
  WatchOptions$Query$FeedbacksSummary({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$FeedbacksSummary? typedOptimisticResult,
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
          document: documentNodeQueryFeedbacksSummary,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$FeedbacksSummary,
        );
}

class FetchMoreOptions$Query$FeedbacksSummary extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$FeedbacksSummary(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryFeedbacksSummary,
        );
}

extension ClientExtension$Query$FeedbacksSummary on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$FeedbacksSummary>> query$FeedbacksSummary(
          [Options$Query$FeedbacksSummary? options]) async =>
      await this.query(options ?? Options$Query$FeedbacksSummary());
  graphql.ObservableQuery<Query$FeedbacksSummary> watchQuery$FeedbacksSummary(
          [WatchOptions$Query$FeedbacksSummary? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$FeedbacksSummary());
  void writeQuery$FeedbacksSummary({
    required Query$FeedbacksSummary data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryFeedbacksSummary)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$FeedbacksSummary? readQuery$FeedbacksSummary({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryFeedbacksSummary)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$FeedbacksSummary.fromJson(result);
  }
}

class Query$FeedbacksSummary$feedbacksSummary {
  Query$FeedbacksSummary$feedbacksSummary({
    this.averageRating,
    required this.goodPoints,
    required this.badPoints,
    required this.goodReviews,
    this.$__typename = 'FeedbacksSummary',
  });

  factory Query$FeedbacksSummary$feedbacksSummary.fromJson(
      Map<String, dynamic> json) {
    final l$averageRating = json['averageRating'];
    final l$goodPoints = json['goodPoints'];
    final l$badPoints = json['badPoints'];
    final l$goodReviews = json['goodReviews'];
    final l$$__typename = json['__typename'];
    return Query$FeedbacksSummary$feedbacksSummary(
      averageRating: (l$averageRating as num?)?.toDouble(),
      goodPoints:
          (l$goodPoints as List<dynamic>).map((e) => (e as String)).toList(),
      badPoints:
          (l$badPoints as List<dynamic>).map((e) => (e as String)).toList(),
      goodReviews: (l$goodReviews as List<dynamic>)
          .map((e) =>
              Query$FeedbacksSummary$feedbacksSummary$goodReviews.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final double? averageRating;

  final List<String> goodPoints;

  final List<String> badPoints;

  final List<Query$FeedbacksSummary$feedbacksSummary$goodReviews> goodReviews;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$averageRating = averageRating;
    _resultData['averageRating'] = l$averageRating;
    final l$goodPoints = goodPoints;
    _resultData['goodPoints'] = l$goodPoints.map((e) => e).toList();
    final l$badPoints = badPoints;
    _resultData['badPoints'] = l$badPoints.map((e) => e).toList();
    final l$goodReviews = goodReviews;
    _resultData['goodReviews'] = l$goodReviews.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$averageRating = averageRating;
    final l$goodPoints = goodPoints;
    final l$badPoints = badPoints;
    final l$goodReviews = goodReviews;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$averageRating,
      Object.hashAll(l$goodPoints.map((v) => v)),
      Object.hashAll(l$badPoints.map((v) => v)),
      Object.hashAll(l$goodReviews.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FeedbacksSummary$feedbacksSummary ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$averageRating = averageRating;
    final lOther$averageRating = other.averageRating;
    if (l$averageRating != lOther$averageRating) {
      return false;
    }
    final l$goodPoints = goodPoints;
    final lOther$goodPoints = other.goodPoints;
    if (l$goodPoints.length != lOther$goodPoints.length) {
      return false;
    }
    for (int i = 0; i < l$goodPoints.length; i++) {
      final l$goodPoints$entry = l$goodPoints[i];
      final lOther$goodPoints$entry = lOther$goodPoints[i];
      if (l$goodPoints$entry != lOther$goodPoints$entry) {
        return false;
      }
    }
    final l$badPoints = badPoints;
    final lOther$badPoints = other.badPoints;
    if (l$badPoints.length != lOther$badPoints.length) {
      return false;
    }
    for (int i = 0; i < l$badPoints.length; i++) {
      final l$badPoints$entry = l$badPoints[i];
      final lOther$badPoints$entry = lOther$badPoints[i];
      if (l$badPoints$entry != lOther$badPoints$entry) {
        return false;
      }
    }
    final l$goodReviews = goodReviews;
    final lOther$goodReviews = other.goodReviews;
    if (l$goodReviews.length != lOther$goodReviews.length) {
      return false;
    }
    for (int i = 0; i < l$goodReviews.length; i++) {
      final l$goodReviews$entry = l$goodReviews[i];
      final lOther$goodReviews$entry = lOther$goodReviews[i];
      if (l$goodReviews$entry != lOther$goodReviews$entry) {
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

extension UtilityExtension$Query$FeedbacksSummary$feedbacksSummary
    on Query$FeedbacksSummary$feedbacksSummary {
  CopyWith$Query$FeedbacksSummary$feedbacksSummary<
          Query$FeedbacksSummary$feedbacksSummary>
      get copyWith => CopyWith$Query$FeedbacksSummary$feedbacksSummary(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> {
  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary(
    Query$FeedbacksSummary$feedbacksSummary instance,
    TRes Function(Query$FeedbacksSummary$feedbacksSummary) then,
  ) = _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary;

  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary.stub(TRes res) =
      _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary;

  TRes call({
    double? averageRating,
    List<String>? goodPoints,
    List<String>? badPoints,
    List<Query$FeedbacksSummary$feedbacksSummary$goodReviews>? goodReviews,
    String? $__typename,
  });
  TRes goodReviews(
      Iterable<Query$FeedbacksSummary$feedbacksSummary$goodReviews> Function(
              Iterable<
                  CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
                      Query$FeedbacksSummary$feedbacksSummary$goodReviews>>)
          _fn);
}

class _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> {
  _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary(
    this._instance,
    this._then,
  );

  final Query$FeedbacksSummary$feedbacksSummary _instance;

  final TRes Function(Query$FeedbacksSummary$feedbacksSummary) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? averageRating = _undefined,
    Object? goodPoints = _undefined,
    Object? badPoints = _undefined,
    Object? goodReviews = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FeedbacksSummary$feedbacksSummary(
        averageRating: averageRating == _undefined
            ? _instance.averageRating
            : (averageRating as double?),
        goodPoints: goodPoints == _undefined || goodPoints == null
            ? _instance.goodPoints
            : (goodPoints as List<String>),
        badPoints: badPoints == _undefined || badPoints == null
            ? _instance.badPoints
            : (badPoints as List<String>),
        goodReviews: goodReviews == _undefined || goodReviews == null
            ? _instance.goodReviews
            : (goodReviews
                as List<Query$FeedbacksSummary$feedbacksSummary$goodReviews>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes goodReviews(
          Iterable<Query$FeedbacksSummary$feedbacksSummary$goodReviews> Function(
                  Iterable<
                      CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
                          Query$FeedbacksSummary$feedbacksSummary$goodReviews>>)
              _fn) =>
      call(
          goodReviews: _fn(_instance.goodReviews.map((e) =>
              CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary<TRes>
    implements CopyWith$Query$FeedbacksSummary$feedbacksSummary<TRes> {
  _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary(this._res);

  TRes _res;

  call({
    double? averageRating,
    List<String>? goodPoints,
    List<String>? badPoints,
    List<Query$FeedbacksSummary$feedbacksSummary$goodReviews>? goodReviews,
    String? $__typename,
  }) =>
      _res;

  goodReviews(_fn) => _res;
}

class Query$FeedbacksSummary$feedbacksSummary$goodReviews {
  Query$FeedbacksSummary$feedbacksSummary$goodReviews({
    required this.serviceName,
    required this.rating,
    required this.review,
    required this.goodPoints,
    this.$__typename = 'Review',
  });

  factory Query$FeedbacksSummary$feedbacksSummary$goodReviews.fromJson(
      Map<String, dynamic> json) {
    final l$serviceName = json['serviceName'];
    final l$rating = json['rating'];
    final l$review = json['review'];
    final l$goodPoints = json['goodPoints'];
    final l$$__typename = json['__typename'];
    return Query$FeedbacksSummary$feedbacksSummary$goodReviews(
      serviceName: (l$serviceName as String),
      rating: (l$rating as num).toDouble(),
      review: (l$review as String),
      goodPoints:
          (l$goodPoints as List<dynamic>).map((e) => (e as String)).toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String serviceName;

  final double rating;

  final String review;

  final List<String> goodPoints;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$serviceName = serviceName;
    _resultData['serviceName'] = l$serviceName;
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$review = review;
    _resultData['review'] = l$review;
    final l$goodPoints = goodPoints;
    _resultData['goodPoints'] = l$goodPoints.map((e) => e).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$serviceName = serviceName;
    final l$rating = rating;
    final l$review = review;
    final l$goodPoints = goodPoints;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$serviceName,
      l$rating,
      l$review,
      Object.hashAll(l$goodPoints.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$FeedbacksSummary$feedbacksSummary$goodReviews ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceName = serviceName;
    final lOther$serviceName = other.serviceName;
    if (l$serviceName != lOther$serviceName) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$review = review;
    final lOther$review = other.review;
    if (l$review != lOther$review) {
      return false;
    }
    final l$goodPoints = goodPoints;
    final lOther$goodPoints = other.goodPoints;
    if (l$goodPoints.length != lOther$goodPoints.length) {
      return false;
    }
    for (int i = 0; i < l$goodPoints.length; i++) {
      final l$goodPoints$entry = l$goodPoints[i];
      final lOther$goodPoints$entry = lOther$goodPoints[i];
      if (l$goodPoints$entry != lOther$goodPoints$entry) {
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

extension UtilityExtension$Query$FeedbacksSummary$feedbacksSummary$goodReviews
    on Query$FeedbacksSummary$feedbacksSummary$goodReviews {
  CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
          Query$FeedbacksSummary$feedbacksSummary$goodReviews>
      get copyWith =>
          CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
    TRes> {
  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
    Query$FeedbacksSummary$feedbacksSummary$goodReviews instance,
    TRes Function(Query$FeedbacksSummary$feedbacksSummary$goodReviews) then,
  ) = _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews;

  factory CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews.stub(
          TRes res) =
      _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews;

  TRes call({
    String? serviceName,
    double? rating,
    String? review,
    List<String>? goodPoints,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews<TRes>
    implements
        CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<TRes> {
  _CopyWithImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
    this._instance,
    this._then,
  );

  final Query$FeedbacksSummary$feedbacksSummary$goodReviews _instance;

  final TRes Function(Query$FeedbacksSummary$feedbacksSummary$goodReviews)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceName = _undefined,
    Object? rating = _undefined,
    Object? review = _undefined,
    Object? goodPoints = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$FeedbacksSummary$feedbacksSummary$goodReviews(
        serviceName: serviceName == _undefined || serviceName == null
            ? _instance.serviceName
            : (serviceName as String),
        rating: rating == _undefined || rating == null
            ? _instance.rating
            : (rating as double),
        review: review == _undefined || review == null
            ? _instance.review
            : (review as String),
        goodPoints: goodPoints == _undefined || goodPoints == null
            ? _instance.goodPoints
            : (goodPoints as List<String>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews<
        TRes>
    implements
        CopyWith$Query$FeedbacksSummary$feedbacksSummary$goodReviews<TRes> {
  _CopyWithStubImpl$Query$FeedbacksSummary$feedbacksSummary$goodReviews(
      this._res);

  TRes _res;

  call({
    String? serviceName,
    double? rating,
    String? review,
    List<String>? goodPoints,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Mutation$UpdateFcmToken {
  factory Variables$Mutation$UpdateFcmToken({required String token}) =>
      Variables$Mutation$UpdateFcmToken._({
        r'token': token,
      });

  Variables$Mutation$UpdateFcmToken._(this._$data);

  factory Variables$Mutation$UpdateFcmToken.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$token = data['token'];
    result$data['token'] = (l$token as String);
    return Variables$Mutation$UpdateFcmToken._(result$data);
  }

  Map<String, dynamic> _$data;

  String get token => (_$data['token'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$token = token;
    result$data['token'] = l$token;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateFcmToken<Variables$Mutation$UpdateFcmToken>
      get copyWith => CopyWith$Variables$Mutation$UpdateFcmToken(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateFcmToken ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (l$token != lOther$token) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$token = token;
    return Object.hashAll([l$token]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  factory CopyWith$Variables$Mutation$UpdateFcmToken(
    Variables$Mutation$UpdateFcmToken instance,
    TRes Function(Variables$Mutation$UpdateFcmToken) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateFcmToken;

  factory CopyWith$Variables$Mutation$UpdateFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken;

  TRes call({String? token});
}

class _CopyWithImpl$Variables$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateFcmToken(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateFcmToken _instance;

  final TRes Function(Variables$Mutation$UpdateFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? token = _undefined}) =>
      _then(Variables$Mutation$UpdateFcmToken._({
        ..._instance._$data,
        if (token != _undefined && token != null) 'token': (token as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Variables$Mutation$UpdateFcmToken<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateFcmToken(this._res);

  TRes _res;

  call({String? token}) => _res;
}

class Mutation$UpdateFcmToken {
  Mutation$UpdateFcmToken({
    required this.updateOneDriver,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateFcmToken.fromJson(Map<String, dynamic> json) {
    final l$updateOneDriver = json['updateOneDriver'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateFcmToken(
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
    if (other is! Mutation$UpdateFcmToken || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$UpdateFcmToken on Mutation$UpdateFcmToken {
  CopyWith$Mutation$UpdateFcmToken<Mutation$UpdateFcmToken> get copyWith =>
      CopyWith$Mutation$UpdateFcmToken(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$UpdateFcmToken<TRes> {
  factory CopyWith$Mutation$UpdateFcmToken(
    Mutation$UpdateFcmToken instance,
    TRes Function(Mutation$UpdateFcmToken) then,
  ) = _CopyWithImpl$Mutation$UpdateFcmToken;

  factory CopyWith$Mutation$UpdateFcmToken.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateFcmToken;

  TRes call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver;
}

class _CopyWithImpl$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Mutation$UpdateFcmToken<TRes> {
  _CopyWithImpl$Mutation$UpdateFcmToken(
    this._instance,
    this._then,
  );

  final Mutation$UpdateFcmToken _instance;

  final TRes Function(Mutation$UpdateFcmToken) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneDriver = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateFcmToken(
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

class _CopyWithStubImpl$Mutation$UpdateFcmToken<TRes>
    implements CopyWith$Mutation$UpdateFcmToken<TRes> {
  _CopyWithStubImpl$Mutation$UpdateFcmToken(this._res);

  TRes _res;

  call({
    Fragment$ProfileFull? updateOneDriver,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFull<TRes> get updateOneDriver =>
      CopyWith$Fragment$ProfileFull.stub(_res);
}

const documentNodeMutationUpdateFcmToken = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateFcmToken'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'token')),
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
                    value: VariableNode(name: NameNode(value: 'token')),
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
Mutation$UpdateFcmToken _parserFn$Mutation$UpdateFcmToken(
        Map<String, dynamic> data) =>
    Mutation$UpdateFcmToken.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateFcmToken = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdateFcmToken?,
);

class Options$Mutation$UpdateFcmToken
    extends graphql.MutationOptions<Mutation$UpdateFcmToken> {
  Options$Mutation$UpdateFcmToken({
    String? operationName,
    required Variables$Mutation$UpdateFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFcmToken? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateFcmToken? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateFcmToken>? update,
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
                        : _parserFn$Mutation$UpdateFcmToken(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateFcmToken,
          parserFn: _parserFn$Mutation$UpdateFcmToken,
        );

  final OnMutationCompleted$Mutation$UpdateFcmToken? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateFcmToken
    extends graphql.WatchQueryOptions<Mutation$UpdateFcmToken> {
  WatchOptions$Mutation$UpdateFcmToken({
    String? operationName,
    required Variables$Mutation$UpdateFcmToken variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateFcmToken? typedOptimisticResult,
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
          document: documentNodeMutationUpdateFcmToken,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateFcmToken,
        );
}

extension ClientExtension$Mutation$UpdateFcmToken on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateFcmToken>> mutate$UpdateFcmToken(
          Options$Mutation$UpdateFcmToken options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateFcmToken> watchMutation$UpdateFcmToken(
          WatchOptions$Mutation$UpdateFcmToken options) =>
      this.watchMutation(options);
}

class Mutation$DeleteAccount {
  Mutation$DeleteAccount({
    required this.deleteUser,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeleteAccount.fromJson(Map<String, dynamic> json) {
    final l$deleteUser = json['deleteUser'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccount(
      deleteUser: Mutation$DeleteAccount$deleteUser.fromJson(
          (l$deleteUser as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeleteAccount$deleteUser deleteUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteUser = deleteUser;
    _resultData['deleteUser'] = l$deleteUser.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteUser = deleteUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeleteAccount || runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteUser = deleteUser;
    final lOther$deleteUser = other.deleteUser;
    if (l$deleteUser != lOther$deleteUser) {
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

extension UtilityExtension$Mutation$DeleteAccount on Mutation$DeleteAccount {
  CopyWith$Mutation$DeleteAccount<Mutation$DeleteAccount> get copyWith =>
      CopyWith$Mutation$DeleteAccount(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$DeleteAccount<TRes> {
  factory CopyWith$Mutation$DeleteAccount(
    Mutation$DeleteAccount instance,
    TRes Function(Mutation$DeleteAccount) then,
  ) = _CopyWithImpl$Mutation$DeleteAccount;

  factory CopyWith$Mutation$DeleteAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccount;

  TRes call({
    Mutation$DeleteAccount$deleteUser? deleteUser,
    String? $__typename,
  });
  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser;
}

class _CopyWithImpl$Mutation$DeleteAccount<TRes>
    implements CopyWith$Mutation$DeleteAccount<TRes> {
  _CopyWithImpl$Mutation$DeleteAccount(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccount _instance;

  final TRes Function(Mutation$DeleteAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAccount(
        deleteUser: deleteUser == _undefined || deleteUser == null
            ? _instance.deleteUser
            : (deleteUser as Mutation$DeleteAccount$deleteUser),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser {
    final local$deleteUser = _instance.deleteUser;
    return CopyWith$Mutation$DeleteAccount$deleteUser(
        local$deleteUser, (e) => call(deleteUser: e));
  }
}

class _CopyWithStubImpl$Mutation$DeleteAccount<TRes>
    implements CopyWith$Mutation$DeleteAccount<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccount(this._res);

  TRes _res;

  call({
    Mutation$DeleteAccount$deleteUser? deleteUser,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeleteAccount$deleteUser<TRes> get deleteUser =>
      CopyWith$Mutation$DeleteAccount$deleteUser.stub(_res);
}

const documentNodeMutationDeleteAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteAccount'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteUser'),
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
Mutation$DeleteAccount _parserFn$Mutation$DeleteAccount(
        Map<String, dynamic> data) =>
    Mutation$DeleteAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$DeleteAccount = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$DeleteAccount?,
);

class Options$Mutation$DeleteAccount
    extends graphql.MutationOptions<Mutation$DeleteAccount> {
  Options$Mutation$DeleteAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeleteAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeleteAccount>? update,
    graphql.OnError? onError,
  })  : onCompletedWithParsed = onCompleted,
        super(
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
                        : _parserFn$Mutation$DeleteAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeleteAccount,
          parserFn: _parserFn$Mutation$DeleteAccount,
        );

  final OnMutationCompleted$Mutation$DeleteAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeleteAccount
    extends graphql.WatchQueryOptions<Mutation$DeleteAccount> {
  WatchOptions$Mutation$DeleteAccount({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeleteAccount? typedOptimisticResult,
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
          document: documentNodeMutationDeleteAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeleteAccount,
        );
}

extension ClientExtension$Mutation$DeleteAccount on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeleteAccount>> mutate$DeleteAccount(
          [Options$Mutation$DeleteAccount? options]) async =>
      await this.mutate(options ?? Options$Mutation$DeleteAccount());
  graphql.ObservableQuery<Mutation$DeleteAccount> watchMutation$DeleteAccount(
          [WatchOptions$Mutation$DeleteAccount? options]) =>
      this.watchMutation(options ?? WatchOptions$Mutation$DeleteAccount());
}

class Mutation$DeleteAccount$deleteUser {
  Mutation$DeleteAccount$deleteUser({
    required this.id,
    this.$__typename = 'Driver',
  });

  factory Mutation$DeleteAccount$deleteUser.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeleteAccount$deleteUser(
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
    if (other is! Mutation$DeleteAccount$deleteUser ||
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

extension UtilityExtension$Mutation$DeleteAccount$deleteUser
    on Mutation$DeleteAccount$deleteUser {
  CopyWith$Mutation$DeleteAccount$deleteUser<Mutation$DeleteAccount$deleteUser>
      get copyWith => CopyWith$Mutation$DeleteAccount$deleteUser(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  factory CopyWith$Mutation$DeleteAccount$deleteUser(
    Mutation$DeleteAccount$deleteUser instance,
    TRes Function(Mutation$DeleteAccount$deleteUser) then,
  ) = _CopyWithImpl$Mutation$DeleteAccount$deleteUser;

  factory CopyWith$Mutation$DeleteAccount$deleteUser.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeleteAccount$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  _CopyWithImpl$Mutation$DeleteAccount$deleteUser(
    this._instance,
    this._then,
  );

  final Mutation$DeleteAccount$deleteUser _instance;

  final TRes Function(Mutation$DeleteAccount$deleteUser) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeleteAccount$deleteUser(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser<TRes>
    implements CopyWith$Mutation$DeleteAccount$deleteUser<TRes> {
  _CopyWithStubImpl$Mutation$DeleteAccount$deleteUser(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
