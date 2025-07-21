import '../schema.gql.dart';
import 'package:flutter_common/core/graphql/scalars/timestamp.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$RiderTransaction {
  Fragment$RiderTransaction({
    required this.id,
    this.deductType,
    this.rechargeType,
    required this.amount,
    required this.currency,
    required this.createdAt,
    this.$__typename = 'RiderTransacion',
  });

  factory Fragment$RiderTransaction.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$deductType = json['deductType'];
    final l$rechargeType = json['rechargeType'];
    final l$amount = json['amount'];
    final l$currency = json['currency'];
    final l$createdAt = json['createdAt'];
    final l$$__typename = json['__typename'];
    return Fragment$RiderTransaction(
      id: (l$id as String),
      deductType: l$deductType == null
          ? null
          : fromJson$Enum$RiderDeductTransactionType((l$deductType as String)),
      rechargeType: l$rechargeType == null
          ? null
          : fromJson$Enum$RiderRechargeTransactionType(
              (l$rechargeType as String)),
      amount: (l$amount as num).toDouble(),
      currency: (l$currency as String),
      createdAt: fromGraphQLTimestampToDartDateTime(l$createdAt),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$RiderDeductTransactionType? deductType;

  final Enum$RiderRechargeTransactionType? rechargeType;

  final double amount;

  final String currency;

  final DateTime createdAt;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$deductType = deductType;
    _resultData['deductType'] = l$deductType == null
        ? null
        : toJson$Enum$RiderDeductTransactionType(l$deductType);
    final l$rechargeType = rechargeType;
    _resultData['rechargeType'] = l$rechargeType == null
        ? null
        : toJson$Enum$RiderRechargeTransactionType(l$rechargeType);
    final l$amount = amount;
    _resultData['amount'] = l$amount;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$createdAt = createdAt;
    _resultData['createdAt'] = fromDartDateTimeToGraphQLTimestamp(l$createdAt);
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$deductType = deductType;
    final l$rechargeType = rechargeType;
    final l$amount = amount;
    final l$currency = currency;
    final l$createdAt = createdAt;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$deductType,
      l$rechargeType,
      l$amount,
      l$currency,
      l$createdAt,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$RiderTransaction ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
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
    final l$createdAt = createdAt;
    final lOther$createdAt = other.createdAt;
    if (l$createdAt != lOther$createdAt) {
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

extension UtilityExtension$Fragment$RiderTransaction
    on Fragment$RiderTransaction {
  CopyWith$Fragment$RiderTransaction<Fragment$RiderTransaction> get copyWith =>
      CopyWith$Fragment$RiderTransaction(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$RiderTransaction<TRes> {
  factory CopyWith$Fragment$RiderTransaction(
    Fragment$RiderTransaction instance,
    TRes Function(Fragment$RiderTransaction) then,
  ) = _CopyWithImpl$Fragment$RiderTransaction;

  factory CopyWith$Fragment$RiderTransaction.stub(TRes res) =
      _CopyWithStubImpl$Fragment$RiderTransaction;

  TRes call({
    String? id,
    Enum$RiderDeductTransactionType? deductType,
    Enum$RiderRechargeTransactionType? rechargeType,
    double? amount,
    String? currency,
    DateTime? createdAt,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$RiderTransaction<TRes>
    implements CopyWith$Fragment$RiderTransaction<TRes> {
  _CopyWithImpl$Fragment$RiderTransaction(
    this._instance,
    this._then,
  );

  final Fragment$RiderTransaction _instance;

  final TRes Function(Fragment$RiderTransaction) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? deductType = _undefined,
    Object? rechargeType = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? createdAt = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$RiderTransaction(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        deductType: deductType == _undefined
            ? _instance.deductType
            : (deductType as Enum$RiderDeductTransactionType?),
        rechargeType: rechargeType == _undefined
            ? _instance.rechargeType
            : (rechargeType as Enum$RiderRechargeTransactionType?),
        amount: amount == _undefined || amount == null
            ? _instance.amount
            : (amount as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        createdAt: createdAt == _undefined || createdAt == null
            ? _instance.createdAt
            : (createdAt as DateTime),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$RiderTransaction<TRes>
    implements CopyWith$Fragment$RiderTransaction<TRes> {
  _CopyWithStubImpl$Fragment$RiderTransaction(this._res);

  TRes _res;

  call({
    String? id,
    Enum$RiderDeductTransactionType? deductType,
    Enum$RiderRechargeTransactionType? rechargeType,
    double? amount,
    String? currency,
    DateTime? createdAt,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionRiderTransaction = FragmentDefinitionNode(
  name: NameNode(value: 'RiderTransaction'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'RiderTransacion'),
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
      name: NameNode(value: 'createdAt'),
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
);
const documentNodeFragmentRiderTransaction = DocumentNode(definitions: [
  fragmentDefinitionRiderTransaction,
]);

extension ClientExtension$Fragment$RiderTransaction on graphql.GraphQLClient {
  void writeFragment$RiderTransaction({
    required Fragment$RiderTransaction data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'RiderTransaction',
            document: documentNodeFragmentRiderTransaction,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$RiderTransaction? readFragment$RiderTransaction({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'RiderTransaction',
          document: documentNodeFragmentRiderTransaction,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$RiderTransaction.fromJson(result);
  }
}
