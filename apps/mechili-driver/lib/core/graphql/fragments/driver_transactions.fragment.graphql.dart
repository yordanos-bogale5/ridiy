import '../schema.gql.dart';
import 'package:flutter_common/core/graphql/scalars/datetime.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$DriverTransacion {
  Fragment$DriverTransacion({
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

  factory Fragment$DriverTransacion.fromJson(Map<String, dynamic> json) {
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
    return Fragment$DriverTransacion(
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
    if (other is! Fragment$DriverTransacion ||
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

extension UtilityExtension$Fragment$DriverTransacion
    on Fragment$DriverTransacion {
  CopyWith$Fragment$DriverTransacion<Fragment$DriverTransacion> get copyWith =>
      CopyWith$Fragment$DriverTransacion(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$DriverTransacion<TRes> {
  factory CopyWith$Fragment$DriverTransacion(
    Fragment$DriverTransacion instance,
    TRes Function(Fragment$DriverTransacion) then,
  ) = _CopyWithImpl$Fragment$DriverTransacion;

  factory CopyWith$Fragment$DriverTransacion.stub(TRes res) =
      _CopyWithStubImpl$Fragment$DriverTransacion;

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

class _CopyWithImpl$Fragment$DriverTransacion<TRes>
    implements CopyWith$Fragment$DriverTransacion<TRes> {
  _CopyWithImpl$Fragment$DriverTransacion(
    this._instance,
    this._then,
  );

  final Fragment$DriverTransacion _instance;

  final TRes Function(Fragment$DriverTransacion) _then;

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
      _then(Fragment$DriverTransacion(
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

class _CopyWithStubImpl$Fragment$DriverTransacion<TRes>
    implements CopyWith$Fragment$DriverTransacion<TRes> {
  _CopyWithStubImpl$Fragment$DriverTransacion(this._res);

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

const fragmentDefinitionDriverTransacion = FragmentDefinitionNode(
  name: NameNode(value: 'DriverTransacion'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DriverTransacion'),
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
);
const documentNodeFragmentDriverTransacion = DocumentNode(definitions: [
  fragmentDefinitionDriverTransacion,
]);

extension ClientExtension$Fragment$DriverTransacion on graphql.GraphQLClient {
  void writeFragment$DriverTransacion({
    required Fragment$DriverTransacion data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'DriverTransacion',
            document: documentNodeFragmentDriverTransacion,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$DriverTransacion? readFragment$DriverTransacion({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'DriverTransacion',
          document: documentNodeFragmentDriverTransacion,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$DriverTransacion.fromJson(result);
  }
}
