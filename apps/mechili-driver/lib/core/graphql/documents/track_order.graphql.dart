import '../fragments/chat_message.fragment.graphql.dart';
import '../fragments/current_order.fragment.graphql.dart';
import '../fragments/media.fragment.graphql.dart';
import '../fragments/payment_gateway.fragment.graphql.dart';
import '../fragments/point.fragment.graphql.dart';
import '../fragments/ride_option.fragment.graphql.dart';
import '../fragments/rider.fragment.graphql.dart';
import '../fragments/saved_payment_method.fragment.graphql.dart';
import '../fragments/service.fragment.graphql.dart';
import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Mutation$CancelOrder {
  factory Variables$Mutation$CancelOrder({required String orderId}) =>
      Variables$Mutation$CancelOrder._({
        r'orderId': orderId,
      });

  Variables$Mutation$CancelOrder._(this._$data);

  factory Variables$Mutation$CancelOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Mutation$CancelOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$CancelOrder<Variables$Mutation$CancelOrder>
      get copyWith => CopyWith$Variables$Mutation$CancelOrder(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$CancelOrder ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    return Object.hashAll([l$orderId]);
  }
}

abstract class CopyWith$Variables$Mutation$CancelOrder<TRes> {
  factory CopyWith$Variables$Mutation$CancelOrder(
    Variables$Mutation$CancelOrder instance,
    TRes Function(Variables$Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Variables$Mutation$CancelOrder;

  factory CopyWith$Variables$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$CancelOrder;

  TRes call({String? orderId});
}

class _CopyWithImpl$Variables$Mutation$CancelOrder<TRes>
    implements CopyWith$Variables$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Variables$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Variables$Mutation$CancelOrder _instance;

  final TRes Function(Variables$Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) =>
      _then(Variables$Mutation$CancelOrder._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$CancelOrder<TRes>
    implements CopyWith$Variables$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Variables$Mutation$CancelOrder(this._res);

  TRes _res;

  call({String? orderId}) => _res;
}

class Mutation$CancelOrder {
  Mutation$CancelOrder({
    required this.updateOneOrder,
    this.$__typename = 'Mutation',
  });

  factory Mutation$CancelOrder.fromJson(Map<String, dynamic> json) {
    final l$updateOneOrder = json['updateOneOrder'];
    final l$$__typename = json['__typename'];
    return Mutation$CancelOrder(
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
    if (other is! Mutation$CancelOrder || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Mutation$CancelOrder on Mutation$CancelOrder {
  CopyWith$Mutation$CancelOrder<Mutation$CancelOrder> get copyWith =>
      CopyWith$Mutation$CancelOrder(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Mutation$CancelOrder<TRes> {
  factory CopyWith$Mutation$CancelOrder(
    Mutation$CancelOrder instance,
    TRes Function(Mutation$CancelOrder) then,
  ) = _CopyWithImpl$Mutation$CancelOrder;

  factory CopyWith$Mutation$CancelOrder.stub(TRes res) =
      _CopyWithStubImpl$Mutation$CancelOrder;

  TRes call({
    Fragment$CurrentOrder? updateOneOrder,
    String? $__typename,
  });
  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder;
}

class _CopyWithImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithImpl$Mutation$CancelOrder(
    this._instance,
    this._then,
  );

  final Mutation$CancelOrder _instance;

  final TRes Function(Mutation$CancelOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateOneOrder = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$CancelOrder(
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

class _CopyWithStubImpl$Mutation$CancelOrder<TRes>
    implements CopyWith$Mutation$CancelOrder<TRes> {
  _CopyWithStubImpl$Mutation$CancelOrder(this._res);

  TRes _res;

  call({
    Fragment$CurrentOrder? updateOneOrder,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$CurrentOrder<TRes> get updateOneOrder =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeMutationCancelOrder = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CancelOrder'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
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
                    value:
                        EnumValueNode(name: NameNode(value: 'DriverCanceled')),
                  )
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
Mutation$CancelOrder _parserFn$Mutation$CancelOrder(
        Map<String, dynamic> data) =>
    Mutation$CancelOrder.fromJson(data);
typedef OnMutationCompleted$Mutation$CancelOrder = FutureOr<void> Function(
  Map<String, dynamic>?,
  Mutation$CancelOrder?,
);

class Options$Mutation$CancelOrder
    extends graphql.MutationOptions<Mutation$CancelOrder> {
  Options$Mutation$CancelOrder({
    String? operationName,
    required Variables$Mutation$CancelOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$CancelOrder? onCompleted,
    graphql.OnMutationUpdate<Mutation$CancelOrder>? update,
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
                    data == null ? null : _parserFn$Mutation$CancelOrder(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationCancelOrder,
          parserFn: _parserFn$Mutation$CancelOrder,
        );

  final OnMutationCompleted$Mutation$CancelOrder? onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$CancelOrder
    extends graphql.WatchQueryOptions<Mutation$CancelOrder> {
  WatchOptions$Mutation$CancelOrder({
    String? operationName,
    required Variables$Mutation$CancelOrder variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$CancelOrder? typedOptimisticResult,
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
          document: documentNodeMutationCancelOrder,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$CancelOrder,
        );
}

extension ClientExtension$Mutation$CancelOrder on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$CancelOrder>> mutate$CancelOrder(
          Options$Mutation$CancelOrder options) async =>
      await this.mutate(options);
  graphql.ObservableQuery<Mutation$CancelOrder> watchMutation$CancelOrder(
          WatchOptions$Mutation$CancelOrder options) =>
      this.watchMutation(options);
}

class Variables$Mutation$UpdateLastSeenMessagesAt {
  factory Variables$Mutation$UpdateLastSeenMessagesAt(
          {required String orderId}) =>
      Variables$Mutation$UpdateLastSeenMessagesAt._({
        r'orderId': orderId,
      });

  Variables$Mutation$UpdateLastSeenMessagesAt._(this._$data);

  factory Variables$Mutation$UpdateLastSeenMessagesAt.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Variables$Mutation$UpdateLastSeenMessagesAt._(result$data);
  }

  Map<String, dynamic> _$data;

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<
          Variables$Mutation$UpdateLastSeenMessagesAt>
      get copyWith => CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Mutation$UpdateLastSeenMessagesAt ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderId = orderId;
    return Object.hashAll([l$orderId]);
  }
}

abstract class CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<TRes> {
  factory CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt(
    Variables$Mutation$UpdateLastSeenMessagesAt instance,
    TRes Function(Variables$Mutation$UpdateLastSeenMessagesAt) then,
  ) = _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessagesAt;

  factory CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt.stub(TRes res) =
      _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessagesAt;

  TRes call({String? orderId});
}

class _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithImpl$Variables$Mutation$UpdateLastSeenMessagesAt(
    this._instance,
    this._then,
  );

  final Variables$Mutation$UpdateLastSeenMessagesAt _instance;

  final TRes Function(Variables$Mutation$UpdateLastSeenMessagesAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderId = _undefined}) =>
      _then(Variables$Mutation$UpdateLastSeenMessagesAt._({
        ..._instance._$data,
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Variables$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithStubImpl$Variables$Mutation$UpdateLastSeenMessagesAt(this._res);

  TRes _res;

  call({String? orderId}) => _res;
}

class Mutation$UpdateLastSeenMessagesAt {
  Mutation$UpdateLastSeenMessagesAt({
    required this.updateLastSeenMessagesAt,
    this.$__typename = 'Mutation',
  });

  factory Mutation$UpdateLastSeenMessagesAt.fromJson(
      Map<String, dynamic> json) {
    final l$updateLastSeenMessagesAt = json['updateLastSeenMessagesAt'];
    final l$$__typename = json['__typename'];
    return Mutation$UpdateLastSeenMessagesAt(
      updateLastSeenMessagesAt: (l$updateLastSeenMessagesAt as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final bool updateLastSeenMessagesAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    _resultData['updateLastSeenMessagesAt'] = l$updateLastSeenMessagesAt;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$updateLastSeenMessagesAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Mutation$UpdateLastSeenMessagesAt ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$updateLastSeenMessagesAt = updateLastSeenMessagesAt;
    final lOther$updateLastSeenMessagesAt = other.updateLastSeenMessagesAt;
    if (l$updateLastSeenMessagesAt != lOther$updateLastSeenMessagesAt) {
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

extension UtilityExtension$Mutation$UpdateLastSeenMessagesAt
    on Mutation$UpdateLastSeenMessagesAt {
  CopyWith$Mutation$UpdateLastSeenMessagesAt<Mutation$UpdateLastSeenMessagesAt>
      get copyWith => CopyWith$Mutation$UpdateLastSeenMessagesAt(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Mutation$UpdateLastSeenMessagesAt<TRes> {
  factory CopyWith$Mutation$UpdateLastSeenMessagesAt(
    Mutation$UpdateLastSeenMessagesAt instance,
    TRes Function(Mutation$UpdateLastSeenMessagesAt) then,
  ) = _CopyWithImpl$Mutation$UpdateLastSeenMessagesAt;

  factory CopyWith$Mutation$UpdateLastSeenMessagesAt.stub(TRes res) =
      _CopyWithStubImpl$Mutation$UpdateLastSeenMessagesAt;

  TRes call({
    bool? updateLastSeenMessagesAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithImpl$Mutation$UpdateLastSeenMessagesAt(
    this._instance,
    this._then,
  );

  final Mutation$UpdateLastSeenMessagesAt _instance;

  final TRes Function(Mutation$UpdateLastSeenMessagesAt) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? updateLastSeenMessagesAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Mutation$UpdateLastSeenMessagesAt(
        updateLastSeenMessagesAt: updateLastSeenMessagesAt == _undefined ||
                updateLastSeenMessagesAt == null
            ? _instance.updateLastSeenMessagesAt
            : (updateLastSeenMessagesAt as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Mutation$UpdateLastSeenMessagesAt<TRes>
    implements CopyWith$Mutation$UpdateLastSeenMessagesAt<TRes> {
  _CopyWithStubImpl$Mutation$UpdateLastSeenMessagesAt(this._res);

  TRes _res;

  call({
    bool? updateLastSeenMessagesAt,
    String? $__typename,
  }) =>
      _res;
}

const documentNodeMutationUpdateLastSeenMessagesAt = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'UpdateLastSeenMessagesAt'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'orderId')),
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
        name: NameNode(value: 'updateLastSeenMessagesAt'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'orderId'),
            value: VariableNode(name: NameNode(value: 'orderId')),
          )
        ],
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
]);
Mutation$UpdateLastSeenMessagesAt _parserFn$Mutation$UpdateLastSeenMessagesAt(
        Map<String, dynamic> data) =>
    Mutation$UpdateLastSeenMessagesAt.fromJson(data);
typedef OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt = FutureOr<void>
    Function(
  Map<String, dynamic>?,
  Mutation$UpdateLastSeenMessagesAt?,
);

class Options$Mutation$UpdateLastSeenMessagesAt
    extends graphql.MutationOptions<Mutation$UpdateLastSeenMessagesAt> {
  Options$Mutation$UpdateLastSeenMessagesAt({
    String? operationName,
    required Variables$Mutation$UpdateLastSeenMessagesAt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessagesAt? typedOptimisticResult,
    graphql.Context? context,
    OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt? onCompleted,
    graphql.OnMutationUpdate<Mutation$UpdateLastSeenMessagesAt>? update,
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
                        : _parserFn$Mutation$UpdateLastSeenMessagesAt(data),
                  ),
          update: update,
          onError: onError,
          document: documentNodeMutationUpdateLastSeenMessagesAt,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessagesAt,
        );

  final OnMutationCompleted$Mutation$UpdateLastSeenMessagesAt?
      onCompletedWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onCompleted == null
            ? super.properties
            : super.properties.where((property) => property != onCompleted),
        onCompletedWithParsed,
      ];
}

class WatchOptions$Mutation$UpdateLastSeenMessagesAt
    extends graphql.WatchQueryOptions<Mutation$UpdateLastSeenMessagesAt> {
  WatchOptions$Mutation$UpdateLastSeenMessagesAt({
    String? operationName,
    required Variables$Mutation$UpdateLastSeenMessagesAt variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Mutation$UpdateLastSeenMessagesAt? typedOptimisticResult,
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
          document: documentNodeMutationUpdateLastSeenMessagesAt,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Mutation$UpdateLastSeenMessagesAt,
        );
}

extension ClientExtension$Mutation$UpdateLastSeenMessagesAt
    on graphql.GraphQLClient {
  Future<graphql.QueryResult<Mutation$UpdateLastSeenMessagesAt>>
      mutate$UpdateLastSeenMessagesAt(
              Options$Mutation$UpdateLastSeenMessagesAt options) async =>
          await this.mutate(options);
  graphql.ObservableQuery<Mutation$UpdateLastSeenMessagesAt>
      watchMutation$UpdateLastSeenMessagesAt(
              WatchOptions$Mutation$UpdateLastSeenMessagesAt options) =>
          this.watchMutation(options);
}

class Subscription$OrderUpdateSubsctipion {
  Subscription$OrderUpdateSubsctipion({required this.orderUpdated});

  factory Subscription$OrderUpdateSubsctipion.fromJson(
      Map<String, dynamic> json) {
    final l$orderUpdated = json['orderUpdated'];
    return Subscription$OrderUpdateSubsctipion(
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
    if (other is! Subscription$OrderUpdateSubsctipion ||
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

extension UtilityExtension$Subscription$OrderUpdateSubsctipion
    on Subscription$OrderUpdateSubsctipion {
  CopyWith$Subscription$OrderUpdateSubsctipion<
          Subscription$OrderUpdateSubsctipion>
      get copyWith => CopyWith$Subscription$OrderUpdateSubsctipion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Subscription$OrderUpdateSubsctipion<TRes> {
  factory CopyWith$Subscription$OrderUpdateSubsctipion(
    Subscription$OrderUpdateSubsctipion instance,
    TRes Function(Subscription$OrderUpdateSubsctipion) then,
  ) = _CopyWithImpl$Subscription$OrderUpdateSubsctipion;

  factory CopyWith$Subscription$OrderUpdateSubsctipion.stub(TRes res) =
      _CopyWithStubImpl$Subscription$OrderUpdateSubsctipion;

  TRes call({Fragment$CurrentOrder? orderUpdated});
  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated;
}

class _CopyWithImpl$Subscription$OrderUpdateSubsctipion<TRes>
    implements CopyWith$Subscription$OrderUpdateSubsctipion<TRes> {
  _CopyWithImpl$Subscription$OrderUpdateSubsctipion(
    this._instance,
    this._then,
  );

  final Subscription$OrderUpdateSubsctipion _instance;

  final TRes Function(Subscription$OrderUpdateSubsctipion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderUpdated = _undefined}) =>
      _then(Subscription$OrderUpdateSubsctipion(
          orderUpdated: orderUpdated == _undefined || orderUpdated == null
              ? _instance.orderUpdated
              : (orderUpdated as Fragment$CurrentOrder)));

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated {
    final local$orderUpdated = _instance.orderUpdated;
    return CopyWith$Fragment$CurrentOrder(
        local$orderUpdated, (e) => call(orderUpdated: e));
  }
}

class _CopyWithStubImpl$Subscription$OrderUpdateSubsctipion<TRes>
    implements CopyWith$Subscription$OrderUpdateSubsctipion<TRes> {
  _CopyWithStubImpl$Subscription$OrderUpdateSubsctipion(this._res);

  TRes _res;

  call({Fragment$CurrentOrder? orderUpdated}) => _res;

  CopyWith$Fragment$CurrentOrder<TRes> get orderUpdated =>
      CopyWith$Fragment$CurrentOrder.stub(_res);
}

const documentNodeSubscriptionOrderUpdateSubsctipion =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OrderUpdateSubsctipion'),
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
Subscription$OrderUpdateSubsctipion
    _parserFn$Subscription$OrderUpdateSubsctipion(Map<String, dynamic> data) =>
        Subscription$OrderUpdateSubsctipion.fromJson(data);

class Options$Subscription$OrderUpdateSubsctipion
    extends graphql.SubscriptionOptions<Subscription$OrderUpdateSubsctipion> {
  Options$Subscription$OrderUpdateSubsctipion({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdateSubsctipion? typedOptimisticResult,
    graphql.Context? context,
  }) : super(
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeSubscriptionOrderUpdateSubsctipion,
          parserFn: _parserFn$Subscription$OrderUpdateSubsctipion,
        );
}

class WatchOptions$Subscription$OrderUpdateSubsctipion
    extends graphql.WatchQueryOptions<Subscription$OrderUpdateSubsctipion> {
  WatchOptions$Subscription$OrderUpdateSubsctipion({
    String? operationName,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Subscription$OrderUpdateSubsctipion? typedOptimisticResult,
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
          document: documentNodeSubscriptionOrderUpdateSubsctipion,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Subscription$OrderUpdateSubsctipion,
        );
}

class FetchMoreOptions$Subscription$OrderUpdateSubsctipion
    extends graphql.FetchMoreOptions {
  FetchMoreOptions$Subscription$OrderUpdateSubsctipion(
      {required graphql.UpdateQuery updateQuery})
      : super(
          updateQuery: updateQuery,
          document: documentNodeSubscriptionOrderUpdateSubsctipion,
        );
}

extension ClientExtension$Subscription$OrderUpdateSubsctipion
    on graphql.GraphQLClient {
  Stream<graphql.QueryResult<Subscription$OrderUpdateSubsctipion>>
      subscribe$OrderUpdateSubsctipion(
              [Options$Subscription$OrderUpdateSubsctipion? options]) =>
          this.subscribe(
              options ?? Options$Subscription$OrderUpdateSubsctipion());
  graphql.ObservableQuery<Subscription$OrderUpdateSubsctipion>
      watchSubscription$OrderUpdateSubsctipion(
              [WatchOptions$Subscription$OrderUpdateSubsctipion? options]) =>
          this.watchQuery(
              options ?? WatchOptions$Subscription$OrderUpdateSubsctipion());
}
