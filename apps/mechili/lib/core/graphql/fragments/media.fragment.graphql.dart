import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Media {
  Fragment$Media({
    required this.id,
    required this.address,
    this.$__typename = 'Media',
  });

  factory Fragment$Media.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$address = json['address'];
    final l$$__typename = json['__typename'];
    return Fragment$Media(
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
    if (other is! Fragment$Media || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Fragment$Media on Fragment$Media {
  CopyWith$Fragment$Media<Fragment$Media> get copyWith =>
      CopyWith$Fragment$Media(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Media<TRes> {
  factory CopyWith$Fragment$Media(
    Fragment$Media instance,
    TRes Function(Fragment$Media) then,
  ) = _CopyWithImpl$Fragment$Media;

  factory CopyWith$Fragment$Media.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Media;

  TRes call({
    String? id,
    String? address,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Media<TRes>
    implements CopyWith$Fragment$Media<TRes> {
  _CopyWithImpl$Fragment$Media(
    this._instance,
    this._then,
  );

  final Fragment$Media _instance;

  final TRes Function(Fragment$Media) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? address = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Media(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        address: address == _undefined || address == null
            ? _instance.address
            : (address as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Media<TRes>
    implements CopyWith$Fragment$Media<TRes> {
  _CopyWithStubImpl$Fragment$Media(this._res);

  TRes _res;

  call({
    String? id,
    String? address,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionMedia = FragmentDefinitionNode(
  name: NameNode(value: 'Media'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Media'),
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
);
const documentNodeFragmentMedia = DocumentNode(definitions: [
  fragmentDefinitionMedia,
]);

extension ClientExtension$Fragment$Media on graphql.GraphQLClient {
  void writeFragment$Media({
    required Fragment$Media data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Media',
            document: documentNodeFragmentMedia,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Media? readFragment$Media({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Media',
          document: documentNodeFragmentMedia,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Media.fromJson(result);
  }
}
