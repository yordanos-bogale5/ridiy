import '../fragments/intent_result.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payout_account.fragment.graphql.dart';
import '../fragments/payout_method.fragment.graphql.dart';
import '../schema.gql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$PayoutAccounts {
  Query$PayoutAccounts({
    required this.payoutAccounts,
    this.$__typename = 'Query',
  });

  factory Query$PayoutAccounts.fromJson(Map<String, dynamic> json) {
    final l$payoutAccounts = json['payoutAccounts'];
    final l$$__typename = json['__typename'];
    return Query$PayoutAccounts(
      payoutAccounts: (l$payoutAccounts as List<dynamic>)
          .map((e) =>
              Fragment$PayoutAccount.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PayoutAccount> payoutAccounts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payoutAccounts = payoutAccounts;
    _resultData['payoutAccounts'] =
        l$payoutAccounts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payoutAccounts = payoutAccounts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payoutAccounts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PayoutAccounts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$payoutAccounts = payoutAccounts;
    final lOther$payoutAccounts = other.payoutAccounts;
    if (l$payoutAccounts.length != lOther$payoutAccounts.length) {
      return false;
    }
    for (int i = 0; i < l$payoutAccounts.length; i++) {
      final l$payoutAccounts$entry = l$payoutAccounts[i];
      final lOther$payoutAccounts$entry = lOther$payoutAccounts[i];
      if (l$payoutAccounts$entry != lOther$payoutAccounts$entry) {
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

extension UtilityExtension$Query$PayoutAccounts on Query$PayoutAccounts {
  CopyWith$Query$PayoutAccounts<Query$PayoutAccounts> get copyWith =>
      CopyWith$Query$PayoutAccounts(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PayoutAccounts<TRes> {
  factory CopyWith$Query$PayoutAccounts(
    Query$PayoutAccounts instance,
    TRes Function(Query$PayoutAccounts) then,
  ) = _CopyWithImpl$Query$PayoutAccounts;

  factory CopyWith$Query$PayoutAccounts.stub(TRes res) =
      _CopyWithStubImpl$Query$PayoutAccounts;

  TRes call({
    List<Fragment$PayoutAccount>? payoutAccounts,
    String? $__typename,
  });
  TRes payoutAccounts(
      Iterable<Fragment$PayoutAccount> Function(
              Iterable<CopyWith$Fragment$PayoutAccount<Fragment$PayoutAccount>>)
          _fn);
}

class _CopyWithImpl$Query$PayoutAccounts<TRes>
    implements CopyWith$Query$PayoutAccounts<TRes> {
  _CopyWithImpl$Query$PayoutAccounts(
    this._instance,
    this._then,
  );

  final Query$PayoutAccounts _instance;

  final TRes Function(Query$PayoutAccounts) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payoutAccounts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PayoutAccounts(
        payoutAccounts: payoutAccounts == _undefined || payoutAccounts == null
            ? _instance.payoutAccounts
            : (payoutAccounts as List<Fragment$PayoutAccount>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes payoutAccounts(
          Iterable<Fragment$PayoutAccount> Function(
                  Iterable<
                      CopyWith$Fragment$PayoutAccount<Fragment$PayoutAccount>>)
              _fn) =>
      call(
          payoutAccounts: _fn(_instance.payoutAccounts
              .map((e) => CopyWith$Fragment$PayoutAccount(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PayoutAccounts<TRes>
    implements CopyWith$Query$PayoutAccounts<TRes> {
  _CopyWithStubImpl$Query$PayoutAccounts(this._res);

  TRes _res;

  call({
    List<Fragment$PayoutAccount>? payoutAccounts,
    String? $__typename,
  }) =>
      _res;

  payoutAccounts(_fn) => _res;
}

const documentNodeQueryPayoutAccounts = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PayoutAccounts'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'payoutAccounts'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PayoutAccount'),
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
  fragmentDefinitionPayoutAccount,
]);
Query$PayoutAccounts _parserFn$Query$PayoutAccounts(
        Map<String, dynamic> data) =>
    Query$PayoutAccounts.fromJson(data);
typedef OnQueryComplete$Query$PayoutAccounts = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PayoutAccounts?,
);

class Options$Query$PayoutAccounts
    extends graphql.QueryOptions<Query$PayoutAccounts> {
  Options$Query$PayoutAccounts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayoutAccounts? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PayoutAccounts? onComplete,
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
                    data == null ? null : _parserFn$Query$PayoutAccounts(data),
                  ),
          onError: onError,
          document: documentNodeQueryPayoutAccounts,
          parserFn: _parserFn$Query$PayoutAccounts,
        );

  final OnQueryComplete$Query$PayoutAccounts? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PayoutAccounts
    extends graphql.WatchQueryOptions<Query$PayoutAccounts> {
  WatchOptions$Query$PayoutAccounts({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayoutAccounts? typedOptimisticResult,
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
          document: documentNodeQueryPayoutAccounts,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PayoutAccounts,
        );
}

class FetchMoreOptions$Query$PayoutAccounts extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PayoutAccounts(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryPayoutAccounts,
        );
}

extension ClientExtension$Query$PayoutAccounts on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PayoutAccounts>> query$PayoutAccounts(
          [Options$Query$PayoutAccounts? options]) async =>
      await this.query(options ?? Options$Query$PayoutAccounts());
  graphql.ObservableQuery<Query$PayoutAccounts> watchQuery$PayoutAccounts(
          [WatchOptions$Query$PayoutAccounts? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$PayoutAccounts());
  void writeQuery$PayoutAccounts({
    required Query$PayoutAccounts data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryPayoutAccounts)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PayoutAccounts? readQuery$PayoutAccounts({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryPayoutAccounts)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PayoutAccounts.fromJson(result);
  }
}

class Query$SupportedPayoutMethods {
  Query$SupportedPayoutMethods({
    required this.payoutMethods,
    this.$__typename = 'Query',
  });

  factory Query$SupportedPayoutMethods.fromJson(Map<String, dynamic> json) {
    final l$payoutMethods = json['payoutMethods'];
    final l$$__typename = json['__typename'];
    return Query$SupportedPayoutMethods(
      payoutMethods: (l$payoutMethods as List<dynamic>)
          .map((e) =>
              Fragment$PayoutMethod.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$PayoutMethod> payoutMethods;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$payoutMethods = payoutMethods;
    _resultData['payoutMethods'] =
        l$payoutMethods.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$payoutMethods = payoutMethods;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$payoutMethods.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$SupportedPayoutMethods ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payoutMethods = payoutMethods;
    final lOther$payoutMethods = other.payoutMethods;
    if (l$payoutMethods.length != lOther$payoutMethods.length) {
      return false;
    }
    for (int i = 0; i < l$payoutMethods.length; i++) {
      final l$payoutMethods$entry = l$payoutMethods[i];
      final lOther$payoutMethods$entry = lOther$payoutMethods[i];
      if (l$payoutMethods$entry != lOther$payoutMethods$entry) {
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

extension UtilityExtension$Query$SupportedPayoutMethods
    on Query$SupportedPayoutMethods {
  CopyWith$Query$SupportedPayoutMethods<Query$SupportedPayoutMethods>
      get copyWith => CopyWith$Query$SupportedPayoutMethods(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$SupportedPayoutMethods<TRes> {
  factory CopyWith$Query$SupportedPayoutMethods(
    Query$SupportedPayoutMethods instance,
    TRes Function(Query$SupportedPayoutMethods) then,
  ) = _CopyWithImpl$Query$SupportedPayoutMethods;

  factory CopyWith$Query$SupportedPayoutMethods.stub(TRes res) =
      _CopyWithStubImpl$Query$SupportedPayoutMethods;

  TRes call({
    List<Fragment$PayoutMethod>? payoutMethods,
    String? $__typename,
  });
  TRes payoutMethods(
      Iterable<Fragment$PayoutMethod> Function(
              Iterable<CopyWith$Fragment$PayoutMethod<Fragment$PayoutMethod>>)
          _fn);
}

class _CopyWithImpl$Query$SupportedPayoutMethods<TRes>
    implements CopyWith$Query$SupportedPayoutMethods<TRes> {
  _CopyWithImpl$Query$SupportedPayoutMethods(
    this._instance,
    this._then,
  );

  final Query$SupportedPayoutMethods _instance;

  final TRes Function(Query$SupportedPayoutMethods) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? payoutMethods = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$SupportedPayoutMethods(
        payoutMethods: payoutMethods == _undefined || payoutMethods == null
            ? _instance.payoutMethods
            : (payoutMethods as List<Fragment$PayoutMethod>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes payoutMethods(
          Iterable<Fragment$PayoutMethod> Function(
                  Iterable<
                      CopyWith$Fragment$PayoutMethod<Fragment$PayoutMethod>>)
              _fn) =>
      call(
          payoutMethods: _fn(
              _instance.payoutMethods.map((e) => CopyWith$Fragment$PayoutMethod(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$SupportedPayoutMethods<TRes>
    implements CopyWith$Query$SupportedPayoutMethods<TRes> {
  _CopyWithStubImpl$Query$SupportedPayoutMethods(this._res);

  TRes _res;

  call({
    List<Fragment$PayoutMethod>? payoutMethods,
    String? $__typename,
  }) =>
      _res;

  payoutMethods(_fn) => _res;
}

const documentNodeQuerySupportedPayoutMethods = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'SupportedPayoutMethods'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'payoutMethods'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PayoutMethod'),
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
  fragmentDefinitionPayoutMethod,
  fragmentDefinitionMedia,
]);
Query$SupportedPayoutMethods _parserFn$Query$SupportedPayoutMethods(
        Map<String, dynamic> data) =>
    Query$SupportedPayoutMethods.fromJson(data);
typedef OnQueryComplete$Query$SupportedPayoutMethods = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$SupportedPayoutMethods?,
);

class Options$Query$SupportedPayoutMethods
    extends graphql.QueryOptions<Query$SupportedPayoutMethods> {
  Options$Query$SupportedPayoutMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupportedPayoutMethods? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$SupportedPayoutMethods? onComplete,
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
                        : _parserFn$Query$SupportedPayoutMethods(data),
                  ),
          onError: onError,
          document: documentNodeQuerySupportedPayoutMethods,
          parserFn: _parserFn$Query$SupportedPayoutMethods,
        );

  final OnQueryComplete$Query$SupportedPayoutMethods? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$SupportedPayoutMethods
    extends graphql.WatchQueryOptions<Query$SupportedPayoutMethods> {
  WatchOptions$Query$SupportedPayoutMethods({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$SupportedPayoutMethods? typedOptimisticResult,
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
          document: documentNodeQuerySupportedPayoutMethods,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$SupportedPayoutMethods,
        );
}

class FetchMoreOptions$Query$SupportedPayoutMethods
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$SupportedPayoutMethods(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQuerySupportedPayoutMethods,
        );
}

extension ClientExtension$Query$SupportedPayoutMethods
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$SupportedPayoutMethods>>
      query$SupportedPayoutMethods(
              [Options$Query$SupportedPayoutMethods? options]) async =>
          await this.query(options ?? Options$Query$SupportedPayoutMethods());
  graphql.ObservableQuery<
      Query$SupportedPayoutMethods> watchQuery$SupportedPayoutMethods(
          [WatchOptions$Query$SupportedPayoutMethods? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$SupportedPayoutMethods());
  void writeQuery$SupportedPayoutMethods({
    required Query$SupportedPayoutMethods data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation: graphql.Operation(
                document: documentNodeQuerySupportedPayoutMethods)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$SupportedPayoutMethods? readQuery$SupportedPayoutMethods(
      {bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQuerySupportedPayoutMethods)),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Query$SupportedPayoutMethods.fromJson(result);
  }
}

class Variables$Mutation$UpdatePayoutMethodDefaultStatus {
  factory Variables$Mutation$UpdatePayoutMethodDefaultStatus({
    required String id,
    required bool isDefault,
  }) =>
      Variables$Mutation$UpdatePayoutMethodDefaultStatus._({
        r'id': id,
        r'isDefault': isDefault,
      });

  Variables$Mutation$UpdatePayoutMethodDefaultStatus._(this._$data);

  factory Variables$Mutation$UpdatePayoutMethodDefaultStatus.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    return Variables$Mutation$UpdatePayoutMethodDefaultStatus._(result$data);
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

  CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus<
          Variables$Mutation$UpdatePayoutMethodDefaultStatus>
      get copyWith =>
          CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdatePayoutMethodDefaultStatus ||
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

abstract class CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus<
    TRes> {
  factory CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus(
    Variables$Mutation$UpdatePayoutMethodDefaultStatus instance,
    TRes Function(Variables$Mutation$UpdatePayoutMethodDefaultStatus) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdatePayoutMethodDefaultStatus;

  factory CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus.stub(
          TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdatePayoutMethodDefaultStatus;

  TRes call({
    String? id,
    bool? isDefault,
  });
}

class _CopyWithImpl$Variables$Mutation$UpdatePayoutMethodDefaultStatus<TRes>
    implements
        CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdatePayoutMethodDefaultStatus(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdatePayoutMethodDefaultStatus _instance;

  final TRes Function(Variables$Mutation$UpdatePayoutMethodDefaultStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isDefault = _undefined,
  }) =>
      _then(Variables$Mutation$UpdatePayoutMethodDefaultStatus._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdatePayoutMethodDefaultStatus<TRes>
    implements
        CopyWith$Variables$Mutation$UpdatePayoutMethodDefaultStatus<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdatePayoutMethodDefaultStatus(
      this._res);

  TRes _res;

  call({
    String? id,
    bool? isDefault,
  }) =>
      _res;
}

class Mutation$UpdatePayoutMethodDefaultStatus {
  Mutation$UpdatePayoutMethodDefaultStatus({
    required this.updatePayoutMethod,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdatePayoutMethodDefaultStatus.fromJson(
      Map<String, dynamic> json) {
    final l$updatePayoutMethod = json['updatePayoutMethod'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdatePayoutMethodDefaultStatus(
      updatePayoutMethod: Fragment$PayoutAccount.fromJson(
          (l$updatePayoutMethod as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PayoutAccount updatePayoutMethod;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updatePayoutMethod = updatePayoutMethod;
    _resultData['updatePayoutMethod'] = l$updatePayoutMethod.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updatePayoutMethod = updatePayoutMethod;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updatePayoutMethod,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdatePayoutMethodDefaultStatus ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updatePayoutMethod = updatePayoutMethod;
    final lOther$updatePayoutMethod = other.updatePayoutMethod;
    if (l$updatePayoutMethod != lOther$updatePayoutMethod) {
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

extension UtilityExtension$Mutation$UpdatePayoutMethodDefaultStatus
    on Mutation$UpdatePayoutMethodDefaultStatus {
  CopyWith$Mutation$UpdatePayoutMethodDefaultStatus<
          Mutation$UpdatePayoutMethodDefaultStatus>
      get copyWith => CopyWith$Mutation$UpdatePayoutMethodDefaultStatus(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdatePayoutMethodDefaultStatus<TRes> {
  factory CopyWith$Mutation$UpdatePayoutMethodDefaultStatus(
    Mutation$UpdatePayoutMethodDefaultStatus instance,
    TRes Function(Mutation$UpdatePayoutMethodDefaultStatus) then,
  ) = _CopyWithImpl$Mutation$UpdatePayoutMethodDefaultStatus;

  factory CopyWith$Mutation$UpdatePayoutMethodDefaultStatus.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdatePayoutMethodDefaultStatus;

  TRes call({
    Fragment$PayoutAccount? updatePayoutMethod,
    String? $__typename,
  });
  CopyWith$Fragment$PayoutAccount<TRes> get updatePayoutMethod;
}

class _CopyWithImpl$Mutation$UpdatePayoutMethodDefaultStatus<TRes>
    implements CopyWith$Mutation$UpdatePayoutMethodDefaultStatus<TRes> {
  _CopyWithImpl$Mutation$UpdatePayoutMethodDefaultStatus(
    this._instance,
    this._then,
  );

  final Mutation$UpdatePayoutMethodDefaultStatus _instance;

  final TRes Function(Mutation$UpdatePayoutMethodDefaultStatus) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updatePayoutMethod = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdatePayoutMethodDefaultStatus(
        updatePayoutMethod:
            updatePayoutMethod == _undefined || updatePayoutMethod == null
                ? _instance.updatePayoutMethod
                : (updatePayoutMethod as Fragment$PayoutAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PayoutAccount<TRes> get updatePayoutMethod {
    final local$updatePayoutMethod = _instance.updatePayoutMethod;
    return CopyWith$Fragment$PayoutAccount(
        local$updatePayoutMethod, (e) => call(updatePayoutMethod: e));
  }
}

class _CopyWithStubImpl$Mutation$UpdatePayoutMethodDefaultStatus<TRes>
    implements CopyWith$Mutation$UpdatePayoutMethodDefaultStatus<TRes> {
  _CopyWithStubImpl$Mutation$UpdatePayoutMethodDefaultStatus(this._res);

  TRes _res;

  call({
    Fragment$PayoutAccount? updatePayoutMethod,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PayoutAccount<TRes> get updatePayoutMethod =>
      CopyWith$Fragment$PayoutAccount.stub(_res);
}

const documentNodeMutationUpdatePayoutMethodDefaultStatus =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdatePayoutMethodDefaultStatus'),
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
        name: NameNode(value: 'updatePayoutMethod'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'isDefault'),
                value: VariableNode(name: NameNode(value: 'isDefault')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PayoutAccount'),
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
  fragmentDefinitionPayoutAccount,
]);
Mutation$UpdatePayoutMethodDefaultStatus
    _parserFn$Mutation$UpdatePayoutMethodDefaultStatus(
            Map<String, dynamic> data) =>
        Mutation$UpdatePayoutMethodDefaultStatus.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdatePayoutMethodDefaultStatus
    = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$UpdatePayoutMethodDefaultStatus?,
);

class Options$Mutation$UpdatePayoutMethodDefaultStatus
    extends graphql.MutationOptions<Mutation$UpdatePayoutMethodDefaultStatus> {
  Options$Mutation$UpdatePayoutMethodDefaultStatus({
    String? operationName,
    required Variables$Mutation$UpdatePayoutMethodDefaultStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePayoutMethodDefaultStatus? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdatePayoutMethodDefaultStatus? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdatePayoutMethodDefaultStatus>? update,
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
                        : _parserFn$Mutation$UpdatePayoutMethodDefaultStatus(
                            data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdatePayoutMethodDefaultStatus,
          parserFn: _parserFn$Mutation$UpdatePayoutMethodDefaultStatus,
        );

  final OnMutationCompleted$Mutation$UpdatePayoutMethodDefaultStatus?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdatePayoutMethodDefaultStatus extends graphql
    .WatchQueryOptions<Mutation$UpdatePayoutMethodDefaultStatus> {
  WatchOptions$Mutation$UpdatePayoutMethodDefaultStatus({
    String? operationName,
    required Variables$Mutation$UpdatePayoutMethodDefaultStatus variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdatePayoutMethodDefaultStatus? typedOptimisticResult,
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
          document: documentNodeMutationUpdatePayoutMethodDefaultStatus,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdatePayoutMethodDefaultStatus,
        );
}

extension ClientExtension$Mutation$UpdatePayoutMethodDefaultStatus
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdatePayoutMethodDefaultStatus>>
      mutate$UpdatePayoutMethodDefaultStatus(
              Options$Mutation$UpdatePayoutMethodDefaultStatus options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdatePayoutMethodDefaultStatus>
      watchMutation$UpdatePayoutMethodDefaultStatus(
              WatchOptions$Mutation$UpdatePayoutMethodDefaultStatus options) =>
          this.watchMutation(options);
}

class Variables$Mutation$DeletePayoutAccount {
  factory Variables$Mutation$DeletePayoutAccount({required String id}) =>
      Variables$Mutation$DeletePayoutAccount._({
        r'id': id,
      });

  Variables$Mutation$DeletePayoutAccount._(this._$data);

  factory Variables$Mutation$DeletePayoutAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Mutation$DeletePayoutAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Mutation$DeletePayoutAccount<
          Variables$Mutation$DeletePayoutAccount>
      get copyWith => CopyWith$Variables$Mutation$DeletePayoutAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$DeletePayoutAccount ||
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

abstract class CopyWith$Variables$Mutation$DeletePayoutAccount<TRes> {
  factory CopyWith$Variables$Mutation$DeletePayoutAccount(
    Variables$Mutation$DeletePayoutAccount instance,
    TRes Function(Variables$Mutation$DeletePayoutAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$DeletePayoutAccount;

  factory CopyWith$Variables$Mutation$DeletePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$DeletePayoutAccount;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Mutation$DeletePayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$DeletePayoutAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$DeletePayoutAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$DeletePayoutAccount _instance;

  final TRes Function(Variables$Mutation$DeletePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Variables$Mutation$DeletePayoutAccount._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$DeletePayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$DeletePayoutAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$DeletePayoutAccount(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Mutation$DeletePayoutAccount {
  Mutation$DeletePayoutAccount({
    required this.deleteOnePayoutAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$DeletePayoutAccount.fromJson(Map<String, dynamic> json) {
    final l$deleteOnePayoutAccount = json['deleteOnePayoutAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePayoutAccount(
      deleteOnePayoutAccount:
          Mutation$DeletePayoutAccount$deleteOnePayoutAccount.fromJson(
              (l$deleteOnePayoutAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Mutation$DeletePayoutAccount$deleteOnePayoutAccount
      deleteOnePayoutAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$deleteOnePayoutAccount = deleteOnePayoutAccount;
    _resultData['deleteOnePayoutAccount'] = l$deleteOnePayoutAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$deleteOnePayoutAccount = deleteOnePayoutAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$deleteOnePayoutAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$DeletePayoutAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$deleteOnePayoutAccount = deleteOnePayoutAccount;
    final lOther$deleteOnePayoutAccount = other.deleteOnePayoutAccount;
    if (l$deleteOnePayoutAccount != lOther$deleteOnePayoutAccount) {
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

extension UtilityExtension$Mutation$DeletePayoutAccount
    on Mutation$DeletePayoutAccount {
  CopyWith$Mutation$DeletePayoutAccount<Mutation$DeletePayoutAccount>
      get copyWith => CopyWith$Mutation$DeletePayoutAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeletePayoutAccount<TRes> {
  factory CopyWith$Mutation$DeletePayoutAccount(
    Mutation$DeletePayoutAccount instance,
    TRes Function(Mutation$DeletePayoutAccount) then,
  ) = _CopyWithImpl$Mutation$DeletePayoutAccount;

  factory CopyWith$Mutation$DeletePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$DeletePayoutAccount;

  TRes call({
    Mutation$DeletePayoutAccount$deleteOnePayoutAccount? deleteOnePayoutAccount,
    String? $__typename,
  });
  CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<TRes>
      get deleteOnePayoutAccount;
}

class _CopyWithImpl$Mutation$DeletePayoutAccount<TRes>
    implements CopyWith$Mutation$DeletePayoutAccount<TRes> {
  _CopyWithImpl$Mutation$DeletePayoutAccount(
    this._instance,
    this._then,
  );

  final Mutation$DeletePayoutAccount _instance;

  final TRes Function(Mutation$DeletePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? deleteOnePayoutAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeletePayoutAccount(
        deleteOnePayoutAccount: deleteOnePayoutAccount == _undefined ||
                deleteOnePayoutAccount == null
            ? _instance.deleteOnePayoutAccount
            : (deleteOnePayoutAccount
                as Mutation$DeletePayoutAccount$deleteOnePayoutAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<TRes>
      get deleteOnePayoutAccount {
    final local$deleteOnePayoutAccount = _instance.deleteOnePayoutAccount;
    return CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
        local$deleteOnePayoutAccount, (e) => call(deleteOnePayoutAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$DeletePayoutAccount<TRes>
    implements CopyWith$Mutation$DeletePayoutAccount<TRes> {
  _CopyWithStubImpl$Mutation$DeletePayoutAccount(this._res);

  TRes _res;

  call({
    Mutation$DeletePayoutAccount$deleteOnePayoutAccount? deleteOnePayoutAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<TRes>
      get deleteOnePayoutAccount =>
          CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount.stub(
              _res);
}

const documentNodeMutationDeletePayoutAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeletePayoutAccount'),
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
        name: NameNode(value: 'deleteOnePayoutAccount'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              )
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
Mutation$DeletePayoutAccount _parserFn$Mutation$DeletePayoutAccount(
        Map<String, dynamic> data) =>
    Mutation$DeletePayoutAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$DeletePayoutAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$DeletePayoutAccount?,
);

class Options$Mutation$DeletePayoutAccount
    extends graphql.MutationOptions<Mutation$DeletePayoutAccount> {
  Options$Mutation$DeletePayoutAccount({
    String? operationName,
    required Variables$Mutation$DeletePayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePayoutAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$DeletePayoutAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$DeletePayoutAccount>? update,
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
                        : _parserFn$Mutation$DeletePayoutAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationDeletePayoutAccount,
          parserFn: _parserFn$Mutation$DeletePayoutAccount,
        );

  final OnMutationCompleted$Mutation$DeletePayoutAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$DeletePayoutAccount
    extends graphql.WatchQueryOptions<Mutation$DeletePayoutAccount> {
  WatchOptions$Mutation$DeletePayoutAccount({
    String? operationName,
    required Variables$Mutation$DeletePayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$DeletePayoutAccount? typedOptimisticResult,
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
          document: documentNodeMutationDeletePayoutAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$DeletePayoutAccount,
        );
}

extension ClientExtension$Mutation$DeletePayoutAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$DeletePayoutAccount>>
      mutate$DeletePayoutAccount(
              Options$Mutation$DeletePayoutAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$DeletePayoutAccount>
      watchMutation$DeletePayoutAccount(
              WatchOptions$Mutation$DeletePayoutAccount options) =>
          this.watchMutation(options);
}

class Mutation$DeletePayoutAccount$deleteOnePayoutAccount {
  Mutation$DeletePayoutAccount$deleteOnePayoutAccount({
    this.id,
    this.$__typename = 'PayoutAccountDeleteResponse',
  });

  factory Mutation$DeletePayoutAccount$deleteOnePayoutAccount.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
      id: (l$id as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String? id;

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
    if (other is! Mutation$DeletePayoutAccount$deleteOnePayoutAccount ||
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

extension UtilityExtension$Mutation$DeletePayoutAccount$deleteOnePayoutAccount
    on Mutation$DeletePayoutAccount$deleteOnePayoutAccount {
  CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<
          Mutation$DeletePayoutAccount$deleteOnePayoutAccount>
      get copyWith =>
          CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<
    TRes> {
  factory CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
    Mutation$DeletePayoutAccount$deleteOnePayoutAccount instance,
    TRes Function(Mutation$DeletePayoutAccount$deleteOnePayoutAccount) then,
  ) = _CopyWithImpl$Mutation$DeletePayoutAccount$deleteOnePayoutAccount;

  factory CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount.stub(
          TRes res) =
      _CopyWithStubImpl$Mutation$DeletePayoutAccount$deleteOnePayoutAccount;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<TRes>
    implements
        CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<TRes> {
  _CopyWithImpl$Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
    this._instance,
    this._then,
  );

  final Mutation$DeletePayoutAccount$deleteOnePayoutAccount _instance;

  final TRes Function(Mutation$DeletePayoutAccount$deleteOnePayoutAccount)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
        id: id == _undefined ? _instance.id : (id as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<
        TRes>
    implements
        CopyWith$Mutation$DeletePayoutAccount$deleteOnePayoutAccount<TRes> {
  _CopyWithStubImpl$Mutation$DeletePayoutAccount$deleteOnePayoutAccount(
      this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}

class Variables$Query$PayoutAccountLinkUrl {
  factory Variables$Query$PayoutAccountLinkUrl({required String gatewayId}) =>
      Variables$Query$PayoutAccountLinkUrl._({
        r'gatewayId': gatewayId,
      });

  Variables$Query$PayoutAccountLinkUrl._(this._$data);

  factory Variables$Query$PayoutAccountLinkUrl.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    return Variables$Query$PayoutAccountLinkUrl._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    return result$data;
  }

  CopyWith$Variables$Query$PayoutAccountLinkUrl<
          Variables$Query$PayoutAccountLinkUrl>
      get copyWith => CopyWith$Variables$Query$PayoutAccountLinkUrl(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PayoutAccountLinkUrl ||
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

abstract class CopyWith$Variables$Query$PayoutAccountLinkUrl<TRes> {
  factory CopyWith$Variables$Query$PayoutAccountLinkUrl(
    Variables$Query$PayoutAccountLinkUrl instance,
    TRes Function(Variables$Query$PayoutAccountLinkUrl) then,
  ) = _CopyWithImpl$Variables$Query$PayoutAccountLinkUrl;

  factory CopyWith$Variables$Query$PayoutAccountLinkUrl.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PayoutAccountLinkUrl;

  TRes call({String? gatewayId});
}

class _CopyWithImpl$Variables$Query$PayoutAccountLinkUrl<TRes>
    implements CopyWith$Variables$Query$PayoutAccountLinkUrl<TRes> {
  _CopyWithImpl$Variables$Query$PayoutAccountLinkUrl(
    this._instance,
    this._then,
  );

  final Variables$Query$PayoutAccountLinkUrl _instance;

  final TRes Function(Variables$Query$PayoutAccountLinkUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gatewayId = _undefined}) =>
      _then(Variables$Query$PayoutAccountLinkUrl._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$PayoutAccountLinkUrl<TRes>
    implements CopyWith$Variables$Query$PayoutAccountLinkUrl<TRes> {
  _CopyWithStubImpl$Variables$Query$PayoutAccountLinkUrl(this._res);

  TRes _res;

  call({String? gatewayId}) => _res;
}

class Query$PayoutAccountLinkUrl {
  Query$PayoutAccountLinkUrl({
    required this.getPayoutLinkUrl,
    this.$__typename = 'Query',
  });

  factory Query$PayoutAccountLinkUrl.fromJson(Map<String, dynamic> json) {
    final l$getPayoutLinkUrl = json['getPayoutLinkUrl'];
    final l$$__typename = json['__typename'];
    return Query$PayoutAccountLinkUrl(
      getPayoutLinkUrl: Fragment$IntentResult.fromJson(
          (l$getPayoutLinkUrl as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$IntentResult getPayoutLinkUrl;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$getPayoutLinkUrl = getPayoutLinkUrl;
    _resultData['getPayoutLinkUrl'] = l$getPayoutLinkUrl.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$getPayoutLinkUrl = getPayoutLinkUrl;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$getPayoutLinkUrl,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PayoutAccountLinkUrl ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$getPayoutLinkUrl = getPayoutLinkUrl;
    final lOther$getPayoutLinkUrl = other.getPayoutLinkUrl;
    if (l$getPayoutLinkUrl != lOther$getPayoutLinkUrl) {
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

extension UtilityExtension$Query$PayoutAccountLinkUrl
    on Query$PayoutAccountLinkUrl {
  CopyWith$Query$PayoutAccountLinkUrl<Query$PayoutAccountLinkUrl>
      get copyWith => CopyWith$Query$PayoutAccountLinkUrl(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PayoutAccountLinkUrl<TRes> {
  factory CopyWith$Query$PayoutAccountLinkUrl(
    Query$PayoutAccountLinkUrl instance,
    TRes Function(Query$PayoutAccountLinkUrl) then,
  ) = _CopyWithImpl$Query$PayoutAccountLinkUrl;

  factory CopyWith$Query$PayoutAccountLinkUrl.stub(TRes res) =
      _CopyWithStubImpl$Query$PayoutAccountLinkUrl;

  TRes call({
    Fragment$IntentResult? getPayoutLinkUrl,
    String? $__typename,
  });
  CopyWith$Fragment$IntentResult<TRes> get getPayoutLinkUrl;
}

class _CopyWithImpl$Query$PayoutAccountLinkUrl<TRes>
    implements CopyWith$Query$PayoutAccountLinkUrl<TRes> {
  _CopyWithImpl$Query$PayoutAccountLinkUrl(
    this._instance,
    this._then,
  );

  final Query$PayoutAccountLinkUrl _instance;

  final TRes Function(Query$PayoutAccountLinkUrl) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? getPayoutLinkUrl = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PayoutAccountLinkUrl(
        getPayoutLinkUrl:
            getPayoutLinkUrl == _undefined || getPayoutLinkUrl == null
                ? _instance.getPayoutLinkUrl
                : (getPayoutLinkUrl as Fragment$IntentResult),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$IntentResult<TRes> get getPayoutLinkUrl {
    final local$getPayoutLinkUrl = _instance.getPayoutLinkUrl;
    return CopyWith$Fragment$IntentResult(
        local$getPayoutLinkUrl, (e) => call(getPayoutLinkUrl: e));
  }
}

class _CopyWithStubImpl$Query$PayoutAccountLinkUrl<TRes>
    implements CopyWith$Query$PayoutAccountLinkUrl<TRes> {
  _CopyWithStubImpl$Query$PayoutAccountLinkUrl(this._res);

  TRes _res;

  call({
    Fragment$IntentResult? getPayoutLinkUrl,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$IntentResult<TRes> get getPayoutLinkUrl =>
      CopyWith$Fragment$IntentResult.stub(_res);
}

const documentNodeQueryPayoutAccountLinkUrl = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PayoutAccountLinkUrl'),
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
        name: NameNode(value: 'getPayoutLinkUrl'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'input'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'gatewayId'),
                value: VariableNode(name: NameNode(value: 'gatewayId')),
              )
            ]),
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
Query$PayoutAccountLinkUrl _parserFn$Query$PayoutAccountLinkUrl(
        Map<String, dynamic> data) =>
    Query$PayoutAccountLinkUrl.fromJson(data);
typedef OnQueryComplete$Query$PayoutAccountLinkUrl = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$PayoutAccountLinkUrl?,
);

class Options$Query$PayoutAccountLinkUrl
    extends graphql.QueryOptions<Query$PayoutAccountLinkUrl> {
  Options$Query$PayoutAccountLinkUrl({
    String? operationName,
    required Variables$Query$PayoutAccountLinkUrl variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayoutAccountLinkUrl? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$PayoutAccountLinkUrl? onComplete,
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
                    data == null
                        ? null
                        : _parserFn$Query$PayoutAccountLinkUrl(data),
                  ),
          onError: onError,
          document: documentNodeQueryPayoutAccountLinkUrl,
          parserFn: _parserFn$Query$PayoutAccountLinkUrl,
        );

  final OnQueryComplete$Query$PayoutAccountLinkUrl? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$PayoutAccountLinkUrl
    extends graphql.WatchQueryOptions<Query$PayoutAccountLinkUrl> {
  WatchOptions$Query$PayoutAccountLinkUrl({
    String? operationName,
    required Variables$Query$PayoutAccountLinkUrl variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$PayoutAccountLinkUrl? typedOptimisticResult,
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
          document: documentNodeQueryPayoutAccountLinkUrl,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$PayoutAccountLinkUrl,
        );
}

class FetchMoreOptions$Query$PayoutAccountLinkUrl
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$PayoutAccountLinkUrl({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$PayoutAccountLinkUrl variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPayoutAccountLinkUrl,
        );
}

extension ClientExtension$Query$PayoutAccountLinkUrl on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$PayoutAccountLinkUrl>>
      query$PayoutAccountLinkUrl(
              Options$Query$PayoutAccountLinkUrl options) async =>
          await this.query(options);
  graphql.ObservableQuery<Query$PayoutAccountLinkUrl>
      watchQuery$PayoutAccountLinkUrl(
              WatchOptions$Query$PayoutAccountLinkUrl options) =>
          this.watchQuery(options);
  void writeQuery$PayoutAccountLinkUrl({
    required Query$PayoutAccountLinkUrl data,
    required Variables$Query$PayoutAccountLinkUrl variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(
              document: documentNodeQueryPayoutAccountLinkUrl),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$PayoutAccountLinkUrl? readQuery$PayoutAccountLinkUrl({
    required Variables$Query$PayoutAccountLinkUrl variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation:
            graphql.Operation(document: documentNodeQueryPayoutAccountLinkUrl),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$PayoutAccountLinkUrl.fromJson(result);
  }
}

class Variables$Mutation$CreatePayoutAccount {
  factory Variables$Mutation$CreatePayoutAccount(
          {required Input$PayoutAccountInput input}) =>
      Variables$Mutation$CreatePayoutAccount._({
        r'input': input,
      });

  Variables$Mutation$CreatePayoutAccount._(this._$data);

  factory Variables$Mutation$CreatePayoutAccount.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$input = data['input'];
    result$data['input'] =
        Input$PayoutAccountInput.fromJson((l$input as Map<String, dynamic>));
    return Variables$Mutation$CreatePayoutAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$PayoutAccountInput get input =>
      (_$data['input'] as Input$PayoutAccountInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$input = input;
    result$data['input'] = l$input.toJson();
    return result$data;
  }

  CopyWith$Variables$Mutation$CreatePayoutAccount<
          Variables$Mutation$CreatePayoutAccount>
      get copyWith => CopyWith$Variables$Mutation$CreatePayoutAccount(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CreatePayoutAccount ||
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

abstract class CopyWith$Variables$Mutation$CreatePayoutAccount<TRes> {
  factory CopyWith$Variables$Mutation$CreatePayoutAccount(
    Variables$Mutation$CreatePayoutAccount instance,
    TRes Function(Variables$Mutation$CreatePayoutAccount) then,
  ) = _CopyWithImpl$Variables$Mutation$CreatePayoutAccount;

  factory CopyWith$Variables$Mutation$CreatePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CreatePayoutAccount;

  TRes call({Input$PayoutAccountInput? input});
}

class _CopyWithImpl$Variables$Mutation$CreatePayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$CreatePayoutAccount<TRes> {
  _CopyWithImpl$Variables$Mutation$CreatePayoutAccount(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CreatePayoutAccount _instance;

  final TRes Function(Variables$Mutation$CreatePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? input = _undefined}) =>
      _then(Variables$Mutation$CreatePayoutAccount._({
        ..._instance._$data,
        if (input != _undefined && input != null)
          'input': (input as Input$PayoutAccountInput),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CreatePayoutAccount<TRes>
    implements CopyWith$Variables$Mutation$CreatePayoutAccount<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CreatePayoutAccount(this._res);

  TRes _res;

  call({Input$PayoutAccountInput? input}) => _res;
}

class Mutation$CreatePayoutAccount {
  Mutation$CreatePayoutAccount({
    required this.createPayoutAccount,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CreatePayoutAccount.fromJson(Map<String, dynamic> json) {
    final l$createPayoutAccount = json['createPayoutAccount'];
    final l$$__typename = json['__typename'];
    return Mutation$CreatePayoutAccount(
      createPayoutAccount: Fragment$PayoutAccount.fromJson(
          (l$createPayoutAccount as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Fragment$PayoutAccount createPayoutAccount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$createPayoutAccount = createPayoutAccount;
    _resultData['createPayoutAccount'] = l$createPayoutAccount.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$createPayoutAccount = createPayoutAccount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$createPayoutAccount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$CreatePayoutAccount ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$createPayoutAccount = createPayoutAccount;
    final lOther$createPayoutAccount = other.createPayoutAccount;
    if (l$createPayoutAccount != lOther$createPayoutAccount) {
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

extension UtilityExtension$Mutation$CreatePayoutAccount
    on Mutation$CreatePayoutAccount {
  CopyWith$Mutation$CreatePayoutAccount<Mutation$CreatePayoutAccount>
      get copyWith => CopyWith$Mutation$CreatePayoutAccount(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$CreatePayoutAccount<TRes> {
  factory CopyWith$Mutation$CreatePayoutAccount(
    Mutation$CreatePayoutAccount instance,
    TRes Function(Mutation$CreatePayoutAccount) then,
  ) = _CopyWithImpl$Mutation$CreatePayoutAccount;

  factory CopyWith$Mutation$CreatePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CreatePayoutAccount;

  TRes call({
    Fragment$PayoutAccount? createPayoutAccount,
    String? $__typename,
  });
  CopyWith$Fragment$PayoutAccount<TRes> get createPayoutAccount;
}

class _CopyWithImpl$Mutation$CreatePayoutAccount<TRes>
    implements CopyWith$Mutation$CreatePayoutAccount<TRes> {
  _CopyWithImpl$Mutation$CreatePayoutAccount(
    this._instance,
    this._then,
  );

  final Mutation$CreatePayoutAccount _instance;

  final TRes Function(Mutation$CreatePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? createPayoutAccount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CreatePayoutAccount(
        createPayoutAccount:
            createPayoutAccount == _undefined || createPayoutAccount == null
                ? _instance.createPayoutAccount
                : (createPayoutAccount as Fragment$PayoutAccount),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PayoutAccount<TRes> get createPayoutAccount {
    final local$createPayoutAccount = _instance.createPayoutAccount;
    return CopyWith$Fragment$PayoutAccount(
        local$createPayoutAccount, (e) => call(createPayoutAccount: e));
  }
}

class _CopyWithStubImpl$Mutation$CreatePayoutAccount<TRes>
    implements CopyWith$Mutation$CreatePayoutAccount<TRes> {
  _CopyWithStubImpl$Mutation$CreatePayoutAccount(this._res);

  TRes _res;

  call({
    Fragment$PayoutAccount? createPayoutAccount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PayoutAccount<TRes> get createPayoutAccount =>
      CopyWith$Fragment$PayoutAccount.stub(_res);
}

const documentNodeMutationCreatePayoutAccount = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePayoutAccount'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'input')),
        type: NamedTypeNode(
          name: NameNode(value: 'PayoutAccountInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPayoutAccount'),
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
            name: NameNode(value: 'PayoutAccount'),
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
  fragmentDefinitionPayoutAccount,
]);
Mutation$CreatePayoutAccount _parserFn$Mutation$CreatePayoutAccount(
        Map<String, dynamic> data) =>
    Mutation$CreatePayoutAccount.fromJson(data);
typedef OnMutationCompleted$Mutation$CreatePayoutAccount = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$CreatePayoutAccount?,
);

class Options$Mutation$CreatePayoutAccount
    extends graphql.MutationOptions<Mutation$CreatePayoutAccount> {
  Options$Mutation$CreatePayoutAccount({
    String? operationName,
    required Variables$Mutation$CreatePayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePayoutAccount? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CreatePayoutAccount? onCompleted,
    graphql.OnMutationUpdate<Mutation$CreatePayoutAccount>? update,
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
                        : _parserFn$Mutation$CreatePayoutAccount(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCreatePayoutAccount,
          parserFn: _parserFn$Mutation$CreatePayoutAccount,
        );

  final OnMutationCompleted$Mutation$CreatePayoutAccount? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CreatePayoutAccount
    extends graphql.WatchQueryOptions<Mutation$CreatePayoutAccount> {
  WatchOptions$Mutation$CreatePayoutAccount({
    String? operationName,
    required Variables$Mutation$CreatePayoutAccount variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CreatePayoutAccount? typedOptimisticResult,
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
          document: documentNodeMutationCreatePayoutAccount,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CreatePayoutAccount,
        );
}

extension ClientExtension$Mutation$CreatePayoutAccount
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CreatePayoutAccount>>
      mutate$CreatePayoutAccount(
              Options$Mutation$CreatePayoutAccount options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$CreatePayoutAccount>
      watchMutation$CreatePayoutAccount(
              WatchOptions$Mutation$CreatePayoutAccount options) =>
          this.watchMutation(options);
}
