import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'ride_option.fragment.graphql.dart';

class Fragment$Service {
  Fragment$Service({
    required this.id,
    required this.name,
    required this.paymentMethod,
    required this.cancellationTotalFee,
    required this.media,
    required this.options,
    this.$__typename = 'Service',
  });

  factory Fragment$Service.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$paymentMethod = json['paymentMethod'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    final l$media = json['media'];
    final l$options = json['options'];
    final l$$__typename = json['__typename'];
    return Fragment$Service(
      id: (l$id as String),
      name: (l$name as String),
      paymentMethod:
          fromJson$Enum$ServicePaymentMethod((l$paymentMethod as String)),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
      media: Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Enum$ServicePaymentMethod paymentMethod;

  final double cancellationTotalFee;

  final Fragment$Media media;

  final List<Fragment$RideOption> options;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] =
        toJson$Enum$ServicePaymentMethod(l$paymentMethod);
    final l$cancellationTotalFee = cancellationTotalFee;
    _resultData['cancellationTotalFee'] = l$cancellationTotalFee;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$paymentMethod = paymentMethod;
    final l$cancellationTotalFee = cancellationTotalFee;
    final l$media = media;
    final l$options = options;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$paymentMethod,
      l$cancellationTotalFee,
      l$media,
      Object.hashAll(l$options.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Service || runtimeType != other.runtimeType) {
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
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$cancellationTotalFee = cancellationTotalFee;
    final lOther$cancellationTotalFee = other.cancellationTotalFee;
    if (l$cancellationTotalFee != lOther$cancellationTotalFee) {
      return false;
    }
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$options = options;
    final lOther$options = other.options;
    if (l$options.length != lOther$options.length) {
      return false;
    }
    for (int i = 0; i < l$options.length; i++) {
      final l$options$entry = l$options[i];
      final lOther$options$entry = lOther$options[i];
      if (l$options$entry != lOther$options$entry) {
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

extension UtilityExtension$Fragment$Service on Fragment$Service {
  CopyWith$Fragment$Service<Fragment$Service> get copyWith =>
      CopyWith$Fragment$Service(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Service<TRes> {
  factory CopyWith$Fragment$Service(
    Fragment$Service instance,
    TRes Function(Fragment$Service) then,
  ) = _CopyWithImpl$Fragment$Service;

  factory CopyWith$Fragment$Service.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Service;

  TRes call({
    String? id,
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    double? cancellationTotalFee,
    Fragment$Media? media,
    List<Fragment$RideOption>? options,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
  TRes options(
      Iterable<Fragment$RideOption> Function(
              Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
          _fn);
}

class _CopyWithImpl$Fragment$Service<TRes>
    implements CopyWith$Fragment$Service<TRes> {
  _CopyWithImpl$Fragment$Service(
    this._instance,
    this._then,
  );

  final Fragment$Service _instance;

  final TRes Function(Fragment$Service) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? paymentMethod = _undefined,
    Object? cancellationTotalFee = _undefined,
    Object? media = _undefined,
    Object? options = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        paymentMethod: paymentMethod == _undefined || paymentMethod == null
            ? _instance.paymentMethod
            : (paymentMethod as Enum$ServicePaymentMethod),
        cancellationTotalFee:
            cancellationTotalFee == _undefined || cancellationTotalFee == null
                ? _instance.cancellationTotalFee
                : (cancellationTotalFee as double),
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Fragment$Media),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$Media<TRes> get media {
    final local$media = _instance.media;
    return CopyWith$Fragment$Media(local$media, (e) => call(media: e));
  }

  TRes options(
          Iterable<Fragment$RideOption> Function(
                  Iterable<CopyWith$Fragment$RideOption<Fragment$RideOption>>)
              _fn) =>
      call(
          options:
              _fn(_instance.options.map((e) => CopyWith$Fragment$RideOption(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Fragment$Service<TRes>
    implements CopyWith$Fragment$Service<TRes> {
  _CopyWithStubImpl$Fragment$Service(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    Enum$ServicePaymentMethod? paymentMethod,
    double? cancellationTotalFee,
    Fragment$Media? media,
    List<Fragment$RideOption>? options,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);

  options(_fn) => _res;
}

const fragmentDefinitionService = FragmentDefinitionNode(
  name: NameNode(value: 'Service'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Service'),
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
      name: NameNode(value: 'paymentMethod'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'cancellationTotalFee'),
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
      name: NameNode(value: 'options'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'RideOption'),
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
const documentNodeFragmentService = DocumentNode(definitions: [
  fragmentDefinitionService,
  fragmentDefinitionMedia,
  fragmentDefinitionRideOption,
]);

extension ClientExtension$Fragment$Service on graphql.GraphQLClient {
  void writeFragment$Service({
    required Fragment$Service data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Service',
            document: documentNodeFragmentService,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Service? readFragment$Service({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Service',
          document: documentNodeFragmentService,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Service.fromJson(result);
  }
}
