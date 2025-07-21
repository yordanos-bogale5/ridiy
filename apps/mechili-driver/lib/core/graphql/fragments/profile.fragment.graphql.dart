import '../schema.gql.dart';
import 'chat_message.fragment.graphql.dart';
import 'current_order.fragment.graphql.dart';
import 'driver_transactions.fragment.graphql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'payment_gateway.fragment.graphql.dart';
import 'point.fragment.graphql.dart';
import 'ride_option.fragment.graphql.dart';
import 'rider.fragment.graphql.dart';
import 'saved_payment_method.fragment.graphql.dart';
import 'service.fragment.graphql.dart';
import 'wallet.fragment.graphql.dart';

class Fragment$Profile {
  Fragment$Profile({
    required this.id,
    this.firstName,
    this.lastName,
    required this.status,
    required this.mobileNumber,
    this.searchDistance,
    this.countryIso,
    this.gender,
    this.email,
    required this.isWalletHidden,
    this.softRejectionNote,
    this.media,
    required this.wallet,
    required this.currentOrders,
    required this.transactions,
    this.presetAvatarNumber,
    this.$__typename = 'Driver',
  });

  factory Fragment$Profile.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$status = json['status'];
    final l$mobileNumber = json['mobileNumber'];
    final l$searchDistance = json['searchDistance'];
    final l$countryIso = json['countryIso'];
    final l$gender = json['gender'];
    final l$email = json['email'];
    final l$isWalletHidden = json['isWalletHidden'];
    final l$softRejectionNote = json['softRejectionNote'];
    final l$media = json['media'];
    final l$wallet = json['wallet'];
    final l$currentOrders = json['currentOrders'];
    final l$transactions = json['transactions'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$$__typename = json['__typename'];
    return Fragment$Profile(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      mobileNumber: (l$mobileNumber as String),
      searchDistance: (l$searchDistance as int?),
      countryIso: (l$countryIso as String?),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      email: (l$email as String?),
      isWalletHidden: (l$isWalletHidden as bool),
      softRejectionNote: (l$softRejectionNote as String?),
      media: l$media == null
          ? null
          : Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      wallet: (l$wallet as List<dynamic>)
          .map((e) => Fragment$Wallet.fromJson((e as Map<String, dynamic>)))
          .toList(),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) =>
              Fragment$CurrentOrder.fromJson((e as Map<String, dynamic>)))
          .toList(),
      transactions: Fragment$Profile$transactions.fromJson(
          (l$transactions as Map<String, dynamic>)),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Enum$DriverStatus status;

  final String mobileNumber;

  final int? searchDistance;

  final String? countryIso;

  final Enum$Gender? gender;

  final String? email;

  final bool isWalletHidden;

  final String? softRejectionNote;

  final Fragment$Media? media;

  final List<Fragment$Wallet> wallet;

  final List<Fragment$CurrentOrder> currentOrders;

  final Fragment$Profile$transactions transactions;

