import '../fragments/favorite_driver.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/past_order.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$RideHistory {
  Query$RideHistory({
    required this.orders,
    this.$__typename = 'Query',
  });

  factory Query$RideHistory.fromJson(Map<String, dynamic> json) {
    final l$orders = json['orders'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory(
      orders:
          Query$RideHistory$orders.fromJson((l$orders as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$RideHistory$orders orders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$orders = orders;
    _resultData['orders'] = l$orders.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$orders = orders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$orders,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$RideHistory || runtimeType != other.runtimeType) {
      return false;
    }
    final l$orders = orders;
    final lOther$orders = other.orders;
    if (l$orders != lOther$orders) {
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

extension UtilityExtension$Query$RideHistory on Query$RideHistory {
  CopyWith$Query$RideHistory<Query$RideHistory> get copyWith =>
      CopyWith$Query$RideHistory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RideHistory<TRes> {
  factory CopyWith$Query$RideHistory(
    Query$RideHistory instance,
    TRes Function(Query$RideHistory) then,
  ) = _CopyWithImpl$Query$RideHistory;

  factory CopyWith$Query$RideHistory.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory;

  TRes call({
    Query$RideHistory$orders? orders,
    String? $__typename,
  });
  CopyWith$Query$RideHistory$orders<TRes> get orders;
}

class _CopyWithImpl$Query$RideHistory<TRes>
    implements CopyWith$Query$RideHistory<TRes> {
  _CopyWithImpl$Query$RideHistory(
    this._instance,
    this._then,
  );

  final Query$RideHistory _instance;

  final TRes Function(Query$RideHistory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory(
        orders: orders == _undefined || orders == null
            ? _instance.orders
            : (orders as Query$RideHistory$orders),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$RideHistory$orders<TRes> get orders {
    final local$orders = _instance.orders;
    return CopyWith$Query$RideHistory$orders(
        local$orders, (e) => call(orders: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory<TRes>
    implements CopyWith$Query$RideHistory<TRes> {
  _CopyWithStubImpl$Query$RideHistory(this._res);

  TRes _res;

  call({
    Query$RideHistory$orders? orders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$RideHistory$orders<TRes> get orders =>
      CopyWith$Query$RideHistory$orders.stub(_res);
}

const documentNodeQueryRideHistory = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'RideHistory'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'orders'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'sorting'),
            value: ListValueNode(values: [
              ObjectValueNode(fields: [
                ObjectFieldNode(
                  name: NameNode(value: 'field'),
                  value: EnumValueNode(name: NameNode(value: 'id')),
                ),
                ObjectFieldNode(
                  name: NameNode(value: 'direction'),
                  value: EnumValueNode(name: NameNode(value: 'DESC')),
                ),
              ])
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'paging'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'first'),
                value: IntValueNode(value: '20'),
              )
            ]),
          ),
        ],
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
                  FragmentSpreadNode(
                    name: NameNode(value: 'PastOrder'),
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
  fragmentDefinitionPastOrder,
  fragmentDefinitionPoint,
  fragmentDefinitionSavedPaymentMethod,
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
  fragmentDefinitionRideOption,
  fragmentDefinitionFavoriteDriver,
]);
Query$RideHistory _parserFn$Query$RideHistory(Map<String, dynamic> data) =>
    Query$RideHistory.fromJson(data);
typedef OnQueryComplete$Query$RideHistory = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$RideHistory?,
);

class Options$Query$RideHistory
    extends graphql.QueryOptions<Query$RideHistory> {
  Options$Query$RideHistory({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RideHistory? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$RideHistory? onComplete,
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
                    data == null ? null : _parserFn$Query$RideHistory(data),
                  ),
          onError: onError,
          document: documentNodeQueryRideHistory,
          parserFn: _parserFn$Query$RideHistory,
        );

  final OnQueryComplete$Query$RideHistory? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$RideHistory
    extends graphql.WatchQueryOptions<Query$RideHistory> {
  WatchOptions$Query$RideHistory({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$RideHistory? typedOptimisticResult,
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
          document: documentNodeQueryRideHistory,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$RideHistory,
        );
}

class FetchMoreOptions$Query$RideHistory extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$RideHistory({required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryRideHistory,
        );
}

extension ClientExtension$Query$RideHistory on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$RideHistory>> query$RideHistory(
          [Options$Query$RideHistory? options]) async =>
      await this.query(options ?? Options$Query$RideHistory());
  graphql.ObservableQuery<Query$RideHistory> watchQuery$RideHistory(
          [WatchOptions$Query$RideHistory? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$RideHistory());
  void writeQuery$RideHistory({
    required Query$RideHistory data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryRideHistory)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$RideHistory? readQuery$RideHistory({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryRideHistory)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$RideHistory.fromJson(result);
  }
}

class Query$RideHistory$orders {
  Query$RideHistory$orders({
    required this.edges,
    this.$__typename = 'OrderConnection',
  });

  factory Query$RideHistory$orders.fromJson(Map<String, dynamic> json) {
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders(
      edges: (l$edges as List<dynamic>)
          .map((e) => Query$RideHistory$orders$edges.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$RideHistory$orders$edges> edges;

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
    if (other is! Query$RideHistory$orders ||
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

extension UtilityExtension$Query$RideHistory$orders
    on Query$RideHistory$orders {
  CopyWith$Query$RideHistory$orders<Query$RideHistory$orders> get copyWith =>
      CopyWith$Query$RideHistory$orders(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$RideHistory$orders<TRes> {
  factory CopyWith$Query$RideHistory$orders(
    Query$RideHistory$orders instance,
    TRes Function(Query$RideHistory$orders) then,
  ) = _CopyWithImpl$Query$RideHistory$orders;

  factory CopyWith$Query$RideHistory$orders.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders;

  TRes call({
    List<Query$RideHistory$orders$edges>? edges,
    String? $__typename,
  });
  TRes edges(
      Iterable<Query$RideHistory$orders$edges> Function(
              Iterable<
                  CopyWith$Query$RideHistory$orders$edges<
                      Query$RideHistory$orders$edges>>)
          _fn);
}

class _CopyWithImpl$Query$RideHistory$orders<TRes>
    implements CopyWith$Query$RideHistory$orders<TRes> {
  _CopyWithImpl$Query$RideHistory$orders(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders _instance;

  final TRes Function(Query$RideHistory$orders) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders(
        edges: edges == _undefined || edges == null
            ? _instance.edges
            : (edges as List<Query$RideHistory$orders$edges>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes edges(
          Iterable<Query$RideHistory$orders$edges> Function(
                  Iterable<
                      CopyWith$Query$RideHistory$orders$edges<
                          Query$RideHistory$orders$edges>>)
              _fn) =>
      call(
          edges: _fn(_instance.edges
              .map((e) => CopyWith$Query$RideHistory$orders$edges(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$RideHistory$orders<TRes>
    implements CopyWith$Query$RideHistory$orders<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders(this._res);

  TRes _res;

  call({
    List<Query$RideHistory$orders$edges>? edges,
    String? $__typename,
  }) =>
      _res;

  edges(_fn) => _res;
}

class Query$RideHistory$orders$edges {
  Query$RideHistory$orders$edges({
    required this.node,
    this.$__typename = 'OrderEdge',
  });

  factory Query$RideHistory$orders$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$RideHistory$orders$edges(
      node: Fragment$PastOrder.fromJson((l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PastOrder node;

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
    if (other is! Query$RideHistory$orders$edges ||
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

extension UtilityExtension$Query$RideHistory$orders$edges
    on Query$RideHistory$orders$edges {
  CopyWith$Query$RideHistory$orders$edges<Query$RideHistory$orders$edges>
      get copyWith => CopyWith$Query$RideHistory$orders$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$RideHistory$orders$edges<TRes> {
  factory CopyWith$Query$RideHistory$orders$edges(
    Query$RideHistory$orders$edges instance,
    TRes Function(Query$RideHistory$orders$edges) then,
  ) = _CopyWithImpl$Query$RideHistory$orders$edges;

  factory CopyWith$Query$RideHistory$orders$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$RideHistory$orders$edges;

  TRes call({
    Fragment$PastOrder? node,
    String? $__typename,
  });
  CopyWith$Fragment$PastOrder<TRes> get node;
}

class _CopyWithImpl$Query$RideHistory$orders$edges<TRes>
    implements CopyWith$Query$RideHistory$orders$edges<TRes> {
  _CopyWithImpl$Query$RideHistory$orders$edges(
    this._instance,
    this._then,
  );

  final Query$RideHistory$orders$edges _instance;

  final TRes Function(Query$RideHistory$orders$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$RideHistory$orders$edges(
        node: node == _undefined || node == null
            ? _instance.node
            : (node as Fragment$PastOrder),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PastOrder<TRes> get node {
    final local$node = _instance.node;
    return CopyWith$Fragment$PastOrder(local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$RideHistory$orders$edges<TRes>
    implements CopyWith$Query$RideHistory$orders$edges<TRes> {
  _CopyWithStubImpl$Query$RideHistory$orders$edges(this._res);

  TRes _res;

  call({
    Fragment$PastOrder? node,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PastOrder<TRes> get node =>
      CopyWith$Fragment$PastOrder.stub(_res);
}

class Variables$Mutation$SubmitIssue {
  factory Variables$Mutation$SubmitIssue(
          {required Input$CreateOneComplaintInput input}) =>
      Variables$Mutation$SubmitIssue._({
        r'input': input,
      });

  Variables$Mutation$SubmitIssue._(this._$data);

  factory Variables$Mutation$SubmitIssue.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] = Input$CreateOneComplaintInput.fromJson(
        (l$input as Map<String, dynamic>));
    return Variables$Mutation$SubmitIssue._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateOneComplaintInput get input =>
      (_$data['input'] as Input$CreateOneComplaintInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$SubmitIssue<Variables$Mutation$SubmitIssue>
      get copyWith => CopyWith$Variables$Mutation$SubmitIssue(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$SubmitIssue ||
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

abstract class CopyWith$Variables$Mutation$SubmitIssue<TRes> {
  factory CopyWith$Variables$Mutation$SubmitIssue(
    Variables$Mutation$SubmitIssue instance,
    TRes Function(Variables$Mutation$SubmitIssue) then,
  ) = _CopyWithImpl$Variables$Mutation$SubmitIssue;

  factory CopyWith$Variables$Mutation$SubmitIssue.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$SubmitIssue;

  TRes call({Input$CreateOneComplaintInput? input});
}

class _CopyWithImpl$Variables$Mutation$SubmitIssue<TRes>
    implements CopyWith$Variables$Mutation$SubmitIssue<TRes> {
  _CopyWithImpl$Variables$Mutation$SubmitIssue(
    this._instance,
    this._then,
  );

  final Variables$Mutation$SubmitIssue _instance;

  final TRes Function(Variables$Mutation$SubmitIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$SubmitIssue._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$CreateOneComplaintInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$SubmitIssue<TRes>
    implements CopyWith$Variables$Mutation$SubmitIssue<TRes> {
  _CopyWithStubImpl$Variables$Mutation$SubmitIssue(this._res);

  TRes _res;

  call({Input$CreateOneComplaintInput? input}) => _res;
}

class Mutation$SubmitIssue {
  Mutation$SubmitIssue({
    required this.createOneComplaint,
    this.$__typename = 'Mutation',
  });

  factory Mutation$SubmitIssue.fromJson(Map<String, dynamic> json) {
    final l$createOneComplaint = json['createOneComplaint'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitIssue(
      createOneComplaint: Mutation$SubmitIssue$createOneComplaint.fromJson(
          (l$createOneComplaint as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$SubmitIssue$createOneComplaint createOneComplaint;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createOneComplaint = createOneComplaint;
    _resultData['createOneComplaint'] = l$createOneComplaint.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createOneComplaint = createOneComplaint;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createOneComplaint,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$SubmitIssue || runtimeType != other.runtimeType) {
      return false;
    }
    final l$createOneComplaint = createOneComplaint;
    final lOther$createOneComplaint = other.createOneComplaint;
    if (l$createOneComplaint != lOther$createOneComplaint) {
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

extension UtilityExtension$Mutation$SubmitIssue on Mutation$SubmitIssue {
  CopyWith$Mutation$SubmitIssue<Mutation$SubmitIssue> get copyWith =>
      CopyWith$Mutation$SubmitIssue(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$SubmitIssue<TRes> {
  factory CopyWith$Mutation$SubmitIssue(
    Mutation$SubmitIssue instance,
    TRes Function(Mutation$SubmitIssue) then,
  ) = _CopyWithImpl$Mutation$SubmitIssue;

  factory CopyWith$Mutation$SubmitIssue.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitIssue;

  TRes call({
    Mutation$SubmitIssue$createOneComplaint? createOneComplaint,
    String? $__typename,
  });
  CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> get createOneComplaint;
}

class _CopyWithImpl$Mutation$SubmitIssue<TRes>
    implements CopyWith$Mutation$SubmitIssue<TRes> {
  _CopyWithImpl$Mutation$SubmitIssue(
    this._instance,
    this._then,
  );

  final Mutation$SubmitIssue _instance;

  final TRes Function(Mutation$SubmitIssue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createOneComplaint = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitIssue(
        createOneComplaint: createOneComplaint == _undefined ||
                createOneComplaint == null
            ? _instance.createOneComplaint
            : (createOneComplaint as Mutation$SubmitIssue$createOneComplaint),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes>
      get createOneComplaint {
    final local$createOneComplaint = _instance.createOneComplaint;
    return CopyWith$Mutation$SubmitIssue$createOneComplaint(
        local$createOneComplaint, (e) => call(createOneComplaint: e));
  }
}

class _CopyWithStubImpl$Mutation$SubmitIssue<TRes>
    implements CopyWith$Mutation$SubmitIssue<TRes> {
  _CopyWithStubImpl$Mutation$SubmitIssue(this._res);

  TRes _res;

  call({
    Mutation$SubmitIssue$createOneComplaint? createOneComplaint,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes>
      get createOneComplaint =>
          CopyWith$Mutation$SubmitIssue$createOneComplaint.stub(_res);
}

const documentNodeMutationSubmitIssue = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'SubmitIssue'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'CreateOneComplaintInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createOneComplaint'),
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
Mutation$SubmitIssue _parserFn$Mutation$SubmitIssue(
        Map<String, dynamic> data) =>
    Mutation$SubmitIssue.fromJson(data);
typedef OnMutationCompleted$Mutation$SubmitIssue = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$SubmitIssue?,
);

class Options$Mutation$SubmitIssue
    extends graphql.MutationOptions<Mutation$SubmitIssue> {
  Options$Mutation$SubmitIssue({
    String? operationName,
    required Variables$Mutation$SubmitIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitIssue? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$SubmitIssue? onCompleted,
    graphql.OnMutationUpdate<Mutation$SubmitIssue>? update,
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
                    data == null ? null : _parserFn$Mutation$SubmitIssue(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationSubmitIssue,
          parserFn: _parserFn$Mutation$SubmitIssue,
        );

  final OnMutationCompleted$Mutation$SubmitIssue? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$SubmitIssue
    extends graphql.WatchQueryOptions<Mutation$SubmitIssue> {
  WatchOptions$Mutation$SubmitIssue({
    String? operationName,
    required Variables$Mutation$SubmitIssue variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$SubmitIssue? typedOptimisticResult,
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
          document: documentNodeMutationSubmitIssue,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$SubmitIssue,
        );
}

extension ClientExtension$Mutation$SubmitIssue on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$SubmitIssue>> mutate$SubmitIssue(
          Options$Mutation$SubmitIssue options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$SubmitIssue> watchMutation$SubmitIssue(
          WatchOptions$Mutation$SubmitIssue options) =>
      this.watchMutation(options);
}

class Mutation$SubmitIssue$createOneComplaint {
  Mutation$SubmitIssue$createOneComplaint({
    required this.id,
    this.$__typename = 'Complaint',
  });

  factory Mutation$SubmitIssue$createOneComplaint.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$SubmitIssue$createOneComplaint(
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
    if (other is! Mutation$SubmitIssue$createOneComplaint ||
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

extension UtilityExtension$Mutation$SubmitIssue$createOneComplaint
    on Mutation$SubmitIssue$createOneComplaint {
  CopyWith$Mutation$SubmitIssue$createOneComplaint<
          Mutation$SubmitIssue$createOneComplaint>
      get copyWith => CopyWith$Mutation$SubmitIssue$createOneComplaint(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> {
  factory CopyWith$Mutation$SubmitIssue$createOneComplaint(
    Mutation$SubmitIssue$createOneComplaint instance,
    TRes Function(Mutation$SubmitIssue$createOneComplaint) then,
  ) = _CopyWithImpl$Mutation$SubmitIssue$createOneComplaint;

  factory CopyWith$Mutation$SubmitIssue$createOneComplaint.stub(TRes res) =
      _CopyWithStubImpl$Mutation$SubmitIssue$createOneComplaint;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$SubmitIssue$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> {
  _CopyWithImpl$Mutation$SubmitIssue$createOneComplaint(
    this._instance,
    this._then,
  );

  final Mutation$SubmitIssue$createOneComplaint _instance;

  final TRes Function(Mutation$SubmitIssue$createOneComplaint) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$SubmitIssue$createOneComplaint(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$SubmitIssue$createOneComplaint<TRes>
    implements CopyWith$Mutation$SubmitIssue$createOneComplaint<TRes> {
  _CopyWithStubImpl$Mutation$SubmitIssue$createOneComplaint(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
