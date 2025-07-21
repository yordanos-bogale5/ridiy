import 'chat_message.fragment.graphql.dart';
import 'current_order.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'profile.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'rider.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';
import 'service.fragment.graphql.dart';
import 'wallet.fragment.graphql.dart';

class Fragment$VerifyNumber {
  Fragment$VerifyNumber({
    this.hash,
    required this.isExistingUser,
    this.$__typename = 'VerifyNumberDto',
  });

  factory Fragment$VerifyNumber.fromJson(Map<String, dynamic> json) {
    final l$hash = json['hash'];
    final l$isExistingUser = json['isExistingUser'];
    final l$$__typename = json['__typename'];
    return Fragment$VerifyNumber(
      hash: (l$hash as String?),
      isExistingUser: (l$isExistingUser as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? hash;

  final bool isExistingUser;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hash = hash;
    _resultData['hash'] = l$hash;
    final l$isExistingUser = isExistingUser;
    _resultData['isExistingUser'] = l$isExistingUser;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hash = hash;
    final l$isExistingUser = isExistingUser;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hash,
      l$isExistingUser,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VerifyNumber || runtimeType != other.runtimeType) {
      return false;
    }
    final l$hash = hash;
    final lOther$hash = other.hash;
    if (l$hash != lOther$hash) {
      return false;
    }
    final l$isExistingUser = isExistingUser;
    final lOther$isExistingUser = other.isExistingUser;
    if (l$isExistingUser != lOther$isExistingUser) {
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

extension UtilityExtension$Fragment$VerifyNumber on Fragment$VerifyNumber {
  CopyWith$Fragment$VerifyNumber<Fragment$VerifyNumber> get copyWith =>
      CopyWith$Fragment$VerifyNumber(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$VerifyNumber<TRes> {
  factory CopyWith$Fragment$VerifyNumber(
    Fragment$VerifyNumber instance,
    TRes Function(Fragment$VerifyNumber) then,
  ) = _CopyWithImpl$Fragment$VerifyNumber;

  factory CopyWith$Fragment$VerifyNumber.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VerifyNumber;

  TRes call({
    String? hash,
    bool? isExistingUser,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$VerifyNumber<TRes>
    implements CopyWith$Fragment$VerifyNumber<TRes> {
  _CopyWithImpl$Fragment$VerifyNumber(
    this._instance,
    this._then,
  );

  final Fragment$VerifyNumber _instance;

  final TRes Function(Fragment$VerifyNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hash = _undefined,
    Object? isExistingUser = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VerifyNumber(
        hash: hash == _undefined ? _instance.hash : (hash as String?),
        isExistingUser: isExistingUser == _undefined || isExistingUser == null
            ? _instance.isExistingUser
            : (isExistingUser as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$VerifyNumber<TRes>
    implements CopyWith$Fragment$VerifyNumber<TRes> {
  _CopyWithStubImpl$Fragment$VerifyNumber(this._res);

  TRes _res;

  call({
    String? hash,
    bool? isExistingUser,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionVerifyNumber = FragmentDefinitionNode(
  name: NameNode(value: 'VerifyNumber'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'VerifyNumberDto'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'hash'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isExistingUser'),
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
const documentNodeFragmentVerifyNumber = DocumentNode(definitions: [
  fragmentDefinitionVerifyNumber,
]);

extension ClientExtension$Fragment$VerifyNumber on graphql.GraphQLClient {
  void writeFragment$VerifyNumber({
    required Fragment$VerifyNumber data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VerifyNumber',
            document: documentNodeFragmentVerifyNumber,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VerifyNumber? readFragment$VerifyNumber({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VerifyNumber',
          document: documentNodeFragmentVerifyNumber,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$VerifyNumber.fromJson(result);
  }
}

class Fragment$VerifyOtpOrPassword {
  Fragment$VerifyOtpOrPassword({
    required this.hasPassword,
    required this.user,
    required this.hasName,
    required this.jwtToken,
    this.$__typename = 'VerifcationResult',
  });

  factory Fragment$VerifyOtpOrPassword.fromJson(Map<String, dynamic> json) {
    final l$hasPassword = json['hasPassword'];
    final l$user = json['user'];
    final l$hasName = json['hasName'];
    final l$jwtToken = json['jwtToken'];
    final l$$__typename = json['__typename'];
    return Fragment$VerifyOtpOrPassword(
      hasPassword: (l$hasPassword as bool),
      user: Fragment$ProfileFull.fromJson((l$user as Map<String, dynamic>)),
      hasName: (l$hasName as bool),
      jwtToken: (l$jwtToken as String),
      $__typename: (l$$__typename as String),
    );
  }

  final bool hasPassword;

  final Fragment$ProfileFull user;

  final bool hasName;

  final String jwtToken;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$hasPassword = hasPassword;
    _resultData['hasPassword'] = l$hasPassword;
    final l$user = user;
    _resultData['user'] = l$user.toJson();
    final l$hasName = hasName;
    _resultData['hasName'] = l$hasName;
    final l$jwtToken = jwtToken;
    _resultData['jwtToken'] = l$jwtToken;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$hasPassword = hasPassword;
    final l$user = user;
    final l$hasName = hasName;
    final l$jwtToken = jwtToken;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$hasPassword,
      l$user,
      l$hasName,
      l$jwtToken,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$VerifyOtpOrPassword ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$hasPassword = hasPassword;
    final lOther$hasPassword = other.hasPassword;
    if (l$hasPassword != lOther$hasPassword) {
      return false;
    }
    final l$user = user;
    final lOther$user = other.user;
    if (l$user != lOther$user) {
      return false;
    }
    final l$hasName = hasName;
    final lOther$hasName = other.hasName;
    if (l$hasName != lOther$hasName) {
      return false;
    }
    final l$jwtToken = jwtToken;
    final lOther$jwtToken = other.jwtToken;
    if (l$jwtToken != lOther$jwtToken) {
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

extension UtilityExtension$Fragment$VerifyOtpOrPassword
    on Fragment$VerifyOtpOrPassword {
  CopyWith$Fragment$VerifyOtpOrPassword<Fragment$VerifyOtpOrPassword>
      get copyWith => CopyWith$Fragment$VerifyOtpOrPassword(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$VerifyOtpOrPassword<TRes> {
  factory CopyWith$Fragment$VerifyOtpOrPassword(
    Fragment$VerifyOtpOrPassword instance,
    TRes Function(Fragment$VerifyOtpOrPassword) then,
  ) = _CopyWithImpl$Fragment$VerifyOtpOrPassword;

  factory CopyWith$Fragment$VerifyOtpOrPassword.stub(TRes res) =
      _CopyWithStubImpl$Fragment$VerifyOtpOrPassword;

  TRes call({
    bool? hasPassword,
    Fragment$ProfileFull? user,
    bool? hasName,
    String? jwtToken,
    String? $__typename,
  });
  CopyWith$Fragment$ProfileFull<TRes> get user;
}

class _CopyWithImpl$Fragment$VerifyOtpOrPassword<TRes>
    implements CopyWith$Fragment$VerifyOtpOrPassword<TRes> {
  _CopyWithImpl$Fragment$VerifyOtpOrPassword(
    this._instance,
    this._then,
  );

  final Fragment$VerifyOtpOrPassword _instance;

  final TRes Function(Fragment$VerifyOtpOrPassword) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? hasPassword = _undefined,
    Object? user = _undefined,
    Object? hasName = _undefined,
    Object? jwtToken = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$VerifyOtpOrPassword(
        hasPassword: hasPassword == _undefined || hasPassword == null
            ? _instance.hasPassword
            : (hasPassword as bool),
        user: user == _undefined || user == null
            ? _instance.user
            : (user as Fragment$ProfileFull),
        hasName: hasName == _undefined || hasName == null
            ? _instance.hasName
            : (hasName as bool),
        jwtToken: jwtToken == _undefined || jwtToken == null
            ? _instance.jwtToken
            : (jwtToken as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$ProfileFull<TRes> get user {
    final local$user = _instance.user;
    return CopyWith$Fragment$ProfileFull(local$user, (e) => call(user: e));
  }
}

class _CopyWithStubImpl$Fragment$VerifyOtpOrPassword<TRes>
    implements CopyWith$Fragment$VerifyOtpOrPassword<TRes> {
  _CopyWithStubImpl$Fragment$VerifyOtpOrPassword(this._res);

  TRes _res;

  call({
    bool? hasPassword,
    Fragment$ProfileFull? user,
    bool? hasName,
    String? jwtToken,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$ProfileFull<TRes> get user =>
      CopyWith$Fragment$ProfileFull.stub(_res);
}

const fragmentDefinitionVerifyOtpOrPassword = FragmentDefinitionNode(
  name: NameNode(value: 'VerifyOtpOrPassword'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'VerifcationResult'),
    isNonNull: false,
  )),
  directives: [],
  selectionSet: SelectionSetNode(selections: [
    FieldNode(
      name: NameNode(value: 'hasPassword'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'user'),
      alias: null,
      arguments: [],
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
      name: NameNode(value: 'hasName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'jwtToken'),
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
const documentNodeFragmentVerifyOtpOrPassword = DocumentNode(definitions: [
  fragmentDefinitionVerifyOtpOrPassword,
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

extension ClientExtension$Fragment$VerifyOtpOrPassword
    on graphql.GraphQLClient {
  void writeFragment$VerifyOtpOrPassword({
    required Fragment$VerifyOtpOrPassword data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'VerifyOtpOrPassword',
            document: documentNodeFragmentVerifyOtpOrPassword,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$VerifyOtpOrPassword? readFragment$VerifyOtpOrPassword({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'VerifyOtpOrPassword',
          document: documentNodeFragmentVerifyOtpOrPassword,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null
        ? null
        : Fragment$VerifyOtpOrPassword.fromJson(result);
  }
}
