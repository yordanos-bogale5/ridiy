import 'media.fragment.graphql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Driver {
  Fragment$Driver({
    required this.id,
    this.firstName,
    this.lastName,
    this.media,
    required this.mobileNumber,
    this.carPlate,
    this.car,
    this.carColor,
    this.rating,
    required this.reviewCount,
    this.$__typename = 'Driver',
  });

  factory Fragment$Driver.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$firstName = json['firstName'];
    final l$lastName = json['lastName'];
    final l$media = json['media'];
    final l$mobileNumber = json['mobileNumber'];
    final l$carPlate = json['carPlate'];
    final l$car = json['car'];
    final l$carColor = json['carColor'];
    final l$rating = json['rating'];
    final l$reviewCount = json['reviewCount'];
    final l$$__typename = json['__typename'];
    return Fragment$Driver(
      id: (l$id as String),
      firstName: (l$firstName as String?),
      lastName: (l$lastName as String?),
      media: l$media == null
          ? null
          : Fragment$Media.fromJson((l$media as Map<String, dynamic>)),
      mobileNumber: (l$mobileNumber as String),
      carPlate: (l$carPlate as String?),
      car: l$car == null
          ? null
          : Fragment$Driver$car.fromJson((l$car as Map<String, dynamic>)),
      carColor: l$carColor == null
          ? null
          : Fragment$Driver$carColor.fromJson(
              (l$carColor as Map<String, dynamic>)),
      rating: (l$rating as int?),
      reviewCount: (l$reviewCount as num).toDouble(),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? firstName;

  final String? lastName;

  final Fragment$Media? media;

  final String mobileNumber;

  final String? carPlate;

  final Fragment$Driver$car? car;

  final Fragment$Driver$carColor? carColor;

  final int? rating;

  final double reviewCount;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$firstName = firstName;
    _resultData['firstName'] = l$firstName;
    final l$lastName = lastName;
    _resultData['lastName'] = l$lastName;
    final l$media = media;
    _resultData['media'] = l$media?.toJson();
    final l$mobileNumber = mobileNumber;
    _resultData['mobileNumber'] = l$mobileNumber;
    final l$carPlate = carPlate;
    _resultData['carPlate'] = l$carPlate;
    final l$car = car;
    _resultData['car'] = l$car?.toJson();
    final l$carColor = carColor;
    _resultData['carColor'] = l$carColor?.toJson();
    final l$rating = rating;
    _resultData['rating'] = l$rating;
    final l$reviewCount = reviewCount;
    _resultData['reviewCount'] = l$reviewCount;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$media = media;
    final l$mobileNumber = mobileNumber;
    final l$carPlate = carPlate;
    final l$car = car;
    final l$carColor = carColor;
    final l$rating = rating;
    final l$reviewCount = reviewCount;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$firstName,
      l$lastName,
      l$media,
      l$mobileNumber,
      l$carPlate,
      l$car,
      l$carColor,
      l$rating,
      l$reviewCount,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Driver || runtimeType != other.runtimeType) {
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
    final l$media = media;
    final lOther$media = other.media;
    if (l$media != lOther$media) {
      return false;
    }
    final l$mobileNumber = mobileNumber;
    final lOther$mobileNumber = other.mobileNumber;
    if (l$mobileNumber != lOther$mobileNumber) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (l$carPlate != lOther$carPlate) {
      return false;
    }
    final l$car = car;
    final lOther$car = other.car;
    if (l$car != lOther$car) {
      return false;
    }
    final l$carColor = carColor;
    final lOther$carColor = other.carColor;
    if (l$carColor != lOther$carColor) {
      return false;
    }
    final l$rating = rating;
    final lOther$rating = other.rating;
    if (l$rating != lOther$rating) {
      return false;
    }
    final l$reviewCount = reviewCount;
    final lOther$reviewCount = other.reviewCount;
    if (l$reviewCount != lOther$reviewCount) {
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

extension UtilityExtension$Fragment$Driver on Fragment$Driver {
  CopyWith$Fragment$Driver<Fragment$Driver> get copyWith =>
      CopyWith$Fragment$Driver(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Driver<TRes> {
  factory CopyWith$Fragment$Driver(
    Fragment$Driver instance,
    TRes Function(Fragment$Driver) then,
  ) = _CopyWithImpl$Fragment$Driver;

  factory CopyWith$Fragment$Driver.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Driver;

  TRes call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$Media? media,
    String? mobileNumber,
    String? carPlate,
    Fragment$Driver$car? car,
    Fragment$Driver$carColor? carColor,
    int? rating,
    double? reviewCount,
    String? $__typename,
  });
  CopyWith$Fragment$Media<TRes> get media;
  CopyWith$Fragment$Driver$car<TRes> get car;
  CopyWith$Fragment$Driver$carColor<TRes> get carColor;
}

class _CopyWithImpl$Fragment$Driver<TRes>
    implements CopyWith$Fragment$Driver<TRes> {
  _CopyWithImpl$Fragment$Driver(
    this._instance,
    this._then,
  );

  final Fragment$Driver _instance;

  final TRes Function(Fragment$Driver) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? media = _undefined,
    Object? mobileNumber = _undefined,
    Object? carPlate = _undefined,
    Object? car = _undefined,
    Object? carColor = _undefined,
    Object? rating = _undefined,
    Object? reviewCount = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Driver(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        firstName: firstName == _undefined
            ? _instance.firstName
            : (firstName as String?),
        lastName:
            lastName == _undefined ? _instance.lastName : (lastName as String?),
        media:
            media == _undefined ? _instance.media : (media as Fragment$Media?),
        mobileNumber: mobileNumber == _undefined || mobileNumber == null
            ? _instance.mobileNumber
            : (mobileNumber as String),
        carPlate:
            carPlate == _undefined ? _instance.carPlate : (carPlate as String?),
        car: car == _undefined ? _instance.car : (car as Fragment$Driver$car?),
        carColor: carColor == _undefined
            ? _instance.carColor
            : (carColor as Fragment$Driver$carColor?),
        rating: rating == _undefined ? _instance.rating : (rating as int?),
        reviewCount: reviewCount == _undefined || reviewCount == null
            ? _instance.reviewCount
            : (reviewCount as double),
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

  CopyWith$Fragment$Driver$car<TRes> get car {
    final local$car = _instance.car;
    return local$car == null
        ? CopyWith$Fragment$Driver$car.stub(_then(_instance))
        : CopyWith$Fragment$Driver$car(local$car, (e) => call(car: e));
  }

  CopyWith$Fragment$Driver$carColor<TRes> get carColor {
    final local$carColor = _instance.carColor;
    return local$carColor == null
        ? CopyWith$Fragment$Driver$carColor.stub(_then(_instance))
        : CopyWith$Fragment$Driver$carColor(
            local$carColor, (e) => call(carColor: e));
  }
}

class _CopyWithStubImpl$Fragment$Driver<TRes>
    implements CopyWith$Fragment$Driver<TRes> {
  _CopyWithStubImpl$Fragment$Driver(this._res);

  TRes _res;

  call({
    String? id,
    String? firstName,
    String? lastName,
    Fragment$Media? media,
    String? mobileNumber,
    String? carPlate,
    Fragment$Driver$car? car,
    Fragment$Driver$carColor? carColor,
    int? rating,
    double? reviewCount,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$Media<TRes> get media => CopyWith$Fragment$Media.stub(_res);

  CopyWith$Fragment$Driver$car<TRes> get car =>
      CopyWith$Fragment$Driver$car.stub(_res);

  CopyWith$Fragment$Driver$carColor<TRes> get carColor =>
      CopyWith$Fragment$Driver$carColor.stub(_res);
}

const fragmentDefinitionDriver = FragmentDefinitionNode(
  name: NameNode(value: 'Driver'),
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
      name: NameNode(value: 'mobileNumber'),
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
      name: NameNode(value: 'car'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
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
      name: NameNode(value: 'carColor'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'name'),
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
      name: NameNode(value: 'rating'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'reviewCount'),
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
const documentNodeFragmentDriver = DocumentNode(definitions: [
  fragmentDefinitionDriver,
  fragmentDefinitionMedia,
]);

extension ClientExtension$Fragment$Driver on graphql.GraphQLClient {
  void writeFragment$Driver({
    required Fragment$Driver data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Driver',
            document: documentNodeFragmentDriver,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Driver? readFragment$Driver({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Driver',
          document: documentNodeFragmentDriver,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Driver.fromJson(result);
  }
}

class Fragment$Driver$car {
  Fragment$Driver$car({
    required this.name,
    this.$__typename = 'CarModel',
  });

  factory Fragment$Driver$car.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$Driver$car(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Driver$car || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$Driver$car on Fragment$Driver$car {
  CopyWith$Fragment$Driver$car<Fragment$Driver$car> get copyWith =>
      CopyWith$Fragment$Driver$car(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Driver$car<TRes> {
  factory CopyWith$Fragment$Driver$car(
    Fragment$Driver$car instance,
    TRes Function(Fragment$Driver$car) then,
  ) = _CopyWithImpl$Fragment$Driver$car;

  factory CopyWith$Fragment$Driver$car.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Driver$car;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Driver$car<TRes>
    implements CopyWith$Fragment$Driver$car<TRes> {
  _CopyWithImpl$Fragment$Driver$car(
    this._instance,
    this._then,
  );

  final Fragment$Driver$car _instance;

  final TRes Function(Fragment$Driver$car) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Driver$car(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Driver$car<TRes>
    implements CopyWith$Fragment$Driver$car<TRes> {
  _CopyWithStubImpl$Fragment$Driver$car(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Fragment$Driver$carColor {
  Fragment$Driver$carColor({
    required this.name,
    this.$__typename = 'CarColor',
  });

  factory Fragment$Driver$carColor.fromJson(Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Fragment$Driver$carColor(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Driver$carColor ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
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

extension UtilityExtension$Fragment$Driver$carColor
    on Fragment$Driver$carColor {
  CopyWith$Fragment$Driver$carColor<Fragment$Driver$carColor> get copyWith =>
      CopyWith$Fragment$Driver$carColor(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Driver$carColor<TRes> {
  factory CopyWith$Fragment$Driver$carColor(
    Fragment$Driver$carColor instance,
    TRes Function(Fragment$Driver$carColor) then,
  ) = _CopyWithImpl$Fragment$Driver$carColor;

  factory CopyWith$Fragment$Driver$carColor.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Driver$carColor;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Driver$carColor<TRes>
    implements CopyWith$Fragment$Driver$carColor<TRes> {
  _CopyWithImpl$Fragment$Driver$carColor(
    this._instance,
    this._then,
  );

  final Fragment$Driver$carColor _instance;

  final TRes Function(Fragment$Driver$carColor) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Driver$carColor(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Driver$carColor<TRes>
    implements CopyWith$Fragment$Driver$carColor<TRes> {
  _CopyWithStubImpl$Fragment$Driver$carColor(this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
