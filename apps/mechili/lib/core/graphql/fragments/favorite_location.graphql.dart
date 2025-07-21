import '../schema.gql.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'point.fragment.graphql.dart';

class Fragment$FavoriteLocation {
  Fragment$FavoriteLocation({
    required this.id,
    required this.title,
    required this.type,
    required this.details,
    required this.phoneNumber,
    required this.location,
    this.$__typename = 'RiderAddress',
  });

  factory Fragment$FavoriteLocation.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$type = json['type'];
    final l$details = json['details'];
    final l$phoneNumber = json['phoneNumber'];
    final l$location = json['location'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteLocation(
      id: (l$id as String),
      title: (l$title as String),
      type: fromJson$Enum$RiderAddressType((l$type as String)),
      details: (l$details as String),
      phoneNumber: Fragment$FavoriteLocation$phoneNumber.fromJson(
          (l$phoneNumber as Map<String, dynamic>)),
      location: Fragment$Point.fromJson((l$location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final Enum$RiderAddressType type;

  final String details;

  final Fragment$FavoriteLocation$phoneNumber phoneNumber;

  final Fragment$Point location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$type = type;
    _resultData['type'] = toJson$Enum$RiderAddressType(l$type);
    final l$details = details;
    _resultData['details'] = l$details;
    final l$phoneNumber = phoneNumber;
    _resultData['phoneNumber'] = l$phoneNumber.toJson();
    final l$location = location;
    _resultData['location'] = l$location.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$type = type;
    final l$details = details;
    final l$phoneNumber = phoneNumber;
    final l$location = location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$type,
      l$details,
      l$phoneNumber,
      l$location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteLocation ||
        runtimeType != other.runtimeType) {
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
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
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

extension UtilityExtension$Fragment$FavoriteLocation
    on Fragment$FavoriteLocation {
  CopyWith$Fragment$FavoriteLocation<Fragment$FavoriteLocation> get copyWith =>
      CopyWith$Fragment$FavoriteLocation(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$FavoriteLocation<TRes> {
  factory CopyWith$Fragment$FavoriteLocation(
    Fragment$FavoriteLocation instance,
    TRes Function(Fragment$FavoriteLocation) then,
  ) = _CopyWithImpl$Fragment$FavoriteLocation;

  factory CopyWith$Fragment$FavoriteLocation.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteLocation;

  TRes call({
    String? id,
    String? title,
    Enum$RiderAddressType? type,
    String? details,
    Fragment$FavoriteLocation$phoneNumber? phoneNumber,
    Fragment$Point? location,
    String? $__typename,
  });
  CopyWith$Fragment$FavoriteLocation$phoneNumber<TRes> get phoneNumber;
  CopyWith$Fragment$Point<TRes> get location;
}

class _CopyWithImpl$Fragment$FavoriteLocation<TRes>
    implements CopyWith$Fragment$FavoriteLocation<TRes> {
  _CopyWithImpl$Fragment$FavoriteLocation(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteLocation _instance;

  final TRes Function(Fragment$FavoriteLocation) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? type = _undefined,
    Object? details = _undefined,
    Object? phoneNumber = _undefined,
    Object? location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteLocation(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        type: type == _undefined || type == null
            ? _instance.type
            : (type as Enum$RiderAddressType),
        details: details == _undefined || details == null
            ? _instance.details
            : (details as String),
        phoneNumber: phoneNumber == _undefined || phoneNumber == null
            ? _instance.phoneNumber
            : (phoneNumber as Fragment$FavoriteLocation$phoneNumber),
        location: location == _undefined || location == null
            ? _instance.location
            : (location as Fragment$Point),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Fragment$FavoriteLocation$phoneNumber<TRes> get phoneNumber {
    final local$phoneNumber = _instance.phoneNumber;
    return CopyWith$Fragment$FavoriteLocation$phoneNumber(
        local$phoneNumber, (e) => call(phoneNumber: e));
  }

  CopyWith$Fragment$Point<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Fragment$Point(local$location, (e) => call(location: e));
  }
}

class _CopyWithStubImpl$Fragment$FavoriteLocation<TRes>
    implements CopyWith$Fragment$FavoriteLocation<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteLocation(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    Enum$RiderAddressType? type,
    String? details,
    Fragment$FavoriteLocation$phoneNumber? phoneNumber,
    Fragment$Point? location,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Fragment$FavoriteLocation$phoneNumber<TRes> get phoneNumber =>
      CopyWith$Fragment$FavoriteLocation$phoneNumber.stub(_res);

  CopyWith$Fragment$Point<TRes> get location =>
      CopyWith$Fragment$Point.stub(_res);
}

const fragmentDefinitionFavoriteLocation = FragmentDefinitionNode(
  name: NameNode(value: 'FavoriteLocation'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'RiderAddress'),
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
      name: NameNode(value: 'details'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'phoneNumber'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
          name: NameNode(value: 'countryCode'),
          alias: null,
          arguments: [],
          directives: [],
          selectionSet: null,
        ),
        FieldNode(
          name: NameNode(value: 'number'),
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
      name: NameNode(value: 'location'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FragmentSpreadNode(
          name: NameNode(value: 'Point'),
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
const documentNodeFragmentFavoriteLocation = DocumentNode(definitions: [
  fragmentDefinitionFavoriteLocation,
  fragmentDefinitionPoint,
]);

extension ClientExtension$Fragment$FavoriteLocation on graphql.GraphQLClient {
  void writeFragment$FavoriteLocation({
    required Fragment$FavoriteLocation data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'FavoriteLocation',
            document: documentNodeFragmentFavoriteLocation,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$FavoriteLocation? readFragment$FavoriteLocation({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'FavoriteLocation',
          document: documentNodeFragmentFavoriteLocation,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$FavoriteLocation.fromJson(result);
  }
}

class Fragment$FavoriteLocation$phoneNumber {
  Fragment$FavoriteLocation$phoneNumber({
    required this.countryCode,
    required this.number,
    this.$__typename = 'PhoneNumber',
  });

  factory Fragment$FavoriteLocation$phoneNumber.fromJson(
      Map<String, dynamic> json) {
    final l$countryCode = json['countryCode'];
    final l$number = json['number'];
    final l$$__typename = json['__typename'];
    return Fragment$FavoriteLocation$phoneNumber(
      countryCode: (l$countryCode as String),
      number: (l$number as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String countryCode;

  final String number;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$countryCode = countryCode;
    _resultData['countryCode'] = l$countryCode;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    final l$number = number;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$countryCode,
      l$number,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$FavoriteLocation$phoneNumber ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$countryCode = countryCode;
    final lOther$countryCode = other.countryCode;
    if (l$countryCode != lOther$countryCode) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
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

extension UtilityExtension$Fragment$FavoriteLocation$phoneNumber
    on Fragment$FavoriteLocation$phoneNumber {
  CopyWith$Fragment$FavoriteLocation$phoneNumber<
          Fragment$FavoriteLocation$phoneNumber>
      get copyWith => CopyWith$Fragment$FavoriteLocation$phoneNumber(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Fragment$FavoriteLocation$phoneNumber<TRes> {
  factory CopyWith$Fragment$FavoriteLocation$phoneNumber(
    Fragment$FavoriteLocation$phoneNumber instance,
    TRes Function(Fragment$FavoriteLocation$phoneNumber) then,
  ) = _CopyWithImpl$Fragment$FavoriteLocation$phoneNumber;

  factory CopyWith$Fragment$FavoriteLocation$phoneNumber.stub(TRes res) =
      _CopyWithStubImpl$Fragment$FavoriteLocation$phoneNumber;

  TRes call({
    String? countryCode,
    String? number,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$FavoriteLocation$phoneNumber<TRes>
    implements CopyWith$Fragment$FavoriteLocation$phoneNumber<TRes> {
  _CopyWithImpl$Fragment$FavoriteLocation$phoneNumber(
    this._instance,
    this._then,
  );

  final Fragment$FavoriteLocation$phoneNumber _instance;

  final TRes Function(Fragment$FavoriteLocation$phoneNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryCode = _undefined,
    Object? number = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$FavoriteLocation$phoneNumber(
        countryCode: countryCode == _undefined || countryCode == null
            ? _instance.countryCode
            : (countryCode as String),
        number: number == _undefined || number == null
            ? _instance.number
            : (number as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$FavoriteLocation$phoneNumber<TRes>
    implements CopyWith$Fragment$FavoriteLocation$phoneNumber<TRes> {
  _CopyWithStubImpl$Fragment$FavoriteLocation$phoneNumber(this._res);

  TRes _res;

  call({
    String? countryCode,
    String? number,
    String? $__typename,
  }) =>
      _res;
}
