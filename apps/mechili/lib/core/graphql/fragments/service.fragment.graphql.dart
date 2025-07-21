import '../schema.gql.dart';
import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'ride_option.fragment.graphql.dart';

class Fragment$Service {
  Fragment$Service({
    required this.id,
    required this.name,
    required this.media,
    required this.options,
    this.description,
    this.personCapacity,
    required this.prepayPercent,
    required this.paymentMethod,
    required this.cost,
    this.costAfterCoupon,
    required this.cancellationTotalFee,
    required this.twoWayAvailable,
    this.$__typename = 'Service',
  });

  factory Fragment$Service.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$media = json['media'];
    final l$options = json['options'];
    final l$description = json['description'];
    final l$personCapacity = json['personCapacity'];
    final l$prepayPercent = json['prepayPercent'];
    final l$paymentMethod = json['paymentMethod'];
    final l$cost = json['cost'];
    final l$costAfterCoupon = json['costAfterCoupon'];
    final l$cancellationTotalFee = json['cancellationTotalFee'];
    final l$twoWayAvailable = json['twoWayAvailable'];
    final l$$__typename = json['__typename'];
    return Fragment$Service(
      id: (l$id as String),
      name: (l$name as String),
      media: Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      options: (l$options as List<dynamic>)
          .map((e) => Fragment$RideOption.fromJson((e as Map<String, dynamic>)))
          .toList(),
      description: (l$description as String?),
      personCapacity: (l$personCapacity as int?),
      prepayPercent: (l$prepayPercent as int),
      paymentMethod:
          fromJson$Enum$ServicePaymentMethod((l$paymentMethod as String)),
      cost: (l$cost as num).toDouble(),
      costAfterCoupon: (l$costAfterCoupon as num?)?.toDouble(),
      cancellationTotalFee: (l$cancellationTotalFee as num).toDouble(),
      twoWayAvailable: (l$twoWayAvailable as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String name;

  final Fragment$Media media;

  final List<Fragment$RideOption> options;

  final String? description;

  final int? personCapacity;

  final int prepayPercent;

  final Enum$ServicePaymentMethod paymentMethod;

  final double cost;

  final double? costAfterCoupon;

  final double cancellationTotalFee;

  final bool twoWayAvailable;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$media = media;
    _resultData['media'] = l$media.toJson();
    final l$options = options;
    _resultData['options'] = l$options.map((e) => e.toJson()).toList();
    final l$description = description;
    _resultData['description'] = l$description;
    final l$personCapacity = personCapacity;
    _resultData['personCapacity'] = l$personCapacity;
    final l$prepayPercent = prepayPercent;
    _resultData['prepayPercent'] = l$prepayPercent;
    final l$paymentMethod = paymentMethod;
    _resultData['paymentMethod'] =
        toJson$Enum$ServicePaymentMethod(l$paymentMethod);
    final l$cost = cost;
    _resultData['cost'] = l$cost;
    final l$costAfterCoupon = costAfterCoupon;
    _resultData['costAfterCoupon'] = l$costAfterCoupon;
    final l$cancellationTotalFee = cancellationTotalFee;
    _resultData['cancellationTotalFee'] = l$cancellationTotalFee;
    final l$twoWayAvailable = twoWayAvailable;
    _resultData['twoWayAvailable'] = l$twoWayAvailable;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$media = media;
    final l$options = options;
    final l$description = description;
    final l$personCapacity = personCapacity;
    final l$prepayPercent = prepayPercent;
    final l$paymentMethod = paymentMethod;
    final l$cost = cost;
    final l$costAfterCoupon = costAfterCoupon;
    final l$cancellationTotalFee = cancellationTotalFee;
    final l$twoWayAvailable = twoWayAvailable;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$media,
      Object.hashAll(l$options.map((v) => v)),
      l$description,
      l$personCapacity,
      l$prepayPercent,
      l$paymentMethod,
      l$cost,
      l$costAfterCoupon,
      l$cancellationTotalFee,
      l$twoWayAvailable,
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
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$personCapacity = personCapacity;
    final lOther$personCapacity = other.personCapacity;
    if (l$personCapacity != lOther$personCapacity) {
      return false;
    }
    final l$prepayPercent = prepayPercent;
    final lOther$prepayPercent = other.prepayPercent;
    if (l$prepayPercent != lOther$prepayPercent) {
      return false;
    }
    final l$paymentMethod = paymentMethod;
    final lOther$paymentMethod = other.paymentMethod;
    if (l$paymentMethod != lOther$paymentMethod) {
      return false;
    }
    final l$cost = cost;
    final lOther$cost = other.cost;
    if (l$cost != lOther$cost) {
      return false;
    }
    final l$costAfterCoupon = costAfterCoupon;
    final lOther$costAfterCoupon = other.costAfterCoupon;
    if (l$costAfterCoupon != lOther$costAfterCoupon) {
      return false;
    }
    final l$cancellationTotalFee = cancellationTotalFee;
    final lOther$cancellationTotalFee = other.cancellationTotalFee;
    if (l$cancellationTotalFee != lOther$cancellationTotalFee) {
      return false;
    }
    final l$twoWayAvailable = twoWayAvailable;
    final lOther$twoWayAvailable = other.twoWayAvailable;
    if (l$twoWayAvailable != lOther$twoWayAvailable) {
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
    Fragment$Media? media,
    List<Fragment$RideOption>? options,
    String? description,
    int? personCapacity,
    int? prepayPercent,
    Enum$ServicePaymentMethod? paymentMethod,
    double? cost,
    double? costAfterCoupon,
    double? cancellationTotalFee,
    bool? twoWayAvailable,
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
    Object? media = _undefined,
    Object? options = _undefined,
    Object? description = _undefined,
    Object? personCapacity = _undefined,
    Object? prepayPercent = _undefined,
    Object? paymentMethod = _undefined,
    Object? cost = _undefined,
    Object? costAfterCoupon = _undefined,
    Object? cancellationTotalFee = _undefined,
    Object? twoWayAvailable = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Service(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        media: media == _undefined || media == null
            ? _instance.media
            : (media as Fragment$Media),
        options: options == _undefined || options == null
            ? _instance.options
            : (options as List<Fragment$RideOption>),
        description: description == _undefined
            ? _instance.description
            : (description as String?),
        personCapacity: personCapacity == _undefined
            ? _instance.personCapacity
            : (personCapacity as int?),
        prepayPercent: prepayPercent == _undefined || prepayPercent == null
            ? _instance.prepayPercent
            : (prepayPercent as int),
        paymentMethod: paymentMethod == _undefined || paymentMethod == null
            ? _instance.paymentMethod
            : (paymentMethod as Enum$ServicePaymentMethod),
        cost: cost == _undefined || cost == null
            ? _instance.cost
            : (cost as double),
        costAfterCoupon: costAfterCoupon == _undefined
            ? _instance.costAfterCoupon
            : (costAfterCoupon as double?),
        cancellationTotalFee:
            cancellationTotalFee == _undefined || cancellationTotalFee == null
                ? _instance.cancellationTotalFee
                : (cancellationTotalFee as double),
        twoWayAvailable:
            twoWayAvailable == _undefined || twoWayAvailable == null
                ? _instance.twoWayAvailable
                : (twoWayAvailable as bool),
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
    Fragment$Media? media,
    List<Fragment$RideOption>? options,
    String? description,
    int? personCapacity,
    int? prepayPercent,
    Enum$ServicePaymentMethod? paymentMethod,
    double? cost,
    double? costAfterCoupon,
    double? cancellationTotalFee,
    bool? twoWayAvailable,
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
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'personCapacity'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'prepayPercent'),
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
      name: NameNode(value: 'cost'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'costAfterCoupon'),
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
      name: NameNode(value: 'twoWayAvailable'),
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
