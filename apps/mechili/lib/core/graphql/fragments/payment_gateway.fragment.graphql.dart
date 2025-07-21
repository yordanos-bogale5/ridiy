import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$PaymentGateway {
  Fragment$PaymentGateway({
    required this.id,
    required this.title,
    required this.type,
    required this.linkMethod,
    this.media,
    this.$__typename = 'PaymentGateway',
  });

  factory Fragment$PaymentGateway.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$linkMethod = json['linkMethod'];
    final l$media = json['media'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentGateway(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$PaymentGatewayType((l$type as String)),
      linkMethod: fromJson$Enum$GatewayLinkMethod((l$linkMethod as String)),
      media: l$media == null
          ? null
          : Fragment$PaymentGateway$media.fromJson(
              (l$media as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$PaymentGatewayType type;

  final Enum$GatewayLinkMethod linkMethod;

  final Fragment$PaymentGateway$media? media;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$PaymentGatewayType(l$type);
    final l$linkMethod = linkMethod;
    _resultData['linkMethod'] = toJson$Enum$GatewayLinkMethod(l$linkMethod);
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$linkMethod = linkMethod;
    final l$media = media;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$linkMethod,
      l$media,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentGateway || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$linkMethod = linkMethod;
    final lOther$linkMethod = other.linkMethod;
    if (l$linkMethod != lOther$linkMethod) {
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

extension UtilityExtension$Fragment$PaymentGateway on Fragment$PaymentGateway {
  CopyWith$Fragment$PaymentGateway<Fragment$PaymentGateway> get copyWith =>
      CopyWith$Fragment$PaymentGateway(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$PaymentGateway<TRes> {
  factory CopyWith$Fragment$PaymentGateway(
    Fragment$PaymentGateway instance,
    TRes Function(Fragment$PaymentGateway) then,
  ) = _CopyWithImpl$Fragment$PaymentGateway;

  factory CopyWith$Fragment$PaymentGateway.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentGateway;

  TRes call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Fragment$PaymentGateway$media? media,
    String? $__typename,
  });
  CopyWith$Fragment$PaymentGateway$media<TRes> get media;
}

class _CopyWithImpl$Fragment$PaymentGateway<TRes>
    implements CopyWith$Fragment$PaymentGateway<TRes> {
  _CopyWithImpl$Fragment$PaymentGateway(
    this._instance,
    this._then,
  );

  final Fragment$PaymentGateway _instance;

  final TRes Function(Fragment$PaymentGateway) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? linkMethod = _undefined,
    Object? media = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PaymentGateway(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$PaymentGatewayType),
        linkMethod: linkMethod == _undefined || linkMethod == null
            ? _instance.linkMethod
            : (linkMethod as Enum$GatewayLinkMethod),
        media: media == _undefined
            ? _instance.media
            : (media as Fragment$PaymentGateway$media?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$PaymentGateway$media<TRes> get media {
    final local$media = _instance.media;
    return local$media == null
        ? CopyWith$Fragment$PaymentGateway$media.stub(_then(_instance))
        : CopyWith$Fragment$PaymentGateway$media(
            local$media, (e) => call(media: e));
  }
}

class _CopyWithStubImpl$Fragment$PaymentGateway<TRes>
    implements CopyWith$Fragment$PaymentGateway<TRes> {
  _CopyWithStubImpl$Fragment$PaymentGateway(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$PaymentGatewayType? type,
    Enum$GatewayLinkMethod? linkMethod,
    Fragment$PaymentGateway$media? media,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$PaymentGateway$media<TRes> get media =>
      CopyWith$Fragment$PaymentGateway$media.stub(_res);
}

const fragmentDefinitionPaymentGateway = FragmentDefinitionNode(
  name: NameNode(value: 'PaymentGateway'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'PaymentGateway'),
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
      name: NameNode(value: 'title'),
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
      name: NameNode(value: 'linkMethod'),
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
          name: NameNode(value: 'id'),
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
const documentNodeFragmentPaymentGateway = DocumentNode(definitions: [
  fragmentDefinitionPaymentGateway,
  fragmentDefinitionMedia,
]);

extension ClientExtension$Fragment$PaymentGateway on graphql.GraphQLClient {
  void writeFragment$PaymentGateway({
    required Fragment$PaymentGateway data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'PaymentGateway',
            document: documentNodeFragmentPaymentGateway,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$PaymentGateway? readFragment$PaymentGateway({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'PaymentGateway',
          document: documentNodeFragmentPaymentGateway,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$PaymentGateway.fromJson(result);
  }
}

class Fragment$PaymentGateway$media implements Fragment$Media {
  Fragment$PaymentGateway$media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Fragment$PaymentGateway$media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$PaymentGateway$media(
      id: (l$id as String),
      address: (l$address as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String address;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$address = address;
    _resultData['address'] = l$address;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$address = address;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$address,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$PaymentGateway$media ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$address = address;
    final lOther$address = other.address;
    if (l$address != lOther$address) {
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

extension UtilityExtension$Fragment$PaymentGateway$media
    on Fragment$PaymentGateway$media {
  CopyWith$Fragment$PaymentGateway$media<Fragment$PaymentGateway$media>
      get copyWith => CopyWith$Fragment$PaymentGateway$media(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$PaymentGateway$media<TRes> {
  factory CopyWith$Fragment$PaymentGateway$media(
    Fragment$PaymentGateway$media instance,
    TRes Function(Fragment$PaymentGateway$media) then,
  ) = _CopyWithImpl$Fragment$PaymentGateway$media;

  factory CopyWith$Fragment$PaymentGateway$media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$PaymentGateway$media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$PaymentGateway$media<TRes>
    implements CopyWith$Fragment$PaymentGateway$media<TRes> {
  _CopyWithImpl$Fragment$PaymentGateway$media(
    this._instance,
    this._then,
  );

  final Fragment$PaymentGateway$media _instance;

  final TRes Function(Fragment$PaymentGateway$media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$PaymentGateway$media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$PaymentGateway$media<TRes>
    implements CopyWith$Fragment$PaymentGateway$media<TRes> {
  _CopyWithStubImpl$Fragment$PaymentGateway$media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}
