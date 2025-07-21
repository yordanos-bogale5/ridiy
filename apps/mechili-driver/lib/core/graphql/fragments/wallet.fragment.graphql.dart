import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Wallet {
  Fragment$Wallet({
    required this.balance,
    required this.currency,
    this.$__typename = 'DriverWallet',
  });

  factory Fragment$Wallet.fromJson(Map<String, dynamic> json) {
    final l$balance = json['balance'];
    final l$currency = json['currency'];
    final l$$__typename = json['__typename'];
    return Fragment$Wallet(
      balance: (l$balance as num).toDouble(),
      currency: (l$currency as String),
      $__typename: (l$$__typename as String),
    );
  }

  final double balance;

  final String currency;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$balance = balance;
    _resultData['balance'] = l$balance;
    final l$currency = currency;
    _resultData['currency'] = l$currency;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$balance = balance;
    final l$currency = currency;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$balance,
      l$currency,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Wallet || runtimeType != other.runtimeType) {
      return false;
    }
    final l$balance = balance;
    final lOther$balance = other.balance;
    if (l$balance != lOther$balance) {
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

extension UtilityExtension$Fragment$Wallet on Fragment$Wallet {
  CopyWith$Fragment$Wallet<Fragment$Wallet> get copyWith =>
      CopyWith$Fragment$Wallet(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Wallet<TRes> {
  factory CopyWith$Fragment$Wallet(
    Fragment$Wallet instance,
    TRes Function(Fragment$Wallet) then,
  ) = _CopyWithImpl$Fragment$Wallet;

  factory CopyWith$Fragment$Wallet.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Wallet;

  TRes call({
    double? balance,
    String? currency,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Wallet<TRes>
    implements CopyWith$Fragment$Wallet<TRes> {
  _CopyWithImpl$Fragment$Wallet(
    this._instance,
    this._then,
  );

  final Fragment$Wallet _instance;

  final TRes Function(Fragment$Wallet) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? balance = _undefined,
    Object? currency = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Wallet(
        balance: balance == _undefined || balance == null
            ? _instance.balance
            : (balance as double),
        currency: currency == _undefined || currency == null
            ? _instance.currency
            : (currency as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Wallet<TRes>
    implements CopyWith$Fragment$Wallet<TRes> {
  _CopyWithStubImpl$Fragment$Wallet(this._res);

  TRes _res;

  call({
    double? balance,
    String? currency,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionWallet = FragmentDefinitionNode(
  name: NameNode(value: 'Wallet'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'DriverWallet'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'balance'),
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
);
const documentNodeFragmentWallet = DocumentNode(definitions: [
  fragmentDefinitionWallet,
]);

extension ClientExtension$Fragment$Wallet on graphql.GraphQLClient {
  void writeFragment$Wallet({
    required Fragment$Wallet data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Wallet',
            document: documentNodeFragmentWallet,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Wallet? readFragment$Wallet({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Wallet',
          document: documentNodeFragmentWallet,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Wallet.fromJson(result);
  }
}