  final int? presetAvatarNumber;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    final l$countryIso = countryIso;
    _resultData['countryIso'] = l$countryIso;
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$email = email;
    _resultData['email'] = l$email;
    final l$isWalletHidden = isWalletHidden;
    _resultData['isWalletHidden'] = l$isWalletHidden;
    final l$softRejectionNote = softRejectionNote;
    _resultData['softRejectionNote'] = l$softRejectionNote;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$wallet = wallet;
    _resultData['wallet'] = l$wallet.map((e) => e.toJson()).toList();
    final l$currentOrders = currentOrders;
    _resultData['currentOrders'] =
        l$currentOrders.map((e) => e.toJson()).toList();
    final l$transactions = transactions;
    _resultData['transactions'] = l$transactions.toJson();
    final l$presetAvatarNumber = presetAvatarNumber;
    _resultData['presetAvatarNumber'] = l$presetAvatarNumber;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$status = status;
    final l$mobileNumber = mobileNumber;
    final l$searchDistance = searchDistance;
    final l$countryIso = countryIso;
    final l$gender = gender;
    final l$email = email;
    final l$isWalletHidden = isWalletHidden;
    final l$softRejectionNote = softRejectionNote;
    final l$media = media;
    final l$wallet = wallet;
    final l$currentOrders = currentOrders;
    final l$transactions = transactions;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$status,
      l$mobileNumber,
      l$searchDistance,
      l$countryIso,
      l$gender,
      l$email,
      l$isWalletHidden,
      l$softRejectionNote,
      l$media,
      Object.hashAll(l$wallet.map((v) => v)),
      Object.hashAll(l$currentOrders.map((v) => v)),
      l$transactions,
      l$presetAvatarNumber,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Profile || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$isWalletHidden = isWalletHidden;
    final lOther$isWalletHidden = other.isWalletHidden;
    if (l$isWalletHidden != lOther$isWalletHidden) {
      return false;
    }
    final l$softRejectionNote = softRejectionNote;
    final lOther$softRejectionNote = other.softRejectionNote;
    if (l$softRejectionNote != lOther$softRejectionNote) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$wallet = wallet;
    final lOther$wallet = other.wallet;
    if (l$wallet.length != lOther$wallet.length) {
      return false;
    }
    for (int i = 0; i < l$wallet.length; i++) {
      final l$wallet$entry = l$wallet[i];
      final lOther$wallet$entry = lOther$wallet[i];
      if (l$wallet$entry != lOther$wallet$entry) {
        return false;
      }
    }
    final l$currentOrders = currentOrders;
    final lOther$currentOrders = other.currentOrders;
    if (l$currentOrders.length != lOther$currentOrders.length) {
      return false;
    }
    for (int i = 0; i < l$currentOrders.length; i++) {
      final l$currentOrders$entry = l$currentOrders[i];
      final lOther$currentOrders$entry = lOther$currentOrders[i];
      if (l$currentOrders$entry != lOther$currentOrders$entry) {
        return false;
      }
    }
    final l$transactions = transactions;
    final lOther$transactions = other.transactions;
    if (l$transactions != lOther$transactions) {
      return false;
    }
    final l$presetAvatarNumber = presetAvatarNumber;
    final lOther$presetAvatarNumber = other.presetAvatarNumber;
    if (l$presetAvatarNumber != lOther$presetAvatarNumber) {
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

extension UtilityExtension$Fragment$Profile on Fragment$Profile {
  CopyWith$Fragment$Profile<Fragment$Profile> get copyWith =>
      CopyWith$Fragment$Profile(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Profile<TRes> {
  factory CopyWith$Fragment$Profile(
    Fragment$Profile instance,
    TRes Function(Fragment$Profile) then,
  ) = _CopyWithImpl$Fragment$Profile;

  factory CopyWith$Fragment$Profile.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Profile;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? mobileNumber,
    int? searchDistance,
    String? countryIso,
    Enum$Gender? gender,
    String? email,
    bool? isWalletHidden,
    String? softRejectionNote,
    Fragment$Media? media,
    List<Fragment$Wallet>? wallet,
    List<Fragment$CurrentOrder>? currentOrders,
    Fragment$Profile$transactions? transactions,
    int? presetAvatarNumber,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
  TRes wallet(
      Iterable<Fragment$Wallet> Function(
              Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
          _fn);
  TRes currentOrders(
      Iterable<Fragment$CurrentOrder> Function(
              Iterable<CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
          _fn);
  CopyWith$Fragment$Profile$transactions<TRes> get transactions;
}

class _CopyWithImpl$Fragment$Profile<TRes>
    implements CopyWith$Fragment$Profile<TRes> {
  _CopyWithImpl$Fragment$Profile(
    this._instance,
    this._then,
  );

  final Fragment$Profile _instance;

  final TRes Function(Fragment$Profile) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? status = _undefined,
    Object? mobileNumber = _undefined,
    Object? searchDistance = _undefined,
    Object? countryIso = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
    Object? isWalletHidden = _undefined,
    Object? softRejectionNote = _undefined,
    Object? media = _undefined,
    Object? wallet = _undefined,
    Object? currentOrders = _undefined,
    Object? transactions = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Profile(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
        countryIso: countryIso == _undefined
            ? _instance.countryIso
            : (countryIso as String?),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        email: email == _undefined ? _instance.email : (email as String?),
        isWalletHidden: isWalletHidden == _undefined || isWalletHidden == null
            ? _instance.isWalletHidden
            : (isWalletHidden as bool),
        softRejectionNote: softRejectionNote == _undefined
            ? _instance.softRejectionNote
            : (softRejectionNote as String?),
        media:
            media == _undefined ? _instance.media : (media as Fragment$Media?),
        wallet: wallet == _undefined || wallet == null
            ? _instance.wallet
            : (wallet as List<Fragment$Wallet>),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Fragment$CurrentOrder>),
        transactions: transactions == _undefined || transactions == null
            ? _instance.transactions
            : (transactions as Fragment$Profile$transactions),
        presetAvatarNumber: presetAvatarNumber == _undefined
            ? _instance.presetAvatarNumber
            : (presetAvatarNumber as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$Media.stub(_then(_instance))
        : CopyWith$Fragment$Media(local$media, (e) => call(media: e));
  }

  TRes wallet(
          Iterable<Fragment$Wallet> Function(
                  Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
              _fn) =>
      call(
          wallet: _fn(_instance.wallet.map((e) => CopyWith$Fragment$Wallet(
                e,
                (i) => i,
              ))).toList());

  TRes currentOrders(
          Iterable<Fragment$CurrentOrder> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
              _fn) =>
      call(
          currentOrders: _fn(
              _instance.currentOrders.map((e) => CopyWith$Fragment$CurrentOrder(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Fragment$Profile$transactions<TRes> get transactions {
    final local$transactions = _instance.transactions;
    return CopyWith$Fragment$Profile$transactions(
        local$transactions, (e) => call(transactions: e));
  }
}

class _CopyWithStubImpl$Fragment$Profile<TRes>
    implements CopyWith$Fragment$Profile<TRes> {
  _CopyWithStubImpl$Fragment$Profile(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? mobileNumber,
    int? searchDistance,
    String? countryIso,
    Enum$Gender? gender,
    String? email,
    bool? isWalletHidden,
    String? softRejectionNote,
    Fragment$Media? media,
    List<Fragment$Wallet>? wallet,
    List<Fragment$CurrentOrder>? currentOrders,
    Fragment$Profile$transactions? transactions,
    int? presetAvatarNumber,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);

  wallet(_fn) => _res;

  currentOrders(_fn) => _res;

  CopyWith$Fragment$Profile$transactions<TRes> get transactions =>
      CopyWith$Fragment$Profile$transactions.stub(_res);
}

const fragmentDefinitionProfile = FragmentDefinitionNode(
  name: NameNode(value: 'Profile'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
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
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mobileNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'searchDistance'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'countryIso'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'gender'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'isWalletHidden'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'softRejectionNote'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'wallet'),
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
      name: NameNode(value: 'currentOrders'),
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
    ),
    FieldNode(
      name: NameNode(value: 'transactions'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'nodes'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: SelectionSetNode(selections: [
            FragmentSpreadNode(
              name: NameNode(value: 'DriverTransacion'),
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
      name: NameNode(value: 'presetAvatarNumber'),
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
const documentNodeFragmentProfile = DocumentNode(definitions: [
  fragmentDefinitionProfile,
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
  fragmentDefinitionDriverTransacion,
]);

extension ClientExtension$Fragment$Profile on graphql.GraphQLClient {
  void writeFragment$Profile({
    required Fragment$Profile data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Profile',
            document: documentNodeFragmentProfile,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Profile? readFragment$Profile({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Profile',
          document: documentNodeFragmentProfile,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Profile.fromJson(result);
  }
}

class Fragment$Profile$transactions {
  Fragment$Profile$transactions({
    required this.nodes,
    this.$__typename = 'DriverTransactionsConnection',
  });

  factory Fragment$Profile$transactions.fromJson(Map<String, dynamic> json) {
    final l$nodes = json['nodes'];
    final l$$__typename = json['__typename'];
    return Fragment$Profile$transactions(
      nodes: (l$nodes as List<dynamic>)
          .map((e) =>
              Fragment$DriverTransacion.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Fragment$DriverTransacion> nodes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$nodes = nodes;
    _resultData['nodes'] = l$nodes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$nodes = nodes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$nodes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Profile$transactions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nodes = nodes;
    final lOther$nodes = other.nodes;
    if (l$nodes.length != lOther$nodes.length) {
      return false;
    }
    for (int i = 0; i < l$nodes.length; i++) {
      final l$nodes$entry = l$nodes[i];
      final lOther$nodes$entry = lOther$nodes[i];
      if (l$nodes$entry != lOther$nodes$entry) {
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

extension UtilityExtension$Fragment$Profile$transactions
    on Fragment$Profile$transactions {
  CopyWith$Fragment$Profile$transactions<Fragment$Profile$transactions>
      get copyWith => CopyWith$Fragment$Profile$transactions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$Profile$transactions<TRes> {
  factory CopyWith$Fragment$Profile$transactions(
    Fragment$Profile$transactions instance,
    TRes Function(Fragment$Profile$transactions) then,
  ) = _CopyWithImpl$Fragment$Profile$transactions;

  factory CopyWith$Fragment$Profile$transactions.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Profile$transactions;

  TRes call({
    List<Fragment$DriverTransacion>? nodes,
    String? $__typename,
  });
  TRes nodes(
      Iterable<Fragment$DriverTransacion> Function(
              Iterable<
                  CopyWith$Fragment$DriverTransacion<
                      Fragment$DriverTransacion>>)
          _fn);
}

class _CopyWithImpl$Fragment$Profile$transactions<TRes>
    implements CopyWith$Fragment$Profile$transactions<TRes> {
  _CopyWithImpl$Fragment$Profile$transactions(
    this._instance,
    this._then,
  );

  final Fragment$Profile$transactions _instance;

  final TRes Function(Fragment$Profile$transactions) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nodes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Profile$transactions(
        nodes: nodes == _undefined || nodes == null
            ? _instance.nodes
            : (nodes as List<Fragment$DriverTransacion>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes nodes(
          Iterable<Fragment$DriverTransacion> Function(
                  Iterable<
                      CopyWith$Fragment$DriverTransacion<
                          Fragment$DriverTransacion>>)
              _fn) =>
      call(
          nodes:
              _fn(_instance.nodes.map((e) => CopyWith$Fragment$DriverTransacion(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Profile$transactions<TRes>
    implements CopyWith$Fragment$Profile$transactions<TRes> {
  _CopyWithStubImpl$Fragment$Profile$transactions(this._res);

  TRes _res;

  call({
    List<Fragment$DriverTransacion>? nodes,
    String? $__typename,
  }) =>
      _res;

  nodes(_fn) => _res;
}

class Fragment$ProfileFull {
  Fragment$ProfileFull({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.address,
    required this.status,
    this.gender,
    required this.mobileNumber,
    this.searchDistance,
    this.certificateNumber,
    this.countryIso,
    this.carPlate,
    this.carProductionYear,
    this.carId,
    this.carColorId,
    this.bankName,
    this.bankRoutingNumber,
    this.accountNumber,
    this.bankSwift,
    this.media,
    this.documents,
    this.presetAvatarNumber,
    required this.wallet,
    required this.currentOrders,
    this.$__typename = 'Driver',
  });

  factory Fragment$ProfileFull.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$address = json['address'];
    final l$status = json['status'];
    final l$gender = json['gender'];
    final l$mobileNumber = json['mobileNumber'];
    final l$searchDistance = json['searchDistance'];
    final l$certificateNumber = json['certificateNumber'];
    final l$countryIso = json['countryIso'];
    final l$carPlate = json['carPlate'];
    final l$carProductionYear = json['carProductionYear'];
    final l$carId = json['carId'];
    final l$carColorId = json['carColorId'];
    final l$bankName = json['bankName'];
    final l$bankRoutingNumber = json['bankRoutingNumber'];
    final l$accountNumber = json['accountNumber'];
    final l$bankSwift = json['bankSwift'];
    final l$media = json['media'];
    final l$documents = json['documents'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$wallet = json['wallet'];
    final l$currentOrders = json['currentOrders'];
    final l$$__typename = json['__typename'];
    return Fragment$ProfileFull(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      email: (l$email as String?),
      address: (l$address as String?),
      status: fromJson$Enum$DriverStatus((l$status as String)),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      mobileNumber: (l$mobileNumber as String),
      searchDistance: (l$searchDistance as int?),
      certificateNumber: (l$certificateNumber as String?),
      countryIso: (l$countryIso as String?),
      carPlate: (l$carPlate as String?),
      carProductionYear: (l$carProductionYear as int?),
      carId: (l$carId as String?),
      carColorId: (l$carColorId as String?),
      bankName: (l$bankName as String?),
      bankRoutingNumber: (l$bankRoutingNumber as String?),
      accountNumber: (l$accountNumber as String?),
      bankSwift: (l$bankSwift as String?),
      media: l$media == null
          ? null
          : Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      documents: (l$documents as List<dynamic>?)
          ?.map((e) => Fragment$Media.fromJson((e as Map<String, dynamic>)))
          .toList(),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      wallet: (l$wallet as List<dynamic>)
          .map((e) => Fragment$Wallet.fromJson((e as Map<String, dynamic>)))
          .toList(),
      currentOrders: (l$currentOrders as List<dynamic>)
          .map((e) =>
              Fragment$CurrentOrder.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String? email;

  final String? address;

  final Enum$DriverStatus status;

  final Enum$Gender? gender;

  final String mobileNumber;

  final int? searchDistance;

  final String? certificateNumber;

  final String? countryIso;

  final String? carPlate;

  final int? carProductionYear;

  final String? carId;

  final String? carColorId;

  final String? bankName;

  final String? bankRoutingNumber;

  final String? accountNumber;

  final String? bankSwift;

  final Fragment$Media? media;

  final List<Fragment$Media>? documents;

  final int? presetAvatarNumber;

  final List<Fragment$Wallet> wallet;

  final List<Fragment$CurrentOrder> currentOrders;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$email = email;
    _resultData['email'] = l$email;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$status = status;
    _resultData['status'] = toJson$Enum$DriverStatus(l$status);
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$searchDistance = searchDistance;
    _resultData['searchDistance'] = l$searchDistance;
    final l$certificateNumber = certificateNumber;
    _resultData['certificateNumber'] = l$certificateNumber;
    final l$countryIso = countryIso;
    _resultData['countryIso'] = l$countryIso;
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$carProductionYear = carProductionYear;
    _resultData['carProductionYear'] = l$carProductionYear;
    final l$carId = carId;
    _resultData['carId'] = l$carId;
    final l$carColorId = carColorId;
    _resultData['carColorId'] = l$carColorId;
    final l$bankName = bankName;
    _resultData['bankName'] = l$bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    _resultData['bankRoutingNumber'] = l$bankRoutingNumber;
    final l$accountNumber = accountNumber;
    _resultData['accountNumber'] = l$accountNumber;
    final l$bankSwift = bankSwift;
    _resultData['bankSwift'] = l$bankSwift;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$documents = documents;
    _resultData['documents'] = l$documents?.map((e) => e.toJson()).toList();
    final l$presetAvatarNumber = presetAvatarNumber;
    _resultData['presetAvatarNumber'] = l$presetAvatarNumber;
    final l$wallet = wallet;
    _resultData['wallet'] = l$wallet.map((e) => e.toJson()).toList();
    final l$currentOrders = currentOrders;
    _resultData['currentOrders'] =
        l$currentOrders.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$email = email;
    final l$address = address;
    final l$status = status;
    final l$gender = gender;
    final l$mobileNumber = mobileNumber;
    final l$searchDistance = searchDistance;
    final l$certificateNumber = certificateNumber;
    final l$countryIso = countryIso;
    final l$carPlate = carPlate;
    final l$carProductionYear = carProductionYear;
    final l$carId = carId;
    final l$carColorId = carColorId;
    final l$bankName = bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    final l$accountNumber = accountNumber;
    final l$bankSwift = bankSwift;
    final l$media = media;
    final l$documents = documents;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$wallet = wallet;
    final l$currentOrders = currentOrders;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$email,
      l$address,
      l$status,
      l$gender,
      l$mobileNumber,
      l$searchDistance,
      l$certificateNumber,
      l$countryIso,
      l$carPlate,
      l$carProductionYear,
      l$carId,
      l$carColorId,
      l$bankName,
      l$bankRoutingNumber,
      l$accountNumber,
      l$bankSwift,
      l$media,
      l$documents == null ? null : Object.hashAll(l$documents.map((v) => v)),
      l$presetAvatarNumber,
      Object.hashAll(l$wallet.map((v) => v)),
      Object.hashAll(l$currentOrders.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ProfileFull || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (l$status != lOther$status) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    final l$certificateNumber = certificateNumber;
    final lOther$certificateNumber = other.certificateNumber;
    if (l$certificateNumber != lOther$certificateNumber) {
      return false;
    }
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$carProductionYear = carProductionYear;
    final lOther$carProductionYear = other.carProductionYear;
    if (l$carProductionYear != lOther$carProductionYear) {
      return false;
    }
    final l$carId = carId;
    final lOther$carId = other.carId;
    if (l$carId != lOther$carId) {
      return false;
    }
    final l$carColorId = carColorId;
    final lOther$carColorId = other.carColorId;
    if (l$carColorId != lOther$carColorId) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$bankRoutingNumber = bankRoutingNumber;
    final lOther$bankRoutingNumber = other.bankRoutingNumber;
    if (l$bankRoutingNumber != lOther$bankRoutingNumber) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankSwift = bankSwift;
    final lOther$bankSwift = other.bankSwift;
    if (l$bankSwift != lOther$bankSwift) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$documents = documents;
    final lOther$documents = other.documents;
    if (l$documents != null && lOther$documents != null) {
      if (l$documents.length != lOther$documents.length) {
        return false;
      }
      for (int i = 0; i < l$documents.length; i++) {
        final l$documents$entry = l$documents[i];
        final lOther$documents$entry = lOther$documents[i];
        if (l$documents$entry != lOther$documents$entry) {
          return false;
        }
      }
    } else if (l$documents != lOther$documents) {
      return false;
    }
    final l$presetAvatarNumber = presetAvatarNumber;
    final lOther$presetAvatarNumber = other.presetAvatarNumber;
    if (l$presetAvatarNumber != lOther$presetAvatarNumber) {
      return false;
    }
    final l$wallet = wallet;
    final lOther$wallet = other.wallet;
    if (l$wallet.length != lOther$wallet.length) {
      return false;
    }
    for (int i = 0; i < l$wallet.length; i++) {
      final l$wallet$entry = l$wallet[i];
      final lOther$wallet$entry = lOther$wallet[i];
      if (l$wallet$entry != lOther$wallet$entry) {
        return false;
      }
    }
    final l$currentOrders = currentOrders;
    final lOther$currentOrders = other.currentOrders;
    if (l$currentOrders.length != lOther$currentOrders.length) {
      return false;
    }
    for (int i = 0; i < l$currentOrders.length; i++) {
      final l$currentOrders$entry = l$currentOrders[i];
      final lOther$currentOrders$entry = lOther$currentOrders[i];
      if (l$currentOrders$entry != lOther$currentOrders$entry) {
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

extension UtilityExtension$Fragment$ProfileFull on Fragment$ProfileFull {
  CopyWith$Fragment$ProfileFull<Fragment$ProfileFull> get copyWith =>
      CopyWith$Fragment$ProfileFull(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ProfileFull<TRes> {
  factory CopyWith$Fragment$ProfileFull(
    Fragment$ProfileFull instance,
    TRes Function(Fragment$ProfileFull) then,
  ) = _CopyWithImpl$Fragment$ProfileFull;

  factory CopyWith$Fragment$ProfileFull.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ProfileFull;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? address,
    Enum$DriverStatus? status,
    Enum$Gender? gender,
    String? mobileNumber,
    int? searchDistance,
    String? certificateNumber,
    String? countryIso,
    String? carPlate,
    int? carProductionYear,
    String? carId,
    String? carColorId,
    String? bankName,
    String? bankRoutingNumber,
    String? accountNumber,
    String? bankSwift,
    Fragment$Media? media,
    List<Fragment$Media>? documents,
    int? presetAvatarNumber,
    List<Fragment$Wallet>? wallet,
    List<Fragment$CurrentOrder>? currentOrders,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
  TRes documents(
      Iterable<Fragment$Media>? Function(
              Iterable<CopyWith$Fragment$Media<Fragment$Media>>?)
          _fn);
  TRes wallet(
      Iterable<Fragment$Wallet> Function(
              Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
          _fn);
  TRes currentOrders(
      Iterable<Fragment$CurrentOrder> Function(
              Iterable<CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
          _fn);
}

class _CopyWithImpl$Fragment$ProfileFull<TRes>
    implements CopyWith$Fragment$ProfileFull<TRes> {
  _CopyWithImpl$Fragment$ProfileFull(
    this._instance,
    this._then,
  );

  final Fragment$ProfileFull _instance;

  final TRes Function(Fragment$ProfileFull) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? email = _undefined,
    Object? address = _undefined,
    Object? status = _undefined,
    Object? gender = _undefined,
    Object? mobileNumber = _undefined,
    Object? searchDistance = _undefined,
    Object? certificateNumber = _undefined,
    Object? countryIso = _undefined,
    Object? carPlate = _undefined,
    Object? carProductionYear = _undefined,
    Object? carId = _undefined,
    Object? carColorId = _undefined,
    Object? bankName = _undefined,
    Object? bankRoutingNumber = _undefined,
    Object? accountNumber = _undefined,
    Object? bankSwift = _undefined,
    Object? media = _undefined,
    Object? documents = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? wallet = _undefined,
    Object? currentOrders = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ProfileFull(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        address:
            address == _undefined ? _instance.address : (address as String?),
        status: status == _undefined || status == null
            ? _instance.status
            : (status as Enum$DriverStatus),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        searchDistance: searchDistance == _undefined
            ? _instance.searchDistance
            : (searchDistance as int?),
        certificateNumber: certificateNumber == _undefined
            ? _instance.certificateNumber
            : (certificateNumber as String?),
        countryIso: countryIso == _undefined
            ? _instance.countryIso
            : (countryIso as String?),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        carProductionYear: carProductionYear == _undefined
            ? _instance.carProductionYear
            : (carProductionYear as int?),
        carId: carId == _undefined ? _instance.carId : (carId as String?),
        carColorId: carColorId == _undefined
            ? _instance.carColorId
            : (carColorId as String?),
        bankName:
            bankName == _undefined ? _instance.bankName : (bankName as String?),
        bankRoutingNumber: bankRoutingNumber == _undefined
            ? _instance.bankRoutingNumber
            : (bankRoutingNumber as String?),
        accountNumber: accountNumber == _undefined
            ? _instance.accountNumber
            : (accountNumber as String?),
        bankSwift: bankSwift == _undefined
            ? _instance.bankSwift
            : (bankSwift as String?),
        media:
            media == _undefined ? _instance.media : (media as Fragment$Media?),
        documents: documents == _undefined
            ? _instance.documents
            : (documents as List<Fragment$Media>?),
        presetAvatarNumber: presetAvatarNumber == _undefined
            ? _instance.presetAvatarNumber
            : (presetAvatarNumber as int?),
        wallet: wallet == _undefined || wallet == null
            ? _instance.wallet
            : (wallet as List<Fragment$Wallet>),
        currentOrders: currentOrders == _undefined || currentOrders == null
            ? _instance.currentOrders
            : (currentOrders as List<Fragment$CurrentOrder>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$Media.stub(_then(_instance))
        : CopyWith$Fragment$Media(local$media, (e) => call(media: e));
  }

  TRes documents(
          Iterable<Fragment$Media>? Function(
                  Iterable<CopyWith$Fragment$Media<Fragment$Media>>?)
              _fn) =>
      call(
          documents:
              _fn(_instance.documents?.map((e) => CopyWith$Fragment$Media(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes wallet(
          Iterable<Fragment$Wallet> Function(
                  Iterable<CopyWith$Fragment$Wallet<Fragment$Wallet>>)
              _fn) =>
      call(
          wallet: _fn(_instance.wallet.map((e) => CopyWith$Fragment$Wallet(
                e,
                (i) => i,
              ))).toList());

  TRes currentOrders(
          Iterable<Fragment$CurrentOrder> Function(
                  Iterable<
                      CopyWith$Fragment$CurrentOrder<Fragment$CurrentOrder>>)
              _fn) =>
      call(
          currentOrders: _fn(
              _instance.currentOrders.map((e) => CopyWith$Fragment$CurrentOrder(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$ProfileFull<TRes>
    implements CopyWith$Fragment$ProfileFull<TRes> {
  _CopyWithStubImpl$Fragment$ProfileFull(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    String? address,
    Enum$DriverStatus? status,
    Enum$Gender? gender,
    String? mobileNumber,
    int? searchDistance,
    String? certificateNumber,
    String? countryIso,
    String? carPlate,
    int? carProductionYear,
    String? carId,
    String? carColorId,
    String? bankName,
    String? bankRoutingNumber,
    String? accountNumber,
    String? bankSwift,
    Fragment$Media? media,
    List<Fragment$Media>? documents,
    int? presetAvatarNumber,
    List<Fragment$Wallet>? wallet,
    List<Fragment$CurrentOrder>? currentOrders,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);

  documents(_fn) => _res;

  wallet(_fn) => _res;

  currentOrders(_fn) => _res;
}

const fragmentDefinitionProfileFull = FragmentDefinitionNode(
  name: NameNode(value: 'ProfileFull'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Driver'),
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
      name: NameNode(value: 'firstName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'lastName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'email'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'address'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'status'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'gender'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'mobileNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'searchDistance'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'certificateNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'countryIso'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carPlate'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carProductionYear'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'carColorId'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bankName'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bankRoutingNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'accountNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'bankSwift'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'media'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'documents'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'presetAvatarNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'documents'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Media'),
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
      name: NameNode(value: 'wallet'),
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
      name: NameNode(value: 'currentOrders'),
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
const documentNodeFragmentProfileFull = DocumentNode(definitions: [
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

extension ClientExtension$Fragment$ProfileFull on graphql.GraphQLClient {
  void writeFragment$ProfileFull({
    required Fragment$ProfileFull data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ProfileFull',
            document: documentNodeFragmentProfileFull,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ProfileFull? readFragment$ProfileFull({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ProfileFull',
          document: documentNodeFragmentProfileFull,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ProfileFull.fromJson(result);
  }
}
