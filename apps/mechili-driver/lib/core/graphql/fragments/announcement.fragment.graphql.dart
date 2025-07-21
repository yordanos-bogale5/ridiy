import '../schema.gql.dart';
import 'package:flutter_common/core/graphql/scalars/datetime.dart';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Fragment$Announcement {
  Fragment$Announcement({
    required this.id,
    required this.userType,
    required this.title,
    required this.description,
    required this.startAt,
    required this.expireAt,
    this.url,
    this.$__typename = 'Announcement',
  });

  factory Fragment$Announcement.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$userType = json['userType'];
    final l$title = json['title'];
    final l$description = json['description'];
    final l$startAt = json['startAt'];
    final l$expireAt = json['expireAt'];
    final l$url = json['url'];
    final l$$__typename = json['__typename'];
    return Fragment$Announcement(
      id: (l$id as String),
      userType: (l$userType as List<dynamic>)
          .map((e) => fromJson$Enum$AnnouncementUserType((e as String)))
          .toList(),
      title: (l$title as String),
      description: (l$description as String),
      startAt: fromGraphQLDateTimeToDartDateTime(l$startAt),
      expireAt: fromGraphQLDateTimeToDartDateTime(l$expireAt),
      url: (l$url as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final List<Enum$AnnouncementUserType> userType;

  final String title;

  final String description;

  final DateTime startAt;

  final DateTime expireAt;

  final String? url;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$userType = userType;
    _resultData['userType'] =
        l$userType.map((e) => toJson$Enum$AnnouncementUserType(e)).toList();
    final l$title = title;
    _resultData['title'] = l$title;
    final l$description = description;
    _resultData['description'] = l$description;
    final l$startAt = startAt;
    _resultData['startAt'] = fromDartDateTimeToGraphQLDateTime(l$startAt);
    final l$expireAt = expireAt;
    _resultData['expireAt'] = fromDartDateTimeToGraphQLDateTime(l$expireAt);
    final l$url = url;
    _resultData['url'] = l$url;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$userType = userType;
    final l$title = title;
    final l$description = description;
    final l$startAt = startAt;
    final l$expireAt = expireAt;
    final l$url = url;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$userType.map((v) => v)),
      l$title,
      l$description,
      l$startAt,
      l$expireAt,
      l$url,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Fragment$Announcement || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$userType = userType;
    final lOther$userType = other.userType;
    if (l$userType.length != lOther$userType.length) {
      return false;
    }
    for (int i = 0; i < l$userType.length; i++) {
      final l$userType$entry = l$userType[i];
      final lOther$userType$entry = lOther$userType[i];
      if (l$userType$entry != lOther$userType$entry) {
        return false;
      }
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$startAt = startAt;
    final lOther$startAt = other.startAt;
    if (l$startAt != lOther$startAt) {
      return false;
    }
    final l$expireAt = expireAt;
    final lOther$expireAt = other.expireAt;
    if (l$expireAt != lOther$expireAt) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
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

extension UtilityExtension$Fragment$Announcement on Fragment$Announcement {
  CopyWith$Fragment$Announcement<Fragment$Announcement> get copyWith =>
      CopyWith$Fragment$Announcement(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Fragment$Announcement<TRes> {
  factory CopyWith$Fragment$Announcement(
    Fragment$Announcement instance,
    TRes Function(Fragment$Announcement) then,
  ) = _CopyWithImpl$Fragment$Announcement;

  factory CopyWith$Fragment$Announcement.stub(TRes res) =
      _CopyWithStubImpl$Fragment$Announcement;

  TRes call({
    String? id,
    List<Enum$AnnouncementUserType>? userType,
    String? title,
    String? description,
    DateTime? startAt,
    DateTime? expireAt,
    String? url,
    String? $__typename,
  });
}

class _CopyWithImpl$Fragment$Announcement<TRes>
    implements CopyWith$Fragment$Announcement<TRes> {
  _CopyWithImpl$Fragment$Announcement(
    this._instance,
    this._then,
  );

  final Fragment$Announcement _instance;

  final TRes Function(Fragment$Announcement) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? userType = _undefined,
    Object? title = _undefined,
    Object? description = _undefined,
    Object? startAt = _undefined,
    Object? expireAt = _undefined,
    Object? url = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Fragment$Announcement(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        userType: userType == _undefined || userType == null
            ? _instance.userType
            : (userType as List<Enum$AnnouncementUserType>),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        description: description == _undefined || description == null
            ? _instance.description
            : (description as String),
        startAt: startAt == _undefined || startAt == null
            ? _instance.startAt
            : (startAt as DateTime),
        expireAt: expireAt == _undefined || expireAt == null
            ? _instance.expireAt
            : (expireAt as DateTime),
        url: url == _undefined ? _instance.url : (url as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Fragment$Announcement<TRes>
    implements CopyWith$Fragment$Announcement<TRes> {
  _CopyWithStubImpl$Fragment$Announcement(this._res);

  TRes _res;

  call({
    String? id,
    List<Enum$AnnouncementUserType>? userType,
    String? title,
    String? description,
    DateTime? startAt,
    DateTime? expireAt,
    String? url,
    String? $__typename,
  }) =>
      _res;
}

const fragmentDefinitionAnnouncement = FragmentDefinitionNode(
  name: NameNode(value: 'Announcement'),
  typeCondition: TypeConditionNode(
      on: NamedTypeNode(
    name: NameNode(value: 'Announcement'),
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
      name: NameNode(value: 'userType'),
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
      name: NameNode(value: 'description'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'startAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'expireAt'),
      alias: null,
      arguments: [],
      directives: [],
      selectionSet: null,
    ),
    FieldNode(
      name: NameNode(value: 'url'),
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
const documentNodeFragmentAnnouncement = DocumentNode(definitions: [
  fragmentDefinitionAnnouncement,
]);

extension ClientExtension$Fragment$Announcement on graphql.GraphQLClient {
  void writeFragment$Announcement({
    required Fragment$Announcement data,
    required Map<String, dynamic> idFields,
    bool broadcast = true,
  }) =>
      this.writeFragment(
        graphql.FragmentRequest(
          idFields: idFields,
          fragment: const graphql.Fragment(
            fragmentName: 'Announcement',
            document: documentNodeFragmentAnnouncement,
          ),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Fragment$Announcement? readFragment$Announcement({
    required Map<String, dynamic> idFields,
    bool optimistic = true,
  }) {
    final result = this.readFragment(
      graphql.FragmentRequest(
        idFields: idFields,
        fragment: const graphql.Fragment(
          fragmentName: 'Announcement',
          document: documentNodeFragmentAnnouncement,
        ),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Fragment$Announcement.fromJson(result);
  }
}
