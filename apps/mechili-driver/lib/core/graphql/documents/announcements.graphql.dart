import '../fragments/announcement.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Query$Announcements {
  Query$Announcements({
    required this.announcements,
    this.$__typename = 'Query',
  });

  factory Query$Announcements.fromJson(Map<String, dynamic> json) {
    final l$announcements = json['announcements'];
    final l$$__typename = json['__typename'];
    return Query$Announcements(
      announcements: (l$announcements as List<dynamic>)
          .map((e) =>
              Fragment$Announcement.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$Announcement> announcements;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$announcements = announcements;
    _resultData['announcements'] =
        l$announcements.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$announcements = announcements;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$announcements.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Announcements || runtimeType != other.runtimeType) {
      return false;
    }
    final l$announcements = announcements;
    final lOther$announcements = other.announcements;
    if (l$announcements.length != lOther$announcements.length) {
      return false;
    }
    for (int i = 0; i < l$announcements.length; i++) {
      final l$announcements$entry = l$announcements[i];
      final lOther$announcements$entry = lOther$announcements[i];
      if (l$announcements$entry != lOther$announcements$entry) {
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

extension UtilityExtension$Query$Announcements on Query$Announcements {
  CopyWith$Query$Announcements<Query$Announcements> get copyWith =>
      CopyWith$Query$Announcements(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Announcements<TRes> {
  factory CopyWith$Query$Announcements(
    Query$Announcements instance,
    TRes Function(Query$Announcements) then,
  ) = _CopyWithImpl$Query$Announcements;

  factory CopyWith$Query$Announcements.stub(TRes res) =
      _CopyWithStubImpl$Query$Announcements;

  TRes call({
    List<Fragment$Announcement>? announcements,
    String? $__typename,
  });
  TRes announcements(
      Iterable<Fragment$Announcement> Function(
              Iterable<CopyWith$Fragment$Announcement<Fragment$Announcement>>)
          _fn);
}

class _CopyWithImpl$Query$Announcements<TRes>
    implements CopyWith$Query$Announcements<TRes> {
  _CopyWithImpl$Query$Announcements(
    this._instance,
    this._then,
  );

  final Query$Announcements _instance;

  final TRes Function(Query$Announcements) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? announcements = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Announcements(
        announcements: announcements == _undefined || announcements == null
            ? _instance.announcements
            : (announcements as List<Fragment$Announcement>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes announcements(
          Iterable<Fragment$Announcement> Function(
                  Iterable<
                      CopyWith$Fragment$Announcement<Fragment$Announcement>>)
              _fn) =>
      call(
          announcements: _fn(
              _instance.announcements.map((e) => CopyWith$Fragment$Announcement(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$Announcements<TRes>
    implements CopyWith$Query$Announcements<TRes> {
  _CopyWithStubImpl$Query$Announcements(this._res);

  TRes _res;

  call({
    List<Fragment$Announcement>? announcements,
    String? $__typename,
  }) =>
      _res;

  announcements(_fn) => _res;
}

const documentNodeQueryAnnouncements = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Announcements'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'announcements'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Announcement'),
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
  fragmentDefinitionAnnouncement,
]);
Query$Announcements _parserFn$Query$Announcements(Map<String, dynamic> data) =>
    Query$Announcements.fromJson(data);
typedef OnQueryComplete$Query$Announcements = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Announcements?,
);

class Options$Query$Announcements
    extends graphql.QueryOptions<Query$Announcements> {
  Options$Query$Announcements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Announcements? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Announcements? onComplete,
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
                    data == null ? null : _parserFn$Query$Announcements(data),
                  ),
          onError: onError,
          document: documentNodeQueryAnnouncements,
          parserFn: _parserFn$Query$Announcements,
        );

  final OnQueryComplete$Query$Announcements? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Announcements
    extends graphql.WatchQueryOptions<Query$Announcements> {
  WatchOptions$Query$Announcements({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Announcements? typedOptimisticResult,
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
          document: documentNodeQueryAnnouncements,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Announcements,
        );
}

class FetchMoreOptions$Query$Announcements extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Announcements(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeQueryAnnouncements,
        );
}

extension ClientExtension$Query$Announcements on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Announcements>> query$Announcements(
          [Options$Query$Announcements? options]) async =>
      await this.query(options ?? Options$Query$Announcements());
  graphql.ObservableQuery<Query$Announcements> watchQuery$Announcements(
          [WatchOptions$Query$Announcements? options]) =>
      this.watchQuery(options ?? WatchOptions$Query$Announcements());
  void writeQuery$Announcements({
    required Query$Announcements data,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
            operation:
                graphql.Operation(document: documentNodeQueryAnnouncements)),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Announcements? readQuery$Announcements({bool optimistic = true}) {
    final result = this.readQuery(
      graphql.Request(
          operation:
              graphql.Operation(document: documentNodeQueryAnnouncements)),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Announcements.fromJson(result);
  }
}
