import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$PayoutMethod {
  Fragment$PayoutMethod({
    required this.id,
    required this.linkMethod,
    required this.enabled,
    required this.name,
    required this.type,
    this.media,
    this.$__typename = 'PayoutMethod',
  });

  factory Fragment$PayoutMethod.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$linkMethod = json['linkMethod'];
    final l$enabled = json['enabled'];
    final l$name = json['name'];
    final l$type = json['type'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$PayoutMethod(
      id: (l$id as String),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      enabled: (l$enabled as bool),
      name: (l$name as String),
      type: fromJson$Enum$PayoutMethodType((l$type as String)),
      media: l$media == null
          ? null
          : Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final Enum$GatewayLinkMethod linkMethod;

  final bool enabled;

  final String name;

  final Enum$PayoutMethodType type;

  final Fragment$Media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$linkMethod = linkMethod;
    _resultData['linkMethod'] = toJson$Enum$GatewayLinkMethod(l$linkMethod);
    final l$enabled = enabled;
    _resultData['enabled'] = l$enabled;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PayoutMethodType(l$type);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$linkMethod = linkMethod;
    final l$enabled = enabled;
    final l$name = name;
    final l$type = type;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$linkMethod,
      l$enabled,
      l$name,
      l$type,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PayoutMethod || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$linkMethod = linkMethod;
    final lOther$linkMethod = other.linkMethod;
    if (l$linkMethod != lOther$linkMethod) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (l$enabled != lOther$enabled) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
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

extension UtilityExtension$Fragment$PayoutMethod on Fragment$PayoutMethod {
  CopyWith$Fragment$PayoutMethod<Fragment$PayoutMethod> get copyWith =>
      CopyWith$Fragment$PayoutMethod(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PayoutMethod<TRes> {
  factory CopyWith$Fragment$PayoutMethod(
    Fragment$PayoutMethod instance,
    TRes Function(Fragment$PayoutMethod) then,
  ) = _CopyWithImpl$Fragment$PayoutMethod;

  factory CopyWith$Fragment$PayoutMethod.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PayoutMethod;

  TRes call({
    String? id,
    Enum$GatewayLinkMethod? linkMethod,
    bool? enabled,
    String? name,
    Enum$PayoutMethodType? type,
    Fragment$Media? media,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
}

class _CopyWithImpl$Fragment$PayoutMethod<TRes>
    implements CopyWith$Fragment$PayoutMethod<TRes> {
  _CopyWithImpl$Fragment$PayoutMethod(
    this._instance,
    this._then,
  );

  final Fragment$PayoutMethod _instance;

  final TRes Function(Fragment$PayoutMethod) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? linkMethod = _undefined,
    Object? enabled = _undefined,
    Object? name = _undefined,
    Object? type = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PayoutMethod(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        enabled: enabled == _undefined || enabled == null
            ? _instance.enabled
            : (enabled as bool),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PayoutMethodType),
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

class _CopyWithStubImpl$Fragment$PayoutMethod<TRes>
    implements CopyWith$Fragment$PayoutMethod<TRes> {
  _CopyWithStubImpl$Fragment$PayoutMethod(this._res);

  TRes _res;

  call({
    String? id,
    Enum$GatewayLinkMethod? linkMethod,
    bool? enabled,
    String? name,
    Enum$PayoutMethodType? type,
    Fragment$Media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);
}

const fragmentDefinitionPayoutMethod = FragmentDefinitionNode(
  name: NameNode(value: 'PayoutMethod'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PayoutMethod'),
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
      name: NameNode(value: 'linkMethod'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'enabled'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'type'),
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
const documentNodeFragmentPayoutMethod = DocumentNode(definitions: [
  fragmentDefinitionPayoutMethod,
  fragmentDefinitionMedia,
]);

extension ClientExtension$Fragment$PayoutMethod on graphql.GraphQLClient {
  void writeFragment$PayoutMethod({
    required Fragment$PayoutMethod data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PayoutMethod',
            document: documentNodeFragmentPayoutMethod,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PayoutMethod? readFragment$PayoutMethod({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PayoutMethod',
          document: documentNodeFragmentPayoutMethod,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PayoutMethod.fromJson(result);
  }
}
