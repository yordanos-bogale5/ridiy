import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Rider {
  Fragment$Rider({
    required this.id,
    this.presetAvatarNumber,
    this.firstName,
    this.lastName,
    required this.mobileNumber,
    this.media,
    required this.wallets,
    this.$__typename = 'Rider',
  });

  factory Fragment$Rider.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$mobileNumber = json['mobileNumber'];
    final l$media = json['media'];
    final l$wallets = json['wallets'];
    final l$$__typename = json['__typename'];
    return Fragment$Rider(
      id: (l$id as String),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      mobileNumber: (l$mobileNumber as String),
      media: l$media == null
          ? null
          : Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      wallets: (l$wallets as List<dynamic>)
          .map((e) =>
              Fragment$Rider$wallets.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final int? presetAvatarNumber;

  final String? firstName;

  final String? lastName;

  final String mobileNumber;

  final Fragment$Media? media;

  final List<Fragment$Rider$wallets> wallets;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$presetAvatarNumber = presetAvatarNumber;
    _resultData['presetAvatarNumber'] = l$presetAvatarNumber;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$wallets = wallets;
    _resultData['wallets'] = l$wallets.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$mobileNumber = mobileNumber;
    final l$media = media;
    final l$wallets = wallets;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$presetAvatarNumber,
      l$firstName,
      l$lastName,
      l$mobileNumber,
      l$media,
      Object.hashAll(l$wallets.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Rider || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$presetAvatarNumber = presetAvatarNumber;
    final lOther$presetAvatarNumber = other.presetAvatarNumber;
    if (l$presetAvatarNumber != lOther$presetAvatarNumber) {
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
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$wallets = wallets;
    final lOther$wallets = other.wallets;
    if (l$wallets.length != lOther$wallets.length) {
      return false;
    }
    for (int i = 0; i < l$wallets.length; i++) {
      final l$wallets$entry = l$wallets[i];
      final lOther$wallets$entry = lOther$wallets[i];
      if (l$wallets$entry != lOther$wallets$entry) {
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

extension UtilityExtension$Fragment$Rider on Fragment$Rider {
  CopyWith$Fragment$Rider<Fragment$Rider> get copyWith =>
      CopyWith$Fragment$Rider(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Rider<TRes> {
  factory CopyWith$Fragment$Rider(
    Fragment$Rider instance,
    TRes Function(Fragment$Rider) then,
  ) = _CopyWithImpl$Fragment$Rider;

  factory CopyWith$Fragment$Rider.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Rider;

  TRes call({
    String? id,
    int? presetAvatarNumber,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    Fragment$Media? media,
    List<Fragment$Rider$wallets>? wallets,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
  TRes wallets(
      Iterable<Fragment$Rider$wallets> Function(
              Iterable<CopyWith$Fragment$Rider$wallets<Fragment$Rider$wallets>>)
          _fn);
}

class _CopyWithImpl$Fragment$Rider<TRes>
    implements CopyWith$Fragment$Rider<TRes> {
  _CopyWithImpl$Fragment$Rider(
    this._instance,
    this._then,
  );

  final Fragment$Rider _instance;

  final TRes Function(Fragment$Rider) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? mobileNumber = _undefined,
    Object? media = _undefined,
    Object? wallets = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Rider(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        presetAvatarNumber: presetAvatarNumber == _undefined
            ? _instance.presetAvatarNumber
            : (presetAvatarNumber as int?),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        media:
            media == _undefined ? _instance.media : (media as Fragment$Media?),
        wallets: wallets == _undefined || wallets == null
            ? _instance.wallets
            : (wallets as List<Fragment$Rider$wallets>),
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

  TRes wallets(
          Iterable<Fragment$Rider$wallets> Function(
                  Iterable<
                      CopyWith$Fragment$Rider$wallets<Fragment$Rider$wallets>>)
              _fn) =>
      call(
          wallets:
              _fn(_instance.wallets.map((e) => CopyWith$Fragment$Rider$wallets(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Rider<TRes>
    implements CopyWith$Fragment$Rider<TRes> {
  _CopyWithStubImpl$Fragment$Rider(this._res);

  TRes _res;

  call({
    String? id,
    int? presetAvatarNumber,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    Fragment$Media? media,
    List<Fragment$Rider$wallets>? wallets,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);

  wallets(_fn) => _res;
}

const fragmentDefinitionRider = FragmentDefinitionNode(
  name: NameNode(value: 'Rider'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Rider'),
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
      name: NameNode(value: 'presetAvatarNumber'),
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
      name: NameNode(value: 'mobileNumber'),
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
      name: NameNode(value: 'wallets'),
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
);
const documentNodeFragmentRider = DocumentNode(definitions: [
  fragmentDefinitionRider,
  fragmentDefinitionMedia,
]);

extension ClientExtension$Fragment$Rider on graphql.GraphQLClient {
  void writeFragment$Rider({
    required Fragment$Rider data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Rider',
            document: documentNodeFragmentRider,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Rider? readFragment$Rider({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Rider',
          document: documentNodeFragmentRider,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Rider.fromJson(result);
  }
}

class Fragment$Rider$wallets {
  Fragment$Rider$wallets({
    required this.id,
    this.$__typename = 'RiderWallet',
  });

  factory Fragment$Rider$wallets.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Fragment$Rider$wallets(
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
    if (other is! Fragment$Rider$wallets || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Rider$wallets on Fragment$Rider$wallets {
  CopyWith$Fragment$Rider$wallets<Fragment$Rider$wallets> get copyWith =>
      CopyWith$Fragment$Rider$wallets(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Rider$wallets<TRes> {
  factory CopyWith$Fragment$Rider$wallets(
    Fragment$Rider$wallets instance,
    TRes Function(Fragment$Rider$wallets) then,
  ) = _CopyWithImpl$Fragment$Rider$wallets;

  factory CopyWith$Fragment$Rider$wallets.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Rider$wallets;

  TRes call({
    String? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Rider$wallets<TRes>
    implements CopyWith$Fragment$Rider$wallets<TRes> {
  _CopyWithImpl$Fragment$Rider$wallets(
    this._instance,
    this._then,
  );

  final Fragment$Rider$wallets _instance;

  final TRes Function(Fragment$Rider$wallets) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Rider$wallets(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Rider$wallets<TRes>
    implements CopyWith$Fragment$Rider$wallets<TRes> {
  _CopyWithStubImpl$Fragment$Rider$wallets(this._res);

  TRes _res;

  call({
    String? id,
    String? $__typename,
  }) =>
      _res;
}
