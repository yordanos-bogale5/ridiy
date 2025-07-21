import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Profile {
  Fragment$Profile({
    required this.id,
    this.firstName,
    this.lastName,
    this.email,
    this.gender,
    required this.mobileNumber,
    this.countryIso,
    this.presetAvatarNumber,
    this.media,
    this.$__typename = 'Rider',
  });

  factory Fragment$Profile.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$email = json['email'];
    final l$gender = json['gender'];
    final l$mobileNumber = json['mobileNumber'];
    final l$countryIso = json['countryIso'];
    final l$presetAvatarNumber = json['presetAvatarNumber'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$Profile(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      email: (l$email as String?),
      gender:
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String)),
      mobileNumber: (l$mobileNumber as String),
      countryIso: (l$countryIso as String?),
      presetAvatarNumber: (l$presetAvatarNumber as int?),
      media: l$media == null
          ? null
          : Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final String? email;

  final Enum$Gender? gender;

  final String mobileNumber;

  final String? countryIso;

  final int? presetAvatarNumber;

  final Fragment$Media? media;

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
    final l$gender = gender;
    _resultData['gender'] =
        l$gender == null ? null : toJson$Enum$Gender(l$gender);
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$countryIso = countryIso;
    _resultData['countryIso'] = l$countryIso;
    final l$presetAvatarNumber = presetAvatarNumber;
    _resultData['presetAvatarNumber'] = l$presetAvatarNumber;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
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
    final l$gender = gender;
    final l$mobileNumber = mobileNumber;
    final l$countryIso = countryIso;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$email,
      l$gender,
      l$mobileNumber,
      l$countryIso,
      l$presetAvatarNumber,
      l$media,
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
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
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
    final l$countryIso = countryIso;
    final lOther$countryIso = other.countryIso;
    if (l$countryIso != lOther$countryIso) {
      return false;
    }
    final l$presetAvatarNumber = presetAvatarNumber;
    final lOther$presetAvatarNumber = other.presetAvatarNumber;
    if (l$presetAvatarNumber != lOther$presetAvatarNumber) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
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
    String? email,
    Enum$Gender? gender,
    String? mobileNumber,
    String? countryIso,
    int? presetAvatarNumber,
    Fragment$Media? media,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
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
    Object? email = _undefined,
    Object? gender = _undefined,
    Object? mobileNumber = _undefined,
    Object? countryIso = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Profile(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        email: email == _undefined ? _instance.email : (email as String?),
        gender:
            gender == _undefined ? _instance.gender : (gender as Enum$Gender?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        countryIso: countryIso == _undefined
            ? _instance.countryIso
            : (countryIso as String?),
        presetAvatarNumber: presetAvatarNumber == _undefined
            ? _instance.presetAvatarNumber
            : (presetAvatarNumber as int?),
        media:
            media == _undefined ? _instance.media : (media as Fragment$Media?),
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
}

class _CopyWithStubImpl$Fragment$Profile<TRes>
    implements CopyWith$Fragment$Profile<TRes> {
  _CopyWithStubImpl$Fragment$Profile(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    String? email,
    Enum$Gender? gender,
    String? mobileNumber,
    String? countryIso,
    int? presetAvatarNumber,
    Fragment$Media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);
}

const fragmentDefinitionProfile = FragmentDefinitionNode(
  name: NameNode(value: 'Profile'),
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
      name: NameNode(value: 'countryIso'),
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
