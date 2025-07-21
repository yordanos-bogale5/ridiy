import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'ride_option.fragment.graphql.dart';
import 'service.fragment.graphql.dart';

class Fragment$ServiceCategory {
  Fragment$ServiceCategory({
    required this.id,
    required this.name,
    required this.services,
    this.$__typename = 'ServiceCategory',
  });

  factory Fragment$ServiceCategory.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$services = json['services'];
    final l$$__typename = json['__typename'];
    return Fragment$ServiceCategory(
      id: (l$id as String),
      name: (l$name as String),
      services: (l$services as List<dynamic>)
          .map((e) => Fragment$Service.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final List<Fragment$Service> services;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$services = services;
    _resultData['services'] = l$services.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$services = services;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$services.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$ServiceCategory ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$services = services;
    final lOther$services = other.services;
    if (l$services.length != lOther$services.length) {
      return false;
    }
    for (int i = 0; i < l$services.length; i++) {
      final l$services$entry = l$services[i];
      final lOther$services$entry = lOther$services[i];
      if (l$services$entry != lOther$services$entry) {
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

extension UtilityExtension$Fragment$ServiceCategory
    on Fragment$ServiceCategory {
  CopyWith$Fragment$ServiceCategory<Fragment$ServiceCategory> get copyWith =>
      CopyWith$Fragment$ServiceCategory(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$ServiceCategory<TRes> {
  factory CopyWith$Fragment$ServiceCategory(
    Fragment$ServiceCategory instance,
    TRes Function(Fragment$ServiceCategory) then,
  ) = _CopyWithImpl$Fragment$ServiceCategory;

  factory CopyWith$Fragment$ServiceCategory.stub(TRes res) =
      _CopyWithStubImpl$Fragment$ServiceCategory;

  TRes call({
    String? id,
    String? name,
    List<Fragment$Service>? services,
    String? $__typename,
  });
  TRes services(
      Iterable<Fragment$Service> Function(
              Iterable<CopyWith$Fragment$Service<Fragment$Service>>)
          _fn);
}

class _CopyWithImpl$Fragment$ServiceCategory<TRes>
    implements CopyWith$Fragment$ServiceCategory<TRes> {
  _CopyWithImpl$Fragment$ServiceCategory(
    this._instance,
    this._then,
  );

  final Fragment$ServiceCategory _instance;

  final TRes Function(Fragment$ServiceCategory) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? services = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$ServiceCategory(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        services: services == _undefined || services == null
            ? _instance.services
            : (services as List<Fragment$Service>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes services(
          Iterable<Fragment$Service> Function(
                  Iterable<CopyWith$Fragment$Service<Fragment$Service>>)
              _fn) =>
      call(
          services: _fn(_instance.services.map((e) => CopyWith$Fragment$Service(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Fragment$ServiceCategory<TRes>
    implements CopyWith$Fragment$ServiceCategory<TRes> {
  _CopyWithStubImpl$Fragment$ServiceCategory(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    List<Fragment$Service>? services,
    String? $__typename,
  }) =>
      _res;

  services(_fn) => _res;
}

const fragmentDefinitionServiceCategory = FragmentDefinitionNode(
  name: NameNode(value: 'ServiceCategory'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'ServiceCategory'),
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
      name: NameNode(value: 'name'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'services'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Service'),
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
const documentNodeFragmentServiceCategory = DocumentNode(definitions: [
  fragmentDefinitionServiceCategory,
  fragmentDefinitionService,
  fragmentDefinitionMedia,
  fragmentDefinitionRideOption,
]);

extension ClientExtension$Fragment$ServiceCategory on graphql.GraphQLClient {
  void writeFragment$ServiceCategory({
    required Fragment$ServiceCategory data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'ServiceCategory',
            document: documentNodeFragmentServiceCategory,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$ServiceCategory? readFragment$ServiceCategory({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'ServiceCategory',
          document: documentNodeFragmentServiceCategory,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$ServiceCategory.fromJson(result);
  }
}
