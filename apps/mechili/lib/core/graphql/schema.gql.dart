import 'package:flutter_common/core/graphql/scalars/connection_cursor.dart';
import 'package:flutter_common/core/graphql/scalars/datetime.dart';

class Input$ServiceOptionFilter {
  factory Input$ServiceOptionFilter({
    List<Input$ServiceOptionFilter>? and,
    List<Input$ServiceOptionFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$ServiceOptionFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$ServiceOptionFilter._(this._$data);

  factory Input$ServiceOptionFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$ServiceOptionFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$ServiceOptionFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$ServiceOptionFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServiceOptionFilter>? get and =>
      (_$data['and'] as List<Input$ServiceOptionFilter>?);

  List<Input$ServiceOptionFilter>? get or =>
      (_$data['or'] as List<Input$ServiceOptionFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ServiceOptionFilter<Input$ServiceOptionFilter> get copyWith =>
      CopyWith$Input$ServiceOptionFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ServiceOptionFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceOptionFilter<TRes> {
  factory CopyWith$Input$ServiceOptionFilter(
    Input$ServiceOptionFilter instance,
    TRes Function(Input$ServiceOptionFilter) then,
  ) = _CopyWithImpl$Input$ServiceOptionFilter;

  factory CopyWith$Input$ServiceOptionFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceOptionFilter;

  TRes call({
    List<Input$ServiceOptionFilter>? and,
    List<Input$ServiceOptionFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$ServiceOptionFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionFilter<
                      Input$ServiceOptionFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$ServiceOptionFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionFilter<
                      Input$ServiceOptionFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$ServiceOptionFilter<TRes>
    implements CopyWith$Input$ServiceOptionFilter<TRes> {
  _CopyWithImpl$Input$ServiceOptionFilter(
    this._instance,
    this._then,
  );

  final Input$ServiceOptionFilter _instance;

  final TRes Function(Input$ServiceOptionFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$ServiceOptionFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$ServiceOptionFilter>?),
        if (or != _undefined) 'or': (or as List<Input$ServiceOptionFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$ServiceOptionFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionFilter<
                          Input$ServiceOptionFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$ServiceOptionFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$ServiceOptionFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionFilter<
                          Input$ServiceOptionFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$ServiceOptionFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$ServiceOptionFilter<TRes>
    implements CopyWith$Input$ServiceOptionFilter<TRes> {
  _CopyWithStubImpl$Input$ServiceOptionFilter(this._res);

  TRes _res;

  call({
    List<Input$ServiceOptionFilter>? and,
    List<Input$ServiceOptionFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$IDFilterComparison {
  factory Input$IDFilterComparison({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  }) =>
      Input$IDFilterComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$IDFilterComparison._(this._$data);

  factory Input$IDFilterComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = (l$notLike as String?);
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = (l$iLike as String?);
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = (l$notILike as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$IDFilterComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get notLike => (_$data['notLike'] as String?);

  String? get iLike => (_$data['iLike'] as String?);

  String? get notILike => (_$data['notILike'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  List<String>? get notIn => (_$data['notIn'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] = l$notLike;
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] = l$iLike;
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] = l$notILike;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$IDFilterComparison<Input$IDFilterComparison> get copyWith =>
      CopyWith$Input$IDFilterComparison(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$IDFilterComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$IDFilterComparison<TRes> {
  factory CopyWith$Input$IDFilterComparison(
    Input$IDFilterComparison instance,
    TRes Function(Input$IDFilterComparison) then,
  ) = _CopyWithImpl$Input$IDFilterComparison;

  factory CopyWith$Input$IDFilterComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$IDFilterComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  });
}

class _CopyWithImpl$Input$IDFilterComparison<TRes>
    implements CopyWith$Input$IDFilterComparison<TRes> {
  _CopyWithImpl$Input$IDFilterComparison(
    this._instance,
    this._then,
  );

  final Input$IDFilterComparison _instance;

  final TRes Function(Input$IDFilterComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$IDFilterComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (like != _undefined) 'like': (like as String?),
        if (notLike != _undefined) 'notLike': (notLike as String?),
        if (iLike != _undefined) 'iLike': (iLike as String?),
        if (notILike != _undefined) 'notILike': (notILike as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$IDFilterComparison<TRes>
    implements CopyWith$Input$IDFilterComparison<TRes> {
  _CopyWithStubImpl$Input$IDFilterComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  }) =>
      _res;
}

class Input$ServiceOptionSort {
  factory Input$ServiceOptionSort({
    required Enum$ServiceOptionSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$ServiceOptionSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$ServiceOptionSort._(this._$data);

  factory Input$ServiceOptionSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$ServiceOptionSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$ServiceOptionSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ServiceOptionSortFields get field =>
      (_$data['field'] as Enum$ServiceOptionSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$ServiceOptionSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$ServiceOptionSort<Input$ServiceOptionSort> get copyWith =>
      CopyWith$Input$ServiceOptionSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ServiceOptionSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceOptionSort<TRes> {
  factory CopyWith$Input$ServiceOptionSort(
    Input$ServiceOptionSort instance,
    TRes Function(Input$ServiceOptionSort) then,
  ) = _CopyWithImpl$Input$ServiceOptionSort;

  factory CopyWith$Input$ServiceOptionSort.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceOptionSort;

  TRes call({
    Enum$ServiceOptionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$ServiceOptionSort<TRes>
    implements CopyWith$Input$ServiceOptionSort<TRes> {
  _CopyWithImpl$Input$ServiceOptionSort(
    this._instance,
    this._then,
  );

  final Input$ServiceOptionSort _instance;

  final TRes Function(Input$ServiceOptionSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$ServiceOptionSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$ServiceOptionSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$ServiceOptionSort<TRes>
    implements CopyWith$Input$ServiceOptionSort<TRes> {
  _CopyWithStubImpl$Input$ServiceOptionSort(this._res);

  TRes _res;

  call({
    Enum$ServiceOptionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$DriverServicesServiceDTOFilter {
  factory Input$DriverServicesServiceDTOFilter({
    List<Input$DriverServicesServiceDTOFilter>? and,
    List<Input$DriverServicesServiceDTOFilter>? or,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? serviceId,
  }) =>
      Input$DriverServicesServiceDTOFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (driverId != null) r'driverId': driverId,
        if (serviceId != null) r'serviceId': serviceId,
      });

  Input$DriverServicesServiceDTOFilter._(this._$data);

  factory Input$DriverServicesServiceDTOFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DriverServicesServiceDTOFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DriverServicesServiceDTOFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    if (data.containsKey('serviceId')) {
      final l$serviceId = data['serviceId'];
      result$data['serviceId'] = l$serviceId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$serviceId as Map<String, dynamic>));
    }
    return Input$DriverServicesServiceDTOFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverServicesServiceDTOFilter>? get and =>
      (_$data['and'] as List<Input$DriverServicesServiceDTOFilter>?);

  List<Input$DriverServicesServiceDTOFilter>? get or =>
      (_$data['or'] as List<Input$DriverServicesServiceDTOFilter>?);

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get serviceId =>
      (_$data['serviceId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    if (_$data.containsKey('serviceId')) {
      final l$serviceId = serviceId;
      result$data['serviceId'] = l$serviceId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverServicesServiceDTOFilter<
          Input$DriverServicesServiceDTOFilter>
      get copyWith => CopyWith$Input$DriverServicesServiceDTOFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverServicesServiceDTOFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (_$data.containsKey('serviceId') !=
        other._$data.containsKey('serviceId')) {
      return false;
    }
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$driverId = driverId;
    final l$serviceId = serviceId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
      _$data.containsKey('serviceId') ? l$serviceId : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverServicesServiceDTOFilter<TRes> {
  factory CopyWith$Input$DriverServicesServiceDTOFilter(
    Input$DriverServicesServiceDTOFilter instance,
    TRes Function(Input$DriverServicesServiceDTOFilter) then,
  ) = _CopyWithImpl$Input$DriverServicesServiceDTOFilter;

  factory CopyWith$Input$DriverServicesServiceDTOFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverServicesServiceDTOFilter;

  TRes call({
    List<Input$DriverServicesServiceDTOFilter>? and,
    List<Input$DriverServicesServiceDTOFilter>? or,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? serviceId,
  });
  TRes and(
      Iterable<Input$DriverServicesServiceDTOFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverServicesServiceDTOFilter<
                      Input$DriverServicesServiceDTOFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverServicesServiceDTOFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverServicesServiceDTOFilter<
                      Input$DriverServicesServiceDTOFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
  CopyWith$Input$IDFilterComparison<TRes> get serviceId;
}

class _CopyWithImpl$Input$DriverServicesServiceDTOFilter<TRes>
    implements CopyWith$Input$DriverServicesServiceDTOFilter<TRes> {
  _CopyWithImpl$Input$DriverServicesServiceDTOFilter(
    this._instance,
    this._then,
  );

  final Input$DriverServicesServiceDTOFilter _instance;

  final TRes Function(Input$DriverServicesServiceDTOFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? driverId = _undefined,
    Object? serviceId = _undefined,
  }) =>
      _then(Input$DriverServicesServiceDTOFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DriverServicesServiceDTOFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$DriverServicesServiceDTOFilter>?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
        if (serviceId != _undefined)
          'serviceId': (serviceId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$DriverServicesServiceDTOFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverServicesServiceDTOFilter<
                          Input$DriverServicesServiceDTOFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$DriverServicesServiceDTOFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$DriverServicesServiceDTOFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverServicesServiceDTOFilter<
                          Input$DriverServicesServiceDTOFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$DriverServicesServiceDTOFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get serviceId {
    final local$serviceId = _instance.serviceId;
    return local$serviceId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$serviceId, (e) => call(serviceId: e));
  }
}

class _CopyWithStubImpl$Input$DriverServicesServiceDTOFilter<TRes>
    implements CopyWith$Input$DriverServicesServiceDTOFilter<TRes> {
  _CopyWithStubImpl$Input$DriverServicesServiceDTOFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverServicesServiceDTOFilter>? and,
    List<Input$DriverServicesServiceDTOFilter>? or,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? serviceId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get serviceId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$DriverServicesServiceDTOSort {
  factory Input$DriverServicesServiceDTOSort({
    required Enum$DriverServicesServiceDTOSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$DriverServicesServiceDTOSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$DriverServicesServiceDTOSort._(this._$data);

  factory Input$DriverServicesServiceDTOSort.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$DriverServicesServiceDTOSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$DriverServicesServiceDTOSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverServicesServiceDTOSortFields get field =>
      (_$data['field'] as Enum$DriverServicesServiceDTOSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] =
        toJson$Enum$DriverServicesServiceDTOSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$DriverServicesServiceDTOSort<
          Input$DriverServicesServiceDTOSort>
      get copyWith => CopyWith$Input$DriverServicesServiceDTOSort(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverServicesServiceDTOSort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverServicesServiceDTOSort<TRes> {
  factory CopyWith$Input$DriverServicesServiceDTOSort(
    Input$DriverServicesServiceDTOSort instance,
    TRes Function(Input$DriverServicesServiceDTOSort) then,
  ) = _CopyWithImpl$Input$DriverServicesServiceDTOSort;

  factory CopyWith$Input$DriverServicesServiceDTOSort.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverServicesServiceDTOSort;

  TRes call({
    Enum$DriverServicesServiceDTOSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$DriverServicesServiceDTOSort<TRes>
    implements CopyWith$Input$DriverServicesServiceDTOSort<TRes> {
  _CopyWithImpl$Input$DriverServicesServiceDTOSort(
    this._instance,
    this._then,
  );

  final Input$DriverServicesServiceDTOSort _instance;

  final TRes Function(Input$DriverServicesServiceDTOSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$DriverServicesServiceDTOSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$DriverServicesServiceDTOSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$DriverServicesServiceDTOSort<TRes>
    implements CopyWith$Input$DriverServicesServiceDTOSort<TRes> {
  _CopyWithStubImpl$Input$DriverServicesServiceDTOSort(this._res);

  TRes _res;

  call({
    Enum$DriverServicesServiceDTOSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OrderMessageFilter {
  factory Input$OrderMessageFilter({
    List<Input$OrderMessageFilter>? and,
    List<Input$OrderMessageFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      Input$OrderMessageFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (requestId != null) r'requestId': requestId,
      });

  Input$OrderMessageFilter._(this._$data);

  factory Input$OrderMessageFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$OrderMessageFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$OrderMessageFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('requestId')) {
      final l$requestId = data['requestId'];
      result$data['requestId'] = l$requestId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$requestId as Map<String, dynamic>));
    }
    return Input$OrderMessageFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderMessageFilter>? get and =>
      (_$data['and'] as List<Input$OrderMessageFilter>?);

  List<Input$OrderMessageFilter>? get or =>
      (_$data['or'] as List<Input$OrderMessageFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get requestId =>
      (_$data['requestId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('requestId')) {
      final l$requestId = requestId;
      result$data['requestId'] = l$requestId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderMessageFilter<Input$OrderMessageFilter> get copyWith =>
      CopyWith$Input$OrderMessageFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderMessageFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (_$data.containsKey('requestId') !=
        other._$data.containsKey('requestId')) {
      return false;
    }
    if (l$requestId != lOther$requestId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$requestId = requestId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('requestId') ? l$requestId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderMessageFilter<TRes> {
  factory CopyWith$Input$OrderMessageFilter(
    Input$OrderMessageFilter instance,
    TRes Function(Input$OrderMessageFilter) then,
  ) = _CopyWithImpl$Input$OrderMessageFilter;

  factory CopyWith$Input$OrderMessageFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageFilter;

  TRes call({
    List<Input$OrderMessageFilter>? and,
    List<Input$OrderMessageFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  });
  TRes and(
      Iterable<Input$OrderMessageFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageFilter<Input$OrderMessageFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderMessageFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageFilter<Input$OrderMessageFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get requestId;
}

class _CopyWithImpl$Input$OrderMessageFilter<TRes>
    implements CopyWith$Input$OrderMessageFilter<TRes> {
  _CopyWithImpl$Input$OrderMessageFilter(
    this._instance,
    this._then,
  );

  final Input$OrderMessageFilter _instance;

  final TRes Function(Input$OrderMessageFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? requestId = _undefined,
  }) =>
      _then(Input$OrderMessageFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$OrderMessageFilter>?),
        if (or != _undefined) 'or': (or as List<Input$OrderMessageFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (requestId != _undefined)
          'requestId': (requestId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$OrderMessageFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageFilter<
                          Input$OrderMessageFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$OrderMessageFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$OrderMessageFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageFilter<
                          Input$OrderMessageFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$OrderMessageFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get requestId {
    final local$requestId = _instance.requestId;
    return local$requestId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$requestId, (e) => call(requestId: e));
  }
}

class _CopyWithStubImpl$Input$OrderMessageFilter<TRes>
    implements CopyWith$Input$OrderMessageFilter<TRes> {
  _CopyWithStubImpl$Input$OrderMessageFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderMessageFilter>? and,
    List<Input$OrderMessageFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get requestId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderMessageSort {
  factory Input$OrderMessageSort({
    required Enum$OrderMessageSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$OrderMessageSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$OrderMessageSort._(this._$data);

  factory Input$OrderMessageSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$OrderMessageSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$OrderMessageSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderMessageSortFields get field =>
      (_$data['field'] as Enum$OrderMessageSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$OrderMessageSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$OrderMessageSort<Input$OrderMessageSort> get copyWith =>
      CopyWith$Input$OrderMessageSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderMessageSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderMessageSort<TRes> {
  factory CopyWith$Input$OrderMessageSort(
    Input$OrderMessageSort instance,
    TRes Function(Input$OrderMessageSort) then,
  ) = _CopyWithImpl$Input$OrderMessageSort;

  factory CopyWith$Input$OrderMessageSort.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageSort;

  TRes call({
    Enum$OrderMessageSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$OrderMessageSort<TRes>
    implements CopyWith$Input$OrderMessageSort<TRes> {
  _CopyWithImpl$Input$OrderMessageSort(
    this._instance,
    this._then,
  );

  final Input$OrderMessageSort _instance;

  final TRes Function(Input$OrderMessageSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$OrderMessageSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$OrderMessageSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$OrderMessageSort<TRes>
    implements CopyWith$Input$OrderMessageSort<TRes> {
  _CopyWithStubImpl$Input$OrderMessageSort(this._res);

  TRes _res;

  call({
    Enum$OrderMessageSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$TaxiOrderShopDTOFilter {
  factory Input$TaxiOrderShopDTOFilter({
    List<Input$TaxiOrderShopDTOFilter>? and,
    List<Input$TaxiOrderShopDTOFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$TaxiOrderShopDTOFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$TaxiOrderShopDTOFilter._(this._$data);

  factory Input$TaxiOrderShopDTOFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$TaxiOrderShopDTOFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$TaxiOrderShopDTOFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$TaxiOrderShopDTOFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$TaxiOrderShopDTOFilter>? get and =>
      (_$data['and'] as List<Input$TaxiOrderShopDTOFilter>?);

  List<Input$TaxiOrderShopDTOFilter>? get or =>
      (_$data['or'] as List<Input$TaxiOrderShopDTOFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$TaxiOrderShopDTOFilter<Input$TaxiOrderShopDTOFilter>
      get copyWith => CopyWith$Input$TaxiOrderShopDTOFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TaxiOrderShopDTOFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$TaxiOrderShopDTOFilter<TRes> {
  factory CopyWith$Input$TaxiOrderShopDTOFilter(
    Input$TaxiOrderShopDTOFilter instance,
    TRes Function(Input$TaxiOrderShopDTOFilter) then,
  ) = _CopyWithImpl$Input$TaxiOrderShopDTOFilter;

  factory CopyWith$Input$TaxiOrderShopDTOFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$TaxiOrderShopDTOFilter;

  TRes call({
    List<Input$TaxiOrderShopDTOFilter>? and,
    List<Input$TaxiOrderShopDTOFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$TaxiOrderShopDTOFilter>? Function(
              Iterable<
                  CopyWith$Input$TaxiOrderShopDTOFilter<
                      Input$TaxiOrderShopDTOFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$TaxiOrderShopDTOFilter>? Function(
              Iterable<
                  CopyWith$Input$TaxiOrderShopDTOFilter<
                      Input$TaxiOrderShopDTOFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$TaxiOrderShopDTOFilter<TRes>
    implements CopyWith$Input$TaxiOrderShopDTOFilter<TRes> {
  _CopyWithImpl$Input$TaxiOrderShopDTOFilter(
    this._instance,
    this._then,
  );

  final Input$TaxiOrderShopDTOFilter _instance;

  final TRes Function(Input$TaxiOrderShopDTOFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$TaxiOrderShopDTOFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$TaxiOrderShopDTOFilter>?),
        if (or != _undefined) 'or': (or as List<Input$TaxiOrderShopDTOFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$TaxiOrderShopDTOFilter>? Function(
                  Iterable<
                      CopyWith$Input$TaxiOrderShopDTOFilter<
                          Input$TaxiOrderShopDTOFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$TaxiOrderShopDTOFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$TaxiOrderShopDTOFilter>? Function(
                  Iterable<
                      CopyWith$Input$TaxiOrderShopDTOFilter<
                          Input$TaxiOrderShopDTOFilter>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$TaxiOrderShopDTOFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$TaxiOrderShopDTOFilter<TRes>
    implements CopyWith$Input$TaxiOrderShopDTOFilter<TRes> {
  _CopyWithStubImpl$Input$TaxiOrderShopDTOFilter(this._res);

  TRes _res;

  call({
    List<Input$TaxiOrderShopDTOFilter>? and,
    List<Input$TaxiOrderShopDTOFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$TaxiOrderShopDTOSort {
  factory Input$TaxiOrderShopDTOSort({
    required Enum$TaxiOrderShopDTOSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$TaxiOrderShopDTOSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$TaxiOrderShopDTOSort._(this._$data);

  factory Input$TaxiOrderShopDTOSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$TaxiOrderShopDTOSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$TaxiOrderShopDTOSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TaxiOrderShopDTOSortFields get field =>
      (_$data['field'] as Enum$TaxiOrderShopDTOSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$TaxiOrderShopDTOSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$TaxiOrderShopDTOSort<Input$TaxiOrderShopDTOSort>
      get copyWith => CopyWith$Input$TaxiOrderShopDTOSort(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TaxiOrderShopDTOSort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$TaxiOrderShopDTOSort<TRes> {
  factory CopyWith$Input$TaxiOrderShopDTOSort(
    Input$TaxiOrderShopDTOSort instance,
    TRes Function(Input$TaxiOrderShopDTOSort) then,
  ) = _CopyWithImpl$Input$TaxiOrderShopDTOSort;

  factory CopyWith$Input$TaxiOrderShopDTOSort.stub(TRes res) =
      _CopyWithStubImpl$Input$TaxiOrderShopDTOSort;

  TRes call({
    Enum$TaxiOrderShopDTOSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$TaxiOrderShopDTOSort<TRes>
    implements CopyWith$Input$TaxiOrderShopDTOSort<TRes> {
  _CopyWithImpl$Input$TaxiOrderShopDTOSort(
    this._instance,
    this._then,
  );

  final Input$TaxiOrderShopDTOSort _instance;

  final TRes Function(Input$TaxiOrderShopDTOSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$TaxiOrderShopDTOSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$TaxiOrderShopDTOSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$TaxiOrderShopDTOSort<TRes>
    implements CopyWith$Input$TaxiOrderShopDTOSort<TRes> {
  _CopyWithStubImpl$Input$TaxiOrderShopDTOSort(this._res);

  TRes _res;

  call({
    Enum$TaxiOrderShopDTOSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$DriverAggregateFilter {
  factory Input$DriverAggregateFilter({
    List<Input$DriverAggregateFilter>? and,
    List<Input$DriverAggregateFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$DriverAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$DriverAggregateFilter._(this._$data);

  factory Input$DriverAggregateFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$DriverAggregateFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$DriverAggregateFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$DriverAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverAggregateFilter>? get and =>
      (_$data['and'] as List<Input$DriverAggregateFilter>?);

  List<Input$DriverAggregateFilter>? get or =>
      (_$data['or'] as List<Input$DriverAggregateFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverAggregateFilter<Input$DriverAggregateFilter>
      get copyWith => CopyWith$Input$DriverAggregateFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverAggregateFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverAggregateFilter<TRes> {
  factory CopyWith$Input$DriverAggregateFilter(
    Input$DriverAggregateFilter instance,
    TRes Function(Input$DriverAggregateFilter) then,
  ) = _CopyWithImpl$Input$DriverAggregateFilter;

  factory CopyWith$Input$DriverAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverAggregateFilter;

  TRes call({
    List<Input$DriverAggregateFilter>? and,
    List<Input$DriverAggregateFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$DriverAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverAggregateFilter<
                      Input$DriverAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverAggregateFilter<
                      Input$DriverAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$DriverAggregateFilter<TRes>
    implements CopyWith$Input$DriverAggregateFilter<TRes> {
  _CopyWithImpl$Input$DriverAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$DriverAggregateFilter _instance;

  final TRes Function(Input$DriverAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$DriverAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DriverAggregateFilter>?),
        if (or != _undefined) 'or': (or as List<Input$DriverAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$DriverAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverAggregateFilter<
                          Input$DriverAggregateFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$DriverAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$DriverAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverAggregateFilter<
                          Input$DriverAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$DriverAggregateFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$DriverAggregateFilter<TRes>
    implements CopyWith$Input$DriverAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$DriverAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverAggregateFilter>? and,
    List<Input$DriverAggregateFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderAggregateFilter {
  factory Input$OrderAggregateFilter({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? paymentGatewayId,
    Input$IDFilterComparison? paymentMethodId,
  }) =>
      Input$OrderAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (status != null) r'status': status,
        if (createdOn != null) r'createdOn': createdOn,
        if (distanceBest != null) r'distanceBest': distanceBest,
        if (riderId != null) r'riderId': riderId,
        if (driverId != null) r'driverId': driverId,
        if (paymentGatewayId != null) r'paymentGatewayId': paymentGatewayId,
        if (paymentMethodId != null) r'paymentMethodId': paymentMethodId,
      });

  Input$OrderAggregateFilter._(this._$data);

  factory Input$OrderAggregateFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$OrderAggregateFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$OrderAggregateFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$OrderStatusFilterComparison.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateFieldComparison.fromJson(
              (l$createdOn as Map<String, dynamic>));
    }
    if (data.containsKey('distanceBest')) {
      final l$distanceBest = data['distanceBest'];
      result$data['distanceBest'] = l$distanceBest == null
          ? null
          : Input$IntFieldComparison.fromJson(
              (l$distanceBest as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    if (data.containsKey('paymentGatewayId')) {
      final l$paymentGatewayId = data['paymentGatewayId'];
      result$data['paymentGatewayId'] = l$paymentGatewayId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$paymentGatewayId as Map<String, dynamic>));
    }
    if (data.containsKey('paymentMethodId')) {
      final l$paymentMethodId = data['paymentMethodId'];
      result$data['paymentMethodId'] = l$paymentMethodId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$paymentMethodId as Map<String, dynamic>));
    }
    return Input$OrderAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderAggregateFilter>? get and =>
      (_$data['and'] as List<Input$OrderAggregateFilter>?);

  List<Input$OrderAggregateFilter>? get or =>
      (_$data['or'] as List<Input$OrderAggregateFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$OrderStatusFilterComparison? get status =>
      (_$data['status'] as Input$OrderStatusFilterComparison?);

  Input$DateFieldComparison? get createdOn =>
      (_$data['createdOn'] as Input$DateFieldComparison?);

  Input$IntFieldComparison? get distanceBest =>
      (_$data['distanceBest'] as Input$IntFieldComparison?);

  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get paymentGatewayId =>
      (_$data['paymentGatewayId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get paymentMethodId =>
      (_$data['paymentMethodId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('distanceBest')) {
      final l$distanceBest = distanceBest;
      result$data['distanceBest'] = l$distanceBest?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    if (_$data.containsKey('paymentGatewayId')) {
      final l$paymentGatewayId = paymentGatewayId;
      result$data['paymentGatewayId'] = l$paymentGatewayId?.toJson();
    }
    if (_$data.containsKey('paymentMethodId')) {
      final l$paymentMethodId = paymentMethodId;
      result$data['paymentMethodId'] = l$paymentMethodId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderAggregateFilter<Input$OrderAggregateFilter>
      get copyWith => CopyWith$Input$OrderAggregateFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderAggregateFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (_$data.containsKey('distanceBest') !=
        other._$data.containsKey('distanceBest')) {
      return false;
    }
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    final l$paymentGatewayId = paymentGatewayId;
    final lOther$paymentGatewayId = other.paymentGatewayId;
    if (_$data.containsKey('paymentGatewayId') !=
        other._$data.containsKey('paymentGatewayId')) {
      return false;
    }
    if (l$paymentGatewayId != lOther$paymentGatewayId) {
      return false;
    }
    final l$paymentMethodId = paymentMethodId;
    final lOther$paymentMethodId = other.paymentMethodId;
    if (_$data.containsKey('paymentMethodId') !=
        other._$data.containsKey('paymentMethodId')) {
      return false;
    }
    if (l$paymentMethodId != lOther$paymentMethodId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$distanceBest = distanceBest;
    final l$riderId = riderId;
    final l$driverId = driverId;
    final l$paymentGatewayId = paymentGatewayId;
    final l$paymentMethodId = paymentMethodId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('distanceBest') ? l$distanceBest : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
      _$data.containsKey('paymentGatewayId') ? l$paymentGatewayId : const {},
      _$data.containsKey('paymentMethodId') ? l$paymentMethodId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderAggregateFilter<TRes> {
  factory CopyWith$Input$OrderAggregateFilter(
    Input$OrderAggregateFilter instance,
    TRes Function(Input$OrderAggregateFilter) then,
  ) = _CopyWithImpl$Input$OrderAggregateFilter;

  factory CopyWith$Input$OrderAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderAggregateFilter;

  TRes call({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? paymentGatewayId,
    Input$IDFilterComparison? paymentMethodId,
  });
  TRes and(
      Iterable<Input$OrderAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderAggregateFilter<
                      Input$OrderAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderAggregateFilter<
                      Input$OrderAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$OrderStatusFilterComparison<TRes> get status;
  CopyWith$Input$DateFieldComparison<TRes> get createdOn;
  CopyWith$Input$IntFieldComparison<TRes> get distanceBest;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
  CopyWith$Input$IDFilterComparison<TRes> get paymentGatewayId;
  CopyWith$Input$IDFilterComparison<TRes> get paymentMethodId;
}

class _CopyWithImpl$Input$OrderAggregateFilter<TRes>
    implements CopyWith$Input$OrderAggregateFilter<TRes> {
  _CopyWithImpl$Input$OrderAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$OrderAggregateFilter _instance;

  final TRes Function(Input$OrderAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? distanceBest = _undefined,
    Object? riderId = _undefined,
    Object? driverId = _undefined,
    Object? paymentGatewayId = _undefined,
    Object? paymentMethodId = _undefined,
  }) =>
      _then(Input$OrderAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$OrderAggregateFilter>?),
        if (or != _undefined) 'or': (or as List<Input$OrderAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (status != _undefined)
          'status': (status as Input$OrderStatusFilterComparison?),
        if (createdOn != _undefined)
          'createdOn': (createdOn as Input$DateFieldComparison?),
        if (distanceBest != _undefined)
          'distanceBest': (distanceBest as Input$IntFieldComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
        if (paymentGatewayId != _undefined)
          'paymentGatewayId': (paymentGatewayId as Input$IDFilterComparison?),
        if (paymentMethodId != _undefined)
          'paymentMethodId': (paymentMethodId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$OrderAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderAggregateFilter<
                          Input$OrderAggregateFilter>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$OrderAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$OrderAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderAggregateFilter<
                          Input$OrderAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$OrderAggregateFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$OrderStatusFilterComparison<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$OrderStatusFilterComparison.stub(_then(_instance))
        : CopyWith$Input$OrderStatusFilterComparison(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$DateFieldComparison<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateFieldComparison.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparison(
            local$createdOn, (e) => call(createdOn: e));
  }

  CopyWith$Input$IntFieldComparison<TRes> get distanceBest {
    final local$distanceBest = _instance.distanceBest;
    return local$distanceBest == null
        ? CopyWith$Input$IntFieldComparison.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparison(
            local$distanceBest, (e) => call(distanceBest: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get paymentGatewayId {
    final local$paymentGatewayId = _instance.paymentGatewayId;
    return local$paymentGatewayId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$paymentGatewayId, (e) => call(paymentGatewayId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get paymentMethodId {
    final local$paymentMethodId = _instance.paymentMethodId;
    return local$paymentMethodId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$paymentMethodId, (e) => call(paymentMethodId: e));
  }
}

class _CopyWithStubImpl$Input$OrderAggregateFilter<TRes>
    implements CopyWith$Input$OrderAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$OrderAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? paymentGatewayId,
    Input$IDFilterComparison? paymentMethodId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$OrderStatusFilterComparison<TRes> get status =>
      CopyWith$Input$OrderStatusFilterComparison.stub(_res);

  CopyWith$Input$DateFieldComparison<TRes> get createdOn =>
      CopyWith$Input$DateFieldComparison.stub(_res);

  CopyWith$Input$IntFieldComparison<TRes> get distanceBest =>
      CopyWith$Input$IntFieldComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get paymentGatewayId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get paymentMethodId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderStatusFilterComparison {
  factory Input$OrderStatusFilterComparison({
    bool? $is,
    bool? isNot,
    Enum$OrderStatus? eq,
    Enum$OrderStatus? neq,
    Enum$OrderStatus? gt,
    Enum$OrderStatus? gte,
    Enum$OrderStatus? lt,
    Enum$OrderStatus? lte,
    Enum$OrderStatus? like,
    Enum$OrderStatus? notLike,
    Enum$OrderStatus? iLike,
    Enum$OrderStatus? notILike,
    List<Enum$OrderStatus>? $in,
    List<Enum$OrderStatus>? notIn,
  }) =>
      Input$OrderStatusFilterComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$OrderStatusFilterComparison._(this._$data);

  factory Input$OrderStatusFilterComparison.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromJson$Enum$OrderStatus((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromJson$Enum$OrderStatus((l$neq as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : fromJson$Enum$OrderStatus((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : fromJson$Enum$OrderStatus((l$gte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : fromJson$Enum$OrderStatus((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : fromJson$Enum$OrderStatus((l$lte as String));
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] =
          l$like == null ? null : fromJson$Enum$OrderStatus((l$like as String));
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = l$notLike == null
          ? null
          : fromJson$Enum$OrderStatus((l$notLike as String));
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = l$iLike == null
          ? null
          : fromJson$Enum$OrderStatus((l$iLike as String));
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = l$notILike == null
          ? null
          : fromJson$Enum$OrderStatus((l$notILike as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$OrderStatus((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$OrderStatus((e as String)))
          .toList();
    }
    return Input$OrderStatusFilterComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  Enum$OrderStatus? get eq => (_$data['eq'] as Enum$OrderStatus?);

  Enum$OrderStatus? get neq => (_$data['neq'] as Enum$OrderStatus?);

  Enum$OrderStatus? get gt => (_$data['gt'] as Enum$OrderStatus?);

  Enum$OrderStatus? get gte => (_$data['gte'] as Enum$OrderStatus?);

  Enum$OrderStatus? get lt => (_$data['lt'] as Enum$OrderStatus?);

  Enum$OrderStatus? get lte => (_$data['lte'] as Enum$OrderStatus?);

  Enum$OrderStatus? get like => (_$data['like'] as Enum$OrderStatus?);

  Enum$OrderStatus? get notLike => (_$data['notLike'] as Enum$OrderStatus?);

  Enum$OrderStatus? get iLike => (_$data['iLike'] as Enum$OrderStatus?);

  Enum$OrderStatus? get notILike => (_$data['notILike'] as Enum$OrderStatus?);

  List<Enum$OrderStatus>? get $in => (_$data['in'] as List<Enum$OrderStatus>?);

  List<Enum$OrderStatus>? get notIn =>
      (_$data['notIn'] as List<Enum$OrderStatus>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq == null ? null : toJson$Enum$OrderStatus(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$OrderStatus(l$neq);
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt == null ? null : toJson$Enum$OrderStatus(l$gt);
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] =
          l$gte == null ? null : toJson$Enum$OrderStatus(l$gte);
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt == null ? null : toJson$Enum$OrderStatus(l$lt);
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] =
          l$lte == null ? null : toJson$Enum$OrderStatus(l$lte);
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] =
          l$like == null ? null : toJson$Enum$OrderStatus(l$like);
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] =
          l$notLike == null ? null : toJson$Enum$OrderStatus(l$notLike);
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] =
          l$iLike == null ? null : toJson$Enum$OrderStatus(l$iLike);
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] =
          l$notILike == null ? null : toJson$Enum$OrderStatus(l$notILike);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$OrderStatus(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => toJson$Enum$OrderStatus(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$OrderStatusFilterComparison<Input$OrderStatusFilterComparison>
      get copyWith => CopyWith$Input$OrderStatusFilterComparison(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderStatusFilterComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderStatusFilterComparison<TRes> {
  factory CopyWith$Input$OrderStatusFilterComparison(
    Input$OrderStatusFilterComparison instance,
    TRes Function(Input$OrderStatusFilterComparison) then,
  ) = _CopyWithImpl$Input$OrderStatusFilterComparison;

  factory CopyWith$Input$OrderStatusFilterComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderStatusFilterComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    Enum$OrderStatus? eq,
    Enum$OrderStatus? neq,
    Enum$OrderStatus? gt,
    Enum$OrderStatus? gte,
    Enum$OrderStatus? lt,
    Enum$OrderStatus? lte,
    Enum$OrderStatus? like,
    Enum$OrderStatus? notLike,
    Enum$OrderStatus? iLike,
    Enum$OrderStatus? notILike,
    List<Enum$OrderStatus>? $in,
    List<Enum$OrderStatus>? notIn,
  });
}

class _CopyWithImpl$Input$OrderStatusFilterComparison<TRes>
    implements CopyWith$Input$OrderStatusFilterComparison<TRes> {
  _CopyWithImpl$Input$OrderStatusFilterComparison(
    this._instance,
    this._then,
  );

  final Input$OrderStatusFilterComparison _instance;

  final TRes Function(Input$OrderStatusFilterComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$OrderStatusFilterComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as Enum$OrderStatus?),
        if (neq != _undefined) 'neq': (neq as Enum$OrderStatus?),
        if (gt != _undefined) 'gt': (gt as Enum$OrderStatus?),
        if (gte != _undefined) 'gte': (gte as Enum$OrderStatus?),
        if (lt != _undefined) 'lt': (lt as Enum$OrderStatus?),
        if (lte != _undefined) 'lte': (lte as Enum$OrderStatus?),
        if (like != _undefined) 'like': (like as Enum$OrderStatus?),
        if (notLike != _undefined) 'notLike': (notLike as Enum$OrderStatus?),
        if (iLike != _undefined) 'iLike': (iLike as Enum$OrderStatus?),
        if (notILike != _undefined) 'notILike': (notILike as Enum$OrderStatus?),
        if ($in != _undefined) 'in': ($in as List<Enum$OrderStatus>?),
        if (notIn != _undefined) 'notIn': (notIn as List<Enum$OrderStatus>?),
      }));
}

class _CopyWithStubImpl$Input$OrderStatusFilterComparison<TRes>
    implements CopyWith$Input$OrderStatusFilterComparison<TRes> {
  _CopyWithStubImpl$Input$OrderStatusFilterComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    Enum$OrderStatus? eq,
    Enum$OrderStatus? neq,
    Enum$OrderStatus? gt,
    Enum$OrderStatus? gte,
    Enum$OrderStatus? lt,
    Enum$OrderStatus? lte,
    Enum$OrderStatus? like,
    Enum$OrderStatus? notLike,
    Enum$OrderStatus? iLike,
    Enum$OrderStatus? notILike,
    List<Enum$OrderStatus>? $in,
    List<Enum$OrderStatus>? notIn,
  }) =>
      _res;
}

class Input$DateFieldComparison {
  factory Input$DateFieldComparison({
    bool? $is,
    bool? isNot,
    DateTime? eq,
    DateTime? neq,
    DateTime? gt,
    DateTime? gte,
    DateTime? lt,
    DateTime? lte,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    Input$DateFieldComparisonBetween? between,
    Input$DateFieldComparisonBetween? notBetween,
  }) =>
      Input$DateFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (between != null) r'between': between,
        if (notBetween != null) r'notBetween': notBetween,
      });

  Input$DateFieldComparison._(this._$data);

  factory Input$DateFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] =
          l$eq == null ? null : fromGraphQLDateTimeToDartDateTime(l$eq);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] =
          l$neq == null ? null : fromGraphQLDateTimeToDartDateTime(l$neq);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] =
          l$gt == null ? null : fromGraphQLDateTimeToDartDateTime(l$gt);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] =
          l$gte == null ? null : fromGraphQLDateTimeToDartDateTime(l$gte);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] =
          l$lt == null ? null : fromGraphQLDateTimeToDartDateTime(l$lt);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] =
          l$lte == null ? null : fromGraphQLDateTimeToDartDateTime(l$lte);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromGraphQLDateTimeToDartDateTime(e))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromGraphQLDateTimeToDartDateTime(e))
          .toList();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$DateFieldComparisonBetween.fromJson(
              (l$between as Map<String, dynamic>));
    }
    if (data.containsKey('notBetween')) {
      final l$notBetween = data['notBetween'];
      result$data['notBetween'] = l$notBetween == null
          ? null
          : Input$DateFieldComparisonBetween.fromJson(
              (l$notBetween as Map<String, dynamic>));
    }
    return Input$DateFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  DateTime? get eq => (_$data['eq'] as DateTime?);

  DateTime? get neq => (_$data['neq'] as DateTime?);

  DateTime? get gt => (_$data['gt'] as DateTime?);

  DateTime? get gte => (_$data['gte'] as DateTime?);

  DateTime? get lt => (_$data['lt'] as DateTime?);

  DateTime? get lte => (_$data['lte'] as DateTime?);

  List<DateTime>? get $in => (_$data['in'] as List<DateTime>?);

  List<DateTime>? get notIn => (_$data['notIn'] as List<DateTime>?);

  Input$DateFieldComparisonBetween? get between =>
      (_$data['between'] as Input$DateFieldComparisonBetween?);

  Input$DateFieldComparisonBetween? get notBetween =>
      (_$data['notBetween'] as Input$DateFieldComparisonBetween?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : fromDartDateTimeToGraphQLDateTime(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : fromDartDateTimeToGraphQLDateTime(l$neq);
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] =
          l$gt == null ? null : fromDartDateTimeToGraphQLDateTime(l$gt);
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] =
          l$gte == null ? null : fromDartDateTimeToGraphQLDateTime(l$gte);
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] =
          l$lt == null ? null : fromDartDateTimeToGraphQLDateTime(l$lt);
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] =
          l$lte == null ? null : fromDartDateTimeToGraphQLDateTime(l$lte);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => fromDartDateTimeToGraphQLDateTime(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => fromDartDateTimeToGraphQLDateTime(e)).toList();
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    if (_$data.containsKey('notBetween')) {
      final l$notBetween = notBetween;
      result$data['notBetween'] = l$notBetween?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DateFieldComparison<Input$DateFieldComparison> get copyWith =>
      CopyWith$Input$DateFieldComparison(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateFieldComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    final l$notBetween = notBetween;
    final lOther$notBetween = other.notBetween;
    if (_$data.containsKey('notBetween') !=
        other._$data.containsKey('notBetween')) {
      return false;
    }
    if (l$notBetween != lOther$notBetween) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$between = between;
    final l$notBetween = notBetween;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('between') ? l$between : const {},
      _$data.containsKey('notBetween') ? l$notBetween : const {},
    ]);
  }
}

abstract class CopyWith$Input$DateFieldComparison<TRes> {
  factory CopyWith$Input$DateFieldComparison(
    Input$DateFieldComparison instance,
    TRes Function(Input$DateFieldComparison) then,
  ) = _CopyWithImpl$Input$DateFieldComparison;

  factory CopyWith$Input$DateFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$DateFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    DateTime? eq,
    DateTime? neq,
    DateTime? gt,
    DateTime? gte,
    DateTime? lt,
    DateTime? lte,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    Input$DateFieldComparisonBetween? between,
    Input$DateFieldComparisonBetween? notBetween,
  });
  CopyWith$Input$DateFieldComparisonBetween<TRes> get between;
  CopyWith$Input$DateFieldComparisonBetween<TRes> get notBetween;
}

class _CopyWithImpl$Input$DateFieldComparison<TRes>
    implements CopyWith$Input$DateFieldComparison<TRes> {
  _CopyWithImpl$Input$DateFieldComparison(
    this._instance,
    this._then,
  );

  final Input$DateFieldComparison _instance;

  final TRes Function(Input$DateFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? between = _undefined,
    Object? notBetween = _undefined,
  }) =>
      _then(Input$DateFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as DateTime?),
        if (neq != _undefined) 'neq': (neq as DateTime?),
        if (gt != _undefined) 'gt': (gt as DateTime?),
        if (gte != _undefined) 'gte': (gte as DateTime?),
        if (lt != _undefined) 'lt': (lt as DateTime?),
        if (lte != _undefined) 'lte': (lte as DateTime?),
        if ($in != _undefined) 'in': ($in as List<DateTime>?),
        if (notIn != _undefined) 'notIn': (notIn as List<DateTime>?),
        if (between != _undefined)
          'between': (between as Input$DateFieldComparisonBetween?),
        if (notBetween != _undefined)
          'notBetween': (notBetween as Input$DateFieldComparisonBetween?),
      }));

  CopyWith$Input$DateFieldComparisonBetween<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$DateFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparisonBetween(
            local$between, (e) => call(between: e));
  }

  CopyWith$Input$DateFieldComparisonBetween<TRes> get notBetween {
    final local$notBetween = _instance.notBetween;
    return local$notBetween == null
        ? CopyWith$Input$DateFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparisonBetween(
            local$notBetween, (e) => call(notBetween: e));
  }
}

class _CopyWithStubImpl$Input$DateFieldComparison<TRes>
    implements CopyWith$Input$DateFieldComparison<TRes> {
  _CopyWithStubImpl$Input$DateFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    DateTime? eq,
    DateTime? neq,
    DateTime? gt,
    DateTime? gte,
    DateTime? lt,
    DateTime? lte,
    List<DateTime>? $in,
    List<DateTime>? notIn,
    Input$DateFieldComparisonBetween? between,
    Input$DateFieldComparisonBetween? notBetween,
  }) =>
      _res;

  CopyWith$Input$DateFieldComparisonBetween<TRes> get between =>
      CopyWith$Input$DateFieldComparisonBetween.stub(_res);

  CopyWith$Input$DateFieldComparisonBetween<TRes> get notBetween =>
      CopyWith$Input$DateFieldComparisonBetween.stub(_res);
}

class Input$DateFieldComparisonBetween {
  factory Input$DateFieldComparisonBetween({
    required DateTime lower,
    required DateTime upper,
  }) =>
      Input$DateFieldComparisonBetween._({
        r'lower': lower,
        r'upper': upper,
      });

  Input$DateFieldComparisonBetween._(this._$data);

  factory Input$DateFieldComparisonBetween.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lower = data['lower'];
    result$data['lower'] = fromGraphQLDateTimeToDartDateTime(l$lower);
    final l$upper = data['upper'];
    result$data['upper'] = fromGraphQLDateTimeToDartDateTime(l$upper);
    return Input$DateFieldComparisonBetween._(result$data);
  }

  Map<String, dynamic> _$data;

  DateTime get lower => (_$data['lower'] as DateTime);

  DateTime get upper => (_$data['upper'] as DateTime);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lower = lower;
    result$data['lower'] = fromDartDateTimeToGraphQLDateTime(l$lower);
    final l$upper = upper;
    result$data['upper'] = fromDartDateTimeToGraphQLDateTime(l$upper);
    return result$data;
  }

  CopyWith$Input$DateFieldComparisonBetween<Input$DateFieldComparisonBetween>
      get copyWith => CopyWith$Input$DateFieldComparisonBetween(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DateFieldComparisonBetween ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lower = lower;
    final lOther$lower = other.lower;
    if (l$lower != lOther$lower) {
      return false;
    }
    final l$upper = upper;
    final lOther$upper = other.upper;
    if (l$upper != lOther$upper) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lower = lower;
    final l$upper = upper;
    return Object.hashAll([
      l$lower,
      l$upper,
    ]);
  }
}

abstract class CopyWith$Input$DateFieldComparisonBetween<TRes> {
  factory CopyWith$Input$DateFieldComparisonBetween(
    Input$DateFieldComparisonBetween instance,
    TRes Function(Input$DateFieldComparisonBetween) then,
  ) = _CopyWithImpl$Input$DateFieldComparisonBetween;

  factory CopyWith$Input$DateFieldComparisonBetween.stub(TRes res) =
      _CopyWithStubImpl$Input$DateFieldComparisonBetween;

  TRes call({
    DateTime? lower,
    DateTime? upper,
  });
}

class _CopyWithImpl$Input$DateFieldComparisonBetween<TRes>
    implements CopyWith$Input$DateFieldComparisonBetween<TRes> {
  _CopyWithImpl$Input$DateFieldComparisonBetween(
    this._instance,
    this._then,
  );

  final Input$DateFieldComparisonBetween _instance;

  final TRes Function(Input$DateFieldComparisonBetween) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lower = _undefined,
    Object? upper = _undefined,
  }) =>
      _then(Input$DateFieldComparisonBetween._({
        ..._instance._$data,
        if (lower != _undefined && lower != null) 'lower': (lower as DateTime),
        if (upper != _undefined && upper != null) 'upper': (upper as DateTime),
      }));
}

class _CopyWithStubImpl$Input$DateFieldComparisonBetween<TRes>
    implements CopyWith$Input$DateFieldComparisonBetween<TRes> {
  _CopyWithStubImpl$Input$DateFieldComparisonBetween(this._res);

  TRes _res;

  call({
    DateTime? lower,
    DateTime? upper,
  }) =>
      _res;
}

class Input$IntFieldComparison {
  factory Input$IntFieldComparison({
    bool? $is,
    bool? isNot,
    int? eq,
    int? neq,
    int? gt,
    int? gte,
    int? lt,
    int? lte,
    List<int>? $in,
    List<int>? notIn,
    Input$IntFieldComparisonBetween? between,
    Input$IntFieldComparisonBetween? notBetween,
  }) =>
      Input$IntFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
        if (between != null) r'between': between,
        if (notBetween != null) r'notBetween': notBetween,
      });

  Input$IntFieldComparison._(this._$data);

  factory Input$IntFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as int?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as int?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as int?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as int?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as int?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as int?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as int)).toList();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$IntFieldComparisonBetween.fromJson(
              (l$between as Map<String, dynamic>));
    }
    if (data.containsKey('notBetween')) {
      final l$notBetween = data['notBetween'];
      result$data['notBetween'] = l$notBetween == null
          ? null
          : Input$IntFieldComparisonBetween.fromJson(
              (l$notBetween as Map<String, dynamic>));
    }
    return Input$IntFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  int? get eq => (_$data['eq'] as int?);

  int? get neq => (_$data['neq'] as int?);

  int? get gt => (_$data['gt'] as int?);

  int? get gte => (_$data['gte'] as int?);

  int? get lt => (_$data['lt'] as int?);

  int? get lte => (_$data['lte'] as int?);

  List<int>? get $in => (_$data['in'] as List<int>?);

  List<int>? get notIn => (_$data['notIn'] as List<int>?);

  Input$IntFieldComparisonBetween? get between =>
      (_$data['between'] as Input$IntFieldComparisonBetween?);

  Input$IntFieldComparisonBetween? get notBetween =>
      (_$data['notBetween'] as Input$IntFieldComparisonBetween?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    if (_$data.containsKey('between')) {
      final l$between = between;
      result$data['between'] = l$between?.toJson();
    }
    if (_$data.containsKey('notBetween')) {
      final l$notBetween = notBetween;
      result$data['notBetween'] = l$notBetween?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$IntFieldComparison<Input$IntFieldComparison> get copyWith =>
      CopyWith$Input$IntFieldComparison(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$IntFieldComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    final l$between = between;
    final lOther$between = other.between;
    if (_$data.containsKey('between') != other._$data.containsKey('between')) {
      return false;
    }
    if (l$between != lOther$between) {
      return false;
    }
    final l$notBetween = notBetween;
    final lOther$notBetween = other.notBetween;
    if (_$data.containsKey('notBetween') !=
        other._$data.containsKey('notBetween')) {
      return false;
    }
    if (l$notBetween != lOther$notBetween) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$$in = $in;
    final l$notIn = notIn;
    final l$between = between;
    final l$notBetween = notBetween;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
      _$data.containsKey('between') ? l$between : const {},
      _$data.containsKey('notBetween') ? l$notBetween : const {},
    ]);
  }
}

abstract class CopyWith$Input$IntFieldComparison<TRes> {
  factory CopyWith$Input$IntFieldComparison(
    Input$IntFieldComparison instance,
    TRes Function(Input$IntFieldComparison) then,
  ) = _CopyWithImpl$Input$IntFieldComparison;

  factory CopyWith$Input$IntFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    int? eq,
    int? neq,
    int? gt,
    int? gte,
    int? lt,
    int? lte,
    List<int>? $in,
    List<int>? notIn,
    Input$IntFieldComparisonBetween? between,
    Input$IntFieldComparisonBetween? notBetween,
  });
  CopyWith$Input$IntFieldComparisonBetween<TRes> get between;
  CopyWith$Input$IntFieldComparisonBetween<TRes> get notBetween;
}

class _CopyWithImpl$Input$IntFieldComparison<TRes>
    implements CopyWith$Input$IntFieldComparison<TRes> {
  _CopyWithImpl$Input$IntFieldComparison(
    this._instance,
    this._then,
  );

  final Input$IntFieldComparison _instance;

  final TRes Function(Input$IntFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
    Object? between = _undefined,
    Object? notBetween = _undefined,
  }) =>
      _then(Input$IntFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as int?),
        if (neq != _undefined) 'neq': (neq as int?),
        if (gt != _undefined) 'gt': (gt as int?),
        if (gte != _undefined) 'gte': (gte as int?),
        if (lt != _undefined) 'lt': (lt as int?),
        if (lte != _undefined) 'lte': (lte as int?),
        if ($in != _undefined) 'in': ($in as List<int>?),
        if (notIn != _undefined) 'notIn': (notIn as List<int>?),
        if (between != _undefined)
          'between': (between as Input$IntFieldComparisonBetween?),
        if (notBetween != _undefined)
          'notBetween': (notBetween as Input$IntFieldComparisonBetween?),
      }));

  CopyWith$Input$IntFieldComparisonBetween<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$IntFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparisonBetween(
            local$between, (e) => call(between: e));
  }

  CopyWith$Input$IntFieldComparisonBetween<TRes> get notBetween {
    final local$notBetween = _instance.notBetween;
    return local$notBetween == null
        ? CopyWith$Input$IntFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparisonBetween(
            local$notBetween, (e) => call(notBetween: e));
  }
}

class _CopyWithStubImpl$Input$IntFieldComparison<TRes>
    implements CopyWith$Input$IntFieldComparison<TRes> {
  _CopyWithStubImpl$Input$IntFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    int? eq,
    int? neq,
    int? gt,
    int? gte,
    int? lt,
    int? lte,
    List<int>? $in,
    List<int>? notIn,
    Input$IntFieldComparisonBetween? between,
    Input$IntFieldComparisonBetween? notBetween,
  }) =>
      _res;

  CopyWith$Input$IntFieldComparisonBetween<TRes> get between =>
      CopyWith$Input$IntFieldComparisonBetween.stub(_res);

  CopyWith$Input$IntFieldComparisonBetween<TRes> get notBetween =>
      CopyWith$Input$IntFieldComparisonBetween.stub(_res);
}

class Input$IntFieldComparisonBetween {
  factory Input$IntFieldComparisonBetween({
    required int lower,
    required int upper,
  }) =>
      Input$IntFieldComparisonBetween._({
        r'lower': lower,
        r'upper': upper,
      });

  Input$IntFieldComparisonBetween._(this._$data);

  factory Input$IntFieldComparisonBetween.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lower = data['lower'];
    result$data['lower'] = (l$lower as int);
    final l$upper = data['upper'];
    result$data['upper'] = (l$upper as int);
    return Input$IntFieldComparisonBetween._(result$data);
  }

  Map<String, dynamic> _$data;

  int get lower => (_$data['lower'] as int);

  int get upper => (_$data['upper'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lower = lower;
    result$data['lower'] = l$lower;
    final l$upper = upper;
    result$data['upper'] = l$upper;
    return result$data;
  }

  CopyWith$Input$IntFieldComparisonBetween<Input$IntFieldComparisonBetween>
      get copyWith => CopyWith$Input$IntFieldComparisonBetween(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$IntFieldComparisonBetween ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lower = lower;
    final lOther$lower = other.lower;
    if (l$lower != lOther$lower) {
      return false;
    }
    final l$upper = upper;
    final lOther$upper = other.upper;
    if (l$upper != lOther$upper) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lower = lower;
    final l$upper = upper;
    return Object.hashAll([
      l$lower,
      l$upper,
    ]);
  }
}

abstract class CopyWith$Input$IntFieldComparisonBetween<TRes> {
  factory CopyWith$Input$IntFieldComparisonBetween(
    Input$IntFieldComparisonBetween instance,
    TRes Function(Input$IntFieldComparisonBetween) then,
  ) = _CopyWithImpl$Input$IntFieldComparisonBetween;

  factory CopyWith$Input$IntFieldComparisonBetween.stub(TRes res) =
      _CopyWithStubImpl$Input$IntFieldComparisonBetween;

  TRes call({
    int? lower,
    int? upper,
  });
}

class _CopyWithImpl$Input$IntFieldComparisonBetween<TRes>
    implements CopyWith$Input$IntFieldComparisonBetween<TRes> {
  _CopyWithImpl$Input$IntFieldComparisonBetween(
    this._instance,
    this._then,
  );

  final Input$IntFieldComparisonBetween _instance;

  final TRes Function(Input$IntFieldComparisonBetween) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lower = _undefined,
    Object? upper = _undefined,
  }) =>
      _then(Input$IntFieldComparisonBetween._({
        ..._instance._$data,
        if (lower != _undefined && lower != null) 'lower': (lower as int),
        if (upper != _undefined && upper != null) 'upper': (upper as int),
      }));
}

class _CopyWithStubImpl$Input$IntFieldComparisonBetween<TRes>
    implements CopyWith$Input$IntFieldComparisonBetween<TRes> {
  _CopyWithStubImpl$Input$IntFieldComparisonBetween(this._res);

  TRes _res;

  call({
    int? lower,
    int? upper,
  }) =>
      _res;
}

class Input$CouponFilter {
  factory Input$CouponFilter({
    List<Input$CouponFilter>? and,
    List<Input$CouponFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$CouponFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$CouponFilter._(this._$data);

  factory Input$CouponFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$CouponFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$CouponFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$CouponFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CouponFilter>? get and =>
      (_$data['and'] as List<Input$CouponFilter>?);

  List<Input$CouponFilter>? get or =>
      (_$data['or'] as List<Input$CouponFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$CouponFilter<Input$CouponFilter> get copyWith =>
      CopyWith$Input$CouponFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CouponFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$CouponFilter<TRes> {
  factory CopyWith$Input$CouponFilter(
    Input$CouponFilter instance,
    TRes Function(Input$CouponFilter) then,
  ) = _CopyWithImpl$Input$CouponFilter;

  factory CopyWith$Input$CouponFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CouponFilter;

  TRes call({
    List<Input$CouponFilter>? and,
    List<Input$CouponFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$CouponFilter>? Function(
              Iterable<CopyWith$Input$CouponFilter<Input$CouponFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$CouponFilter>? Function(
              Iterable<CopyWith$Input$CouponFilter<Input$CouponFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$CouponFilter<TRes>
    implements CopyWith$Input$CouponFilter<TRes> {
  _CopyWithImpl$Input$CouponFilter(
    this._instance,
    this._then,
  );

  final Input$CouponFilter _instance;

  final TRes Function(Input$CouponFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$CouponFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$CouponFilter>?),
        if (or != _undefined) 'or': (or as List<Input$CouponFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$CouponFilter>? Function(
                  Iterable<CopyWith$Input$CouponFilter<Input$CouponFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$CouponFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$CouponFilter>? Function(
                  Iterable<CopyWith$Input$CouponFilter<Input$CouponFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$CouponFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$CouponFilter<TRes>
    implements CopyWith$Input$CouponFilter<TRes> {
  _CopyWithStubImpl$Input$CouponFilter(this._res);

  TRes _res;

  call({
    List<Input$CouponFilter>? and,
    List<Input$CouponFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$CouponSort {
  factory Input$CouponSort({
    required Enum$CouponSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$CouponSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$CouponSort._(this._$data);

  factory Input$CouponSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$CouponSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$CouponSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CouponSortFields get field => (_$data['field'] as Enum$CouponSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$CouponSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$CouponSort<Input$CouponSort> get copyWith =>
      CopyWith$Input$CouponSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CouponSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$CouponSort<TRes> {
  factory CopyWith$Input$CouponSort(
    Input$CouponSort instance,
    TRes Function(Input$CouponSort) then,
  ) = _CopyWithImpl$Input$CouponSort;

  factory CopyWith$Input$CouponSort.stub(TRes res) =
      _CopyWithStubImpl$Input$CouponSort;

  TRes call({
    Enum$CouponSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$CouponSort<TRes>
    implements CopyWith$Input$CouponSort<TRes> {
  _CopyWithImpl$Input$CouponSort(
    this._instance,
    this._then,
  );

  final Input$CouponSort _instance;

  final TRes Function(Input$CouponSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$CouponSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$CouponSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$CouponSort<TRes>
    implements CopyWith$Input$CouponSort<TRes> {
  _CopyWithStubImpl$Input$CouponSort(this._res);

  TRes _res;

  call({
    Enum$CouponSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$RiderWalletFilter {
  factory Input$RiderWalletFilter({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$StringFieldComparison? currency,
    Input$IDFilterComparison? riderId,
  }) =>
      Input$RiderWalletFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (currency != null) r'currency': currency,
        if (riderId != null) r'riderId': riderId,
      });

  Input$RiderWalletFilter._(this._$data);

  factory Input$RiderWalletFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$RiderWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$RiderWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('currency')) {
      final l$currency = data['currency'];
      result$data['currency'] = l$currency == null
          ? null
          : Input$StringFieldComparison.fromJson(
              (l$currency as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    return Input$RiderWalletFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$RiderWalletFilter>? get and =>
      (_$data['and'] as List<Input$RiderWalletFilter>?);

  List<Input$RiderWalletFilter>? get or =>
      (_$data['or'] as List<Input$RiderWalletFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$StringFieldComparison? get currency =>
      (_$data['currency'] as Input$StringFieldComparison?);

  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('currency')) {
      final l$currency = currency;
      result$data['currency'] = l$currency?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$RiderWalletFilter<Input$RiderWalletFilter> get copyWith =>
      CopyWith$Input$RiderWalletFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderWalletFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (_$data.containsKey('currency') !=
        other._$data.containsKey('currency')) {
      return false;
    }
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$currency = currency;
    final l$riderId = riderId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('currency') ? l$currency : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderWalletFilter<TRes> {
  factory CopyWith$Input$RiderWalletFilter(
    Input$RiderWalletFilter instance,
    TRes Function(Input$RiderWalletFilter) then,
  ) = _CopyWithImpl$Input$RiderWalletFilter;

  factory CopyWith$Input$RiderWalletFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderWalletFilter;

  TRes call({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$StringFieldComparison? currency,
    Input$IDFilterComparison? riderId,
  });
  TRes and(
      Iterable<Input$RiderWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderWalletFilter<Input$RiderWalletFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$RiderWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderWalletFilter<Input$RiderWalletFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$StringFieldComparison<TRes> get currency;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
}

class _CopyWithImpl$Input$RiderWalletFilter<TRes>
    implements CopyWith$Input$RiderWalletFilter<TRes> {
  _CopyWithImpl$Input$RiderWalletFilter(
    this._instance,
    this._then,
  );

  final Input$RiderWalletFilter _instance;

  final TRes Function(Input$RiderWalletFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? currency = _undefined,
    Object? riderId = _undefined,
  }) =>
      _then(Input$RiderWalletFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$RiderWalletFilter>?),
        if (or != _undefined) 'or': (or as List<Input$RiderWalletFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (currency != _undefined)
          'currency': (currency as Input$StringFieldComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$RiderWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderWalletFilter<
                          Input$RiderWalletFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$RiderWalletFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$RiderWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderWalletFilter<
                          Input$RiderWalletFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$RiderWalletFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$StringFieldComparison<TRes> get currency {
    final local$currency = _instance.currency;
    return local$currency == null
        ? CopyWith$Input$StringFieldComparison.stub(_then(_instance))
        : CopyWith$Input$StringFieldComparison(
            local$currency, (e) => call(currency: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }
}

class _CopyWithStubImpl$Input$RiderWalletFilter<TRes>
    implements CopyWith$Input$RiderWalletFilter<TRes> {
  _CopyWithStubImpl$Input$RiderWalletFilter(this._res);

  TRes _res;

  call({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$StringFieldComparison? currency,
    Input$IDFilterComparison? riderId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$StringFieldComparison<TRes> get currency =>
      CopyWith$Input$StringFieldComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$StringFieldComparison {
  factory Input$StringFieldComparison({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  }) =>
      Input$StringFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$StringFieldComparison._(this._$data);

  factory Input$StringFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = (l$eq as String?);
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as String?);
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as String?);
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as String?);
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as String?);
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as String?);
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = (l$like as String?);
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = (l$notLike as String?);
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = (l$iLike as String?);
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = (l$notILike as String?);
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] =
          (l$notIn as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    return Input$StringFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  String? get eq => (_$data['eq'] as String?);

  String? get neq => (_$data['neq'] as String?);

  String? get gt => (_$data['gt'] as String?);

  String? get gte => (_$data['gte'] as String?);

  String? get lt => (_$data['lt'] as String?);

  String? get lte => (_$data['lte'] as String?);

  String? get like => (_$data['like'] as String?);

  String? get notLike => (_$data['notLike'] as String?);

  String? get iLike => (_$data['iLike'] as String?);

  String? get notILike => (_$data['notILike'] as String?);

  List<String>? get $in => (_$data['in'] as List<String>?);

  List<String>? get notIn => (_$data['notIn'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] = l$eq;
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] = l$neq;
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] = l$gt;
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] = l$gte;
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] = l$lt;
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] = l$lte;
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] = l$like;
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] = l$notLike;
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] = l$iLike;
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] = l$notILike;
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] = l$$in?.map((e) => e).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] = l$notIn?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$StringFieldComparison<Input$StringFieldComparison>
      get copyWith => CopyWith$Input$StringFieldComparison(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$StringFieldComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$StringFieldComparison<TRes> {
  factory CopyWith$Input$StringFieldComparison(
    Input$StringFieldComparison instance,
    TRes Function(Input$StringFieldComparison) then,
  ) = _CopyWithImpl$Input$StringFieldComparison;

  factory CopyWith$Input$StringFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$StringFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  });
}

class _CopyWithImpl$Input$StringFieldComparison<TRes>
    implements CopyWith$Input$StringFieldComparison<TRes> {
  _CopyWithImpl$Input$StringFieldComparison(
    this._instance,
    this._then,
  );

  final Input$StringFieldComparison _instance;

  final TRes Function(Input$StringFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$StringFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as String?),
        if (neq != _undefined) 'neq': (neq as String?),
        if (gt != _undefined) 'gt': (gt as String?),
        if (gte != _undefined) 'gte': (gte as String?),
        if (lt != _undefined) 'lt': (lt as String?),
        if (lte != _undefined) 'lte': (lte as String?),
        if (like != _undefined) 'like': (like as String?),
        if (notLike != _undefined) 'notLike': (notLike as String?),
        if (iLike != _undefined) 'iLike': (iLike as String?),
        if (notILike != _undefined) 'notILike': (notILike as String?),
        if ($in != _undefined) 'in': ($in as List<String>?),
        if (notIn != _undefined) 'notIn': (notIn as List<String>?),
      }));
}

class _CopyWithStubImpl$Input$StringFieldComparison<TRes>
    implements CopyWith$Input$StringFieldComparison<TRes> {
  _CopyWithStubImpl$Input$StringFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    String? eq,
    String? neq,
    String? gt,
    String? gte,
    String? lt,
    String? lte,
    String? like,
    String? notLike,
    String? iLike,
    String? notILike,
    List<String>? $in,
    List<String>? notIn,
  }) =>
      _res;
}

class Input$RiderWalletSort {
  factory Input$RiderWalletSort({
    required Enum$RiderWalletSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$RiderWalletSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$RiderWalletSort._(this._$data);

  factory Input$RiderWalletSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$RiderWalletSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$RiderWalletSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$RiderWalletSortFields get field =>
      (_$data['field'] as Enum$RiderWalletSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$RiderWalletSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$RiderWalletSort<Input$RiderWalletSort> get copyWith =>
      CopyWith$Input$RiderWalletSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderWalletSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderWalletSort<TRes> {
  factory CopyWith$Input$RiderWalletSort(
    Input$RiderWalletSort instance,
    TRes Function(Input$RiderWalletSort) then,
  ) = _CopyWithImpl$Input$RiderWalletSort;

  factory CopyWith$Input$RiderWalletSort.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderWalletSort;

  TRes call({
    Enum$RiderWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$RiderWalletSort<TRes>
    implements CopyWith$Input$RiderWalletSort<TRes> {
  _CopyWithImpl$Input$RiderWalletSort(
    this._instance,
    this._then,
  );

  final Input$RiderWalletSort _instance;

  final TRes Function(Input$RiderWalletSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$RiderWalletSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$RiderWalletSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$RiderWalletSort<TRes>
    implements CopyWith$Input$RiderWalletSort<TRes> {
  _CopyWithStubImpl$Input$RiderWalletSort(this._res);

  TRes _res;

  call({
    Enum$RiderWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OffsetPaging {
  factory Input$OffsetPaging({
    int? limit,
    int? offset,
  }) =>
      Input$OffsetPaging._({
        if (limit != null) r'limit': limit,
        if (offset != null) r'offset': offset,
      });

  Input$OffsetPaging._(this._$data);

  factory Input$OffsetPaging.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('offset')) {
      final l$offset = data['offset'];
      result$data['offset'] = (l$offset as int?);
    }
    return Input$OffsetPaging._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get limit => (_$data['limit'] as int?);

  int? get offset => (_$data['offset'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('offset')) {
      final l$offset = offset;
      result$data['offset'] = l$offset;
    }
    return result$data;
  }

  CopyWith$Input$OffsetPaging<Input$OffsetPaging> get copyWith =>
      CopyWith$Input$OffsetPaging(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OffsetPaging || runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (_$data.containsKey('offset') != other._$data.containsKey('offset')) {
      return false;
    }
    if (l$offset != lOther$offset) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    return Object.hashAll([
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('offset') ? l$offset : const {},
    ]);
  }
}

abstract class CopyWith$Input$OffsetPaging<TRes> {
  factory CopyWith$Input$OffsetPaging(
    Input$OffsetPaging instance,
    TRes Function(Input$OffsetPaging) then,
  ) = _CopyWithImpl$Input$OffsetPaging;

  factory CopyWith$Input$OffsetPaging.stub(TRes res) =
      _CopyWithStubImpl$Input$OffsetPaging;

  TRes call({
    int? limit,
    int? offset,
  });
}

class _CopyWithImpl$Input$OffsetPaging<TRes>
    implements CopyWith$Input$OffsetPaging<TRes> {
  _CopyWithImpl$Input$OffsetPaging(
    this._instance,
    this._then,
  );

  final Input$OffsetPaging _instance;

  final TRes Function(Input$OffsetPaging) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
  }) =>
      _then(Input$OffsetPaging._({
        ..._instance._$data,
        if (limit != _undefined) 'limit': (limit as int?),
        if (offset != _undefined) 'offset': (offset as int?),
      }));
}

class _CopyWithStubImpl$Input$OffsetPaging<TRes>
    implements CopyWith$Input$OffsetPaging<TRes> {
  _CopyWithStubImpl$Input$OffsetPaging(this._res);

  TRes _res;

  call({
    int? limit,
    int? offset,
  }) =>
      _res;
}

class Input$RiderTransacionFilter {
  factory Input$RiderTransacionFilter({
    List<Input$RiderTransacionFilter>? and,
    List<Input$RiderTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? shopOrderId,
  }) =>
      Input$RiderTransacionFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (riderId != null) r'riderId': riderId,
        if (shopOrderId != null) r'shopOrderId': shopOrderId,
      });

  Input$RiderTransacionFilter._(this._$data);

  factory Input$RiderTransacionFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$RiderTransacionFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$RiderTransacionFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    if (data.containsKey('shopOrderId')) {
      final l$shopOrderId = data['shopOrderId'];
      result$data['shopOrderId'] = l$shopOrderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$shopOrderId as Map<String, dynamic>));
    }
    return Input$RiderTransacionFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$RiderTransacionFilter>? get and =>
      (_$data['and'] as List<Input$RiderTransacionFilter>?);

  List<Input$RiderTransacionFilter>? get or =>
      (_$data['or'] as List<Input$RiderTransacionFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get shopOrderId =>
      (_$data['shopOrderId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    if (_$data.containsKey('shopOrderId')) {
      final l$shopOrderId = shopOrderId;
      result$data['shopOrderId'] = l$shopOrderId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$RiderTransacionFilter<Input$RiderTransacionFilter>
      get copyWith => CopyWith$Input$RiderTransacionFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderTransacionFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    final l$shopOrderId = shopOrderId;
    final lOther$shopOrderId = other.shopOrderId;
    if (_$data.containsKey('shopOrderId') !=
        other._$data.containsKey('shopOrderId')) {
      return false;
    }
    if (l$shopOrderId != lOther$shopOrderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$riderId = riderId;
    final l$shopOrderId = shopOrderId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
      _$data.containsKey('shopOrderId') ? l$shopOrderId : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderTransacionFilter<TRes> {
  factory CopyWith$Input$RiderTransacionFilter(
    Input$RiderTransacionFilter instance,
    TRes Function(Input$RiderTransacionFilter) then,
  ) = _CopyWithImpl$Input$RiderTransacionFilter;

  factory CopyWith$Input$RiderTransacionFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderTransacionFilter;

  TRes call({
    List<Input$RiderTransacionFilter>? and,
    List<Input$RiderTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? shopOrderId,
  });
  TRes and(
      Iterable<Input$RiderTransacionFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderTransacionFilter<
                      Input$RiderTransacionFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$RiderTransacionFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderTransacionFilter<
                      Input$RiderTransacionFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
  CopyWith$Input$IDFilterComparison<TRes> get shopOrderId;
}

class _CopyWithImpl$Input$RiderTransacionFilter<TRes>
    implements CopyWith$Input$RiderTransacionFilter<TRes> {
  _CopyWithImpl$Input$RiderTransacionFilter(
    this._instance,
    this._then,
  );

  final Input$RiderTransacionFilter _instance;

  final TRes Function(Input$RiderTransacionFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? riderId = _undefined,
    Object? shopOrderId = _undefined,
  }) =>
      _then(Input$RiderTransacionFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$RiderTransacionFilter>?),
        if (or != _undefined) 'or': (or as List<Input$RiderTransacionFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
        if (shopOrderId != _undefined)
          'shopOrderId': (shopOrderId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$RiderTransacionFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderTransacionFilter<
                          Input$RiderTransacionFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$RiderTransacionFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$RiderTransacionFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderTransacionFilter<
                          Input$RiderTransacionFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$RiderTransacionFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get shopOrderId {
    final local$shopOrderId = _instance.shopOrderId;
    return local$shopOrderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$shopOrderId, (e) => call(shopOrderId: e));
  }
}

class _CopyWithStubImpl$Input$RiderTransacionFilter<TRes>
    implements CopyWith$Input$RiderTransacionFilter<TRes> {
  _CopyWithStubImpl$Input$RiderTransacionFilter(this._res);

  TRes _res;

  call({
    List<Input$RiderTransacionFilter>? and,
    List<Input$RiderTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? shopOrderId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get shopOrderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$RiderTransacionSort {
  factory Input$RiderTransacionSort({
    required Enum$RiderTransacionSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$RiderTransacionSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$RiderTransacionSort._(this._$data);

  factory Input$RiderTransacionSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$RiderTransacionSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$RiderTransacionSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$RiderTransacionSortFields get field =>
      (_$data['field'] as Enum$RiderTransacionSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$RiderTransacionSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$RiderTransacionSort<Input$RiderTransacionSort> get copyWith =>
      CopyWith$Input$RiderTransacionSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderTransacionSort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderTransacionSort<TRes> {
  factory CopyWith$Input$RiderTransacionSort(
    Input$RiderTransacionSort instance,
    TRes Function(Input$RiderTransacionSort) then,
  ) = _CopyWithImpl$Input$RiderTransacionSort;

  factory CopyWith$Input$RiderTransacionSort.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderTransacionSort;

  TRes call({
    Enum$RiderTransacionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$RiderTransacionSort<TRes>
    implements CopyWith$Input$RiderTransacionSort<TRes> {
  _CopyWithImpl$Input$RiderTransacionSort(
    this._instance,
    this._then,
  );

  final Input$RiderTransacionSort _instance;

  final TRes Function(Input$RiderTransacionSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$RiderTransacionSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$RiderTransacionSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$RiderTransacionSort<TRes>
    implements CopyWith$Input$RiderTransacionSort<TRes> {
  _CopyWithStubImpl$Input$RiderTransacionSort(this._res);

  TRes _res;

  call({
    Enum$RiderTransacionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$SavedPaymentMethodFilter {
  factory Input$SavedPaymentMethodFilter({
    List<Input$SavedPaymentMethodFilter>? and,
    List<Input$SavedPaymentMethodFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      Input$SavedPaymentMethodFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (riderId != null) r'riderId': riderId,
      });

  Input$SavedPaymentMethodFilter._(this._$data);

  factory Input$SavedPaymentMethodFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$SavedPaymentMethodFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$SavedPaymentMethodFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    return Input$SavedPaymentMethodFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$SavedPaymentMethodFilter>? get and =>
      (_$data['and'] as List<Input$SavedPaymentMethodFilter>?);

  List<Input$SavedPaymentMethodFilter>? get or =>
      (_$data['or'] as List<Input$SavedPaymentMethodFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$SavedPaymentMethodFilter<Input$SavedPaymentMethodFilter>
      get copyWith => CopyWith$Input$SavedPaymentMethodFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SavedPaymentMethodFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$riderId = riderId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
    ]);
  }
}

abstract class CopyWith$Input$SavedPaymentMethodFilter<TRes> {
  factory CopyWith$Input$SavedPaymentMethodFilter(
    Input$SavedPaymentMethodFilter instance,
    TRes Function(Input$SavedPaymentMethodFilter) then,
  ) = _CopyWithImpl$Input$SavedPaymentMethodFilter;

  factory CopyWith$Input$SavedPaymentMethodFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$SavedPaymentMethodFilter;

  TRes call({
    List<Input$SavedPaymentMethodFilter>? and,
    List<Input$SavedPaymentMethodFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  });
  TRes and(
      Iterable<Input$SavedPaymentMethodFilter>? Function(
              Iterable<
                  CopyWith$Input$SavedPaymentMethodFilter<
                      Input$SavedPaymentMethodFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$SavedPaymentMethodFilter>? Function(
              Iterable<
                  CopyWith$Input$SavedPaymentMethodFilter<
                      Input$SavedPaymentMethodFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
}

class _CopyWithImpl$Input$SavedPaymentMethodFilter<TRes>
    implements CopyWith$Input$SavedPaymentMethodFilter<TRes> {
  _CopyWithImpl$Input$SavedPaymentMethodFilter(
    this._instance,
    this._then,
  );

  final Input$SavedPaymentMethodFilter _instance;

  final TRes Function(Input$SavedPaymentMethodFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? riderId = _undefined,
  }) =>
      _then(Input$SavedPaymentMethodFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$SavedPaymentMethodFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$SavedPaymentMethodFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$SavedPaymentMethodFilter>? Function(
                  Iterable<
                      CopyWith$Input$SavedPaymentMethodFilter<
                          Input$SavedPaymentMethodFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$SavedPaymentMethodFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$SavedPaymentMethodFilter>? Function(
                  Iterable<
                      CopyWith$Input$SavedPaymentMethodFilter<
                          Input$SavedPaymentMethodFilter>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$SavedPaymentMethodFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }
}

class _CopyWithStubImpl$Input$SavedPaymentMethodFilter<TRes>
    implements CopyWith$Input$SavedPaymentMethodFilter<TRes> {
  _CopyWithStubImpl$Input$SavedPaymentMethodFilter(this._res);

  TRes _res;

  call({
    List<Input$SavedPaymentMethodFilter>? and,
    List<Input$SavedPaymentMethodFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$SavedPaymentMethodSort {
  factory Input$SavedPaymentMethodSort({
    required Enum$SavedPaymentMethodSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$SavedPaymentMethodSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$SavedPaymentMethodSort._(this._$data);

  factory Input$SavedPaymentMethodSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$SavedPaymentMethodSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$SavedPaymentMethodSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$SavedPaymentMethodSortFields get field =>
      (_$data['field'] as Enum$SavedPaymentMethodSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$SavedPaymentMethodSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$SavedPaymentMethodSort<Input$SavedPaymentMethodSort>
      get copyWith => CopyWith$Input$SavedPaymentMethodSort(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SavedPaymentMethodSort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$SavedPaymentMethodSort<TRes> {
  factory CopyWith$Input$SavedPaymentMethodSort(
    Input$SavedPaymentMethodSort instance,
    TRes Function(Input$SavedPaymentMethodSort) then,
  ) = _CopyWithImpl$Input$SavedPaymentMethodSort;

  factory CopyWith$Input$SavedPaymentMethodSort.stub(TRes res) =
      _CopyWithStubImpl$Input$SavedPaymentMethodSort;

  TRes call({
    Enum$SavedPaymentMethodSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$SavedPaymentMethodSort<TRes>
    implements CopyWith$Input$SavedPaymentMethodSort<TRes> {
  _CopyWithImpl$Input$SavedPaymentMethodSort(
    this._instance,
    this._then,
  );

  final Input$SavedPaymentMethodSort _instance;

  final TRes Function(Input$SavedPaymentMethodSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$SavedPaymentMethodSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$SavedPaymentMethodSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$SavedPaymentMethodSort<TRes>
    implements CopyWith$Input$SavedPaymentMethodSort<TRes> {
  _CopyWithStubImpl$Input$SavedPaymentMethodSort(this._res);

  TRes _res;

  call({
    Enum$SavedPaymentMethodSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$DriverFilter {
  factory Input$DriverFilter({
    List<Input$DriverFilter>? and,
    List<Input$DriverFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$DriverFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$DriverFilter._(this._$data);

  factory Input$DriverFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DriverFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DriverFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$DriverFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverFilter>? get and =>
      (_$data['and'] as List<Input$DriverFilter>?);

  List<Input$DriverFilter>? get or =>
      (_$data['or'] as List<Input$DriverFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverFilter<Input$DriverFilter> get copyWith =>
      CopyWith$Input$DriverFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverFilter<TRes> {
  factory CopyWith$Input$DriverFilter(
    Input$DriverFilter instance,
    TRes Function(Input$DriverFilter) then,
  ) = _CopyWithImpl$Input$DriverFilter;

  factory CopyWith$Input$DriverFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverFilter;

  TRes call({
    List<Input$DriverFilter>? and,
    List<Input$DriverFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$DriverFilter>? Function(
              Iterable<CopyWith$Input$DriverFilter<Input$DriverFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverFilter>? Function(
              Iterable<CopyWith$Input$DriverFilter<Input$DriverFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$DriverFilter<TRes>
    implements CopyWith$Input$DriverFilter<TRes> {
  _CopyWithImpl$Input$DriverFilter(
    this._instance,
    this._then,
  );

  final Input$DriverFilter _instance;

  final TRes Function(Input$DriverFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$DriverFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$DriverFilter>?),
        if (or != _undefined) 'or': (or as List<Input$DriverFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$DriverFilter>? Function(
                  Iterable<CopyWith$Input$DriverFilter<Input$DriverFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$DriverFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$DriverFilter>? Function(
                  Iterable<CopyWith$Input$DriverFilter<Input$DriverFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$DriverFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$DriverFilter<TRes>
    implements CopyWith$Input$DriverFilter<TRes> {
  _CopyWithStubImpl$Input$DriverFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverFilter>? and,
    List<Input$DriverFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$DriverSort {
  factory Input$DriverSort({
    required Enum$DriverSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$DriverSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$DriverSort._(this._$data);

  factory Input$DriverSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$DriverSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$DriverSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverSortFields get field => (_$data['field'] as Enum$DriverSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$DriverSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$DriverSort<Input$DriverSort> get copyWith =>
      CopyWith$Input$DriverSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverSort<TRes> {
  factory CopyWith$Input$DriverSort(
    Input$DriverSort instance,
    TRes Function(Input$DriverSort) then,
  ) = _CopyWithImpl$Input$DriverSort;

  factory CopyWith$Input$DriverSort.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverSort;

  TRes call({
    Enum$DriverSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$DriverSort<TRes>
    implements CopyWith$Input$DriverSort<TRes> {
  _CopyWithImpl$Input$DriverSort(
    this._instance,
    this._then,
  );

  final Input$DriverSort _instance;

  final TRes Function(Input$DriverSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$DriverSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$DriverSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$DriverSort<TRes>
    implements CopyWith$Input$DriverSort<TRes> {
  _CopyWithStubImpl$Input$DriverSort(this._res);

  TRes _res;

  call({
    Enum$DriverSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OrderFilter {
  factory Input$OrderFilter({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? paymentGatewayId,
    Input$IDFilterComparison? paymentMethodId,
  }) =>
      Input$OrderFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (status != null) r'status': status,
        if (createdOn != null) r'createdOn': createdOn,
        if (distanceBest != null) r'distanceBest': distanceBest,
        if (riderId != null) r'riderId': riderId,
        if (driverId != null) r'driverId': driverId,
        if (paymentGatewayId != null) r'paymentGatewayId': paymentGatewayId,
        if (paymentMethodId != null) r'paymentMethodId': paymentMethodId,
      });

  Input$OrderFilter._(this._$data);

  factory Input$OrderFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$OrderFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$OrderFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : Input$OrderStatusFilterComparison.fromJson(
              (l$status as Map<String, dynamic>));
    }
    if (data.containsKey('createdOn')) {
      final l$createdOn = data['createdOn'];
      result$data['createdOn'] = l$createdOn == null
          ? null
          : Input$DateFieldComparison.fromJson(
              (l$createdOn as Map<String, dynamic>));
    }
    if (data.containsKey('distanceBest')) {
      final l$distanceBest = data['distanceBest'];
      result$data['distanceBest'] = l$distanceBest == null
          ? null
          : Input$IntFieldComparison.fromJson(
              (l$distanceBest as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    if (data.containsKey('paymentGatewayId')) {
      final l$paymentGatewayId = data['paymentGatewayId'];
      result$data['paymentGatewayId'] = l$paymentGatewayId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$paymentGatewayId as Map<String, dynamic>));
    }
    if (data.containsKey('paymentMethodId')) {
      final l$paymentMethodId = data['paymentMethodId'];
      result$data['paymentMethodId'] = l$paymentMethodId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$paymentMethodId as Map<String, dynamic>));
    }
    return Input$OrderFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderFilter>? get and =>
      (_$data['and'] as List<Input$OrderFilter>?);

  List<Input$OrderFilter>? get or => (_$data['or'] as List<Input$OrderFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$OrderStatusFilterComparison? get status =>
      (_$data['status'] as Input$OrderStatusFilterComparison?);

  Input$DateFieldComparison? get createdOn =>
      (_$data['createdOn'] as Input$DateFieldComparison?);

  Input$IntFieldComparison? get distanceBest =>
      (_$data['distanceBest'] as Input$IntFieldComparison?);

  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get paymentGatewayId =>
      (_$data['paymentGatewayId'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get paymentMethodId =>
      (_$data['paymentMethodId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] = l$status?.toJson();
    }
    if (_$data.containsKey('createdOn')) {
      final l$createdOn = createdOn;
      result$data['createdOn'] = l$createdOn?.toJson();
    }
    if (_$data.containsKey('distanceBest')) {
      final l$distanceBest = distanceBest;
      result$data['distanceBest'] = l$distanceBest?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    if (_$data.containsKey('paymentGatewayId')) {
      final l$paymentGatewayId = paymentGatewayId;
      result$data['paymentGatewayId'] = l$paymentGatewayId?.toJson();
    }
    if (_$data.containsKey('paymentMethodId')) {
      final l$paymentMethodId = paymentMethodId;
      result$data['paymentMethodId'] = l$paymentMethodId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderFilter<Input$OrderFilter> get copyWith =>
      CopyWith$Input$OrderFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderFilter || runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$createdOn = createdOn;
    final lOther$createdOn = other.createdOn;
    if (_$data.containsKey('createdOn') !=
        other._$data.containsKey('createdOn')) {
      return false;
    }
    if (l$createdOn != lOther$createdOn) {
      return false;
    }
    final l$distanceBest = distanceBest;
    final lOther$distanceBest = other.distanceBest;
    if (_$data.containsKey('distanceBest') !=
        other._$data.containsKey('distanceBest')) {
      return false;
    }
    if (l$distanceBest != lOther$distanceBest) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    final l$paymentGatewayId = paymentGatewayId;
    final lOther$paymentGatewayId = other.paymentGatewayId;
    if (_$data.containsKey('paymentGatewayId') !=
        other._$data.containsKey('paymentGatewayId')) {
      return false;
    }
    if (l$paymentGatewayId != lOther$paymentGatewayId) {
      return false;
    }
    final l$paymentMethodId = paymentMethodId;
    final lOther$paymentMethodId = other.paymentMethodId;
    if (_$data.containsKey('paymentMethodId') !=
        other._$data.containsKey('paymentMethodId')) {
      return false;
    }
    if (l$paymentMethodId != lOther$paymentMethodId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$status = status;
    final l$createdOn = createdOn;
    final l$distanceBest = distanceBest;
    final l$riderId = riderId;
    final l$driverId = driverId;
    final l$paymentGatewayId = paymentGatewayId;
    final l$paymentMethodId = paymentMethodId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('createdOn') ? l$createdOn : const {},
      _$data.containsKey('distanceBest') ? l$distanceBest : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
      _$data.containsKey('paymentGatewayId') ? l$paymentGatewayId : const {},
      _$data.containsKey('paymentMethodId') ? l$paymentMethodId : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderFilter<TRes> {
  factory CopyWith$Input$OrderFilter(
    Input$OrderFilter instance,
    TRes Function(Input$OrderFilter) then,
  ) = _CopyWithImpl$Input$OrderFilter;

  factory CopyWith$Input$OrderFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderFilter;

  TRes call({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? paymentGatewayId,
    Input$IDFilterComparison? paymentMethodId,
  });
  TRes and(
      Iterable<Input$OrderFilter>? Function(
              Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderFilter>? Function(
              Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$OrderStatusFilterComparison<TRes> get status;
  CopyWith$Input$DateFieldComparison<TRes> get createdOn;
  CopyWith$Input$IntFieldComparison<TRes> get distanceBest;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
  CopyWith$Input$IDFilterComparison<TRes> get paymentGatewayId;
  CopyWith$Input$IDFilterComparison<TRes> get paymentMethodId;
}

class _CopyWithImpl$Input$OrderFilter<TRes>
    implements CopyWith$Input$OrderFilter<TRes> {
  _CopyWithImpl$Input$OrderFilter(
    this._instance,
    this._then,
  );

  final Input$OrderFilter _instance;

  final TRes Function(Input$OrderFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? status = _undefined,
    Object? createdOn = _undefined,
    Object? distanceBest = _undefined,
    Object? riderId = _undefined,
    Object? driverId = _undefined,
    Object? paymentGatewayId = _undefined,
    Object? paymentMethodId = _undefined,
  }) =>
      _then(Input$OrderFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$OrderFilter>?),
        if (or != _undefined) 'or': (or as List<Input$OrderFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (status != _undefined)
          'status': (status as Input$OrderStatusFilterComparison?),
        if (createdOn != _undefined)
          'createdOn': (createdOn as Input$DateFieldComparison?),
        if (distanceBest != _undefined)
          'distanceBest': (distanceBest as Input$IntFieldComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
        if (paymentGatewayId != _undefined)
          'paymentGatewayId': (paymentGatewayId as Input$IDFilterComparison?),
        if (paymentMethodId != _undefined)
          'paymentMethodId': (paymentMethodId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$OrderFilter>? Function(
                  Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$OrderFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$OrderFilter>? Function(
                  Iterable<CopyWith$Input$OrderFilter<Input$OrderFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$OrderFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$OrderStatusFilterComparison<TRes> get status {
    final local$status = _instance.status;
    return local$status == null
        ? CopyWith$Input$OrderStatusFilterComparison.stub(_then(_instance))
        : CopyWith$Input$OrderStatusFilterComparison(
            local$status, (e) => call(status: e));
  }

  CopyWith$Input$DateFieldComparison<TRes> get createdOn {
    final local$createdOn = _instance.createdOn;
    return local$createdOn == null
        ? CopyWith$Input$DateFieldComparison.stub(_then(_instance))
        : CopyWith$Input$DateFieldComparison(
            local$createdOn, (e) => call(createdOn: e));
  }

  CopyWith$Input$IntFieldComparison<TRes> get distanceBest {
    final local$distanceBest = _instance.distanceBest;
    return local$distanceBest == null
        ? CopyWith$Input$IntFieldComparison.stub(_then(_instance))
        : CopyWith$Input$IntFieldComparison(
            local$distanceBest, (e) => call(distanceBest: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get paymentGatewayId {
    final local$paymentGatewayId = _instance.paymentGatewayId;
    return local$paymentGatewayId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$paymentGatewayId, (e) => call(paymentGatewayId: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get paymentMethodId {
    final local$paymentMethodId = _instance.paymentMethodId;
    return local$paymentMethodId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$paymentMethodId, (e) => call(paymentMethodId: e));
  }
}

class _CopyWithStubImpl$Input$OrderFilter<TRes>
    implements CopyWith$Input$OrderFilter<TRes> {
  _CopyWithStubImpl$Input$OrderFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$IDFilterComparison? riderId,
    Input$IDFilterComparison? driverId,
    Input$IDFilterComparison? paymentGatewayId,
    Input$IDFilterComparison? paymentMethodId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$OrderStatusFilterComparison<TRes> get status =>
      CopyWith$Input$OrderStatusFilterComparison.stub(_res);

  CopyWith$Input$DateFieldComparison<TRes> get createdOn =>
      CopyWith$Input$DateFieldComparison.stub(_res);

  CopyWith$Input$IntFieldComparison<TRes> get distanceBest =>
      CopyWith$Input$IntFieldComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get paymentGatewayId =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get paymentMethodId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderSort {
  factory Input$OrderSort({
    required Enum$OrderSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$OrderSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$OrderSort._(this._$data);

  factory Input$OrderSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$OrderSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$OrderSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderSortFields get field => (_$data['field'] as Enum$OrderSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$OrderSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$OrderSort<Input$OrderSort> get copyWith =>
      CopyWith$Input$OrderSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderSort<TRes> {
  factory CopyWith$Input$OrderSort(
    Input$OrderSort instance,
    TRes Function(Input$OrderSort) then,
  ) = _CopyWithImpl$Input$OrderSort;

  factory CopyWith$Input$OrderSort.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderSort;

  TRes call({
    Enum$OrderSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$OrderSort<TRes>
    implements CopyWith$Input$OrderSort<TRes> {
  _CopyWithImpl$Input$OrderSort(
    this._instance,
    this._then,
  );

  final Input$OrderSort _instance;

  final TRes Function(Input$OrderSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$OrderSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$OrderSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$OrderSort<TRes>
    implements CopyWith$Input$OrderSort<TRes> {
  _CopyWithStubImpl$Input$OrderSort(this._res);

  TRes _res;

  call({
    Enum$OrderSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$PointInput {
  factory Input$PointInput({
    required double lat,
    required double lng,
    int? heading,
  }) =>
      Input$PointInput._({
        r'lat': lat,
        r'lng': lng,
        if (heading != null) r'heading': heading,
      });

  Input$PointInput._(this._$data);

  factory Input$PointInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lat = data['lat'];
    result$data['lat'] = (l$lat as num).toDouble();
    final l$lng = data['lng'];
    result$data['lng'] = (l$lng as num).toDouble();
    if (data.containsKey('heading')) {
      final l$heading = data['heading'];
      result$data['heading'] = (l$heading as int?);
    }
    return Input$PointInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lat => (_$data['lat'] as double);

  double get lng => (_$data['lng'] as double);

  int? get heading => (_$data['heading'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lat = lat;
    result$data['lat'] = l$lat;
    final l$lng = lng;
    result$data['lng'] = l$lng;
    if (_$data.containsKey('heading')) {
      final l$heading = heading;
      result$data['heading'] = l$heading;
    }
    return result$data;
  }

  CopyWith$Input$PointInput<Input$PointInput> get copyWith =>
      CopyWith$Input$PointInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PointInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$lat = lat;
    final lOther$lat = other.lat;
    if (l$lat != lOther$lat) {
      return false;
    }
    final l$lng = lng;
    final lOther$lng = other.lng;
    if (l$lng != lOther$lng) {
      return false;
    }
    final l$heading = heading;
    final lOther$heading = other.heading;
    if (_$data.containsKey('heading') != other._$data.containsKey('heading')) {
      return false;
    }
    if (l$heading != lOther$heading) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lat = lat;
    final l$lng = lng;
    final l$heading = heading;
    return Object.hashAll([
      l$lat,
      l$lng,
      _$data.containsKey('heading') ? l$heading : const {},
    ]);
  }
}

abstract class CopyWith$Input$PointInput<TRes> {
  factory CopyWith$Input$PointInput(
    Input$PointInput instance,
    TRes Function(Input$PointInput) then,
  ) = _CopyWithImpl$Input$PointInput;

  factory CopyWith$Input$PointInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PointInput;

  TRes call({
    double? lat,
    double? lng,
    int? heading,
  });
}

class _CopyWithImpl$Input$PointInput<TRes>
    implements CopyWith$Input$PointInput<TRes> {
  _CopyWithImpl$Input$PointInput(
    this._instance,
    this._then,
  );

  final Input$PointInput _instance;

  final TRes Function(Input$PointInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lat = _undefined,
    Object? lng = _undefined,
    Object? heading = _undefined,
  }) =>
      _then(Input$PointInput._({
        ..._instance._$data,
        if (lat != _undefined && lat != null) 'lat': (lat as double),
        if (lng != _undefined && lng != null) 'lng': (lng as double),
        if (heading != _undefined) 'heading': (heading as int?),
      }));
}

class _CopyWithStubImpl$Input$PointInput<TRes>
    implements CopyWith$Input$PointInput<TRes> {
  _CopyWithStubImpl$Input$PointInput(this._res);

  TRes _res;

  call({
    double? lat,
    double? lng,
    int? heading,
  }) =>
      _res;
}

class Input$PhoneNumberInput {
  factory Input$PhoneNumberInput({
    required String countryCode,
    required String number,
  }) =>
      Input$PhoneNumberInput._({
        r'countryCode': countryCode,
        r'number': number,
      });

  Input$PhoneNumberInput._(this._$data);

  factory Input$PhoneNumberInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$countryCode = data['countryCode'];
    result$data['countryCode'] = (l$countryCode as String);
    final l$number = data['number'];
    result$data['number'] = (l$number as String);
    return Input$PhoneNumberInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get countryCode => (_$data['countryCode'] as String);

  String get number => (_$data['number'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$countryCode = countryCode;
    result$data['countryCode'] = l$countryCode;
    final l$number = number;
    result$data['number'] = l$number;
    return result$data;
  }

  CopyWith$Input$PhoneNumberInput<Input$PhoneNumberInput> get copyWith =>
      CopyWith$Input$PhoneNumberInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PhoneNumberInput || runtimeType != other.runtimeType) {
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
    return true;
  }

  @override
  int get hashCode {
    final l$countryCode = countryCode;
    final l$number = number;
    return Object.hashAll([
      l$countryCode,
      l$number,
    ]);
  }
}

abstract class CopyWith$Input$PhoneNumberInput<TRes> {
  factory CopyWith$Input$PhoneNumberInput(
    Input$PhoneNumberInput instance,
    TRes Function(Input$PhoneNumberInput) then,
  ) = _CopyWithImpl$Input$PhoneNumberInput;

  factory CopyWith$Input$PhoneNumberInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PhoneNumberInput;

  TRes call({
    String? countryCode,
    String? number,
  });
}

class _CopyWithImpl$Input$PhoneNumberInput<TRes>
    implements CopyWith$Input$PhoneNumberInput<TRes> {
  _CopyWithImpl$Input$PhoneNumberInput(
    this._instance,
    this._then,
  );

  final Input$PhoneNumberInput _instance;

  final TRes Function(Input$PhoneNumberInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? countryCode = _undefined,
    Object? number = _undefined,
  }) =>
      _then(Input$PhoneNumberInput._({
        ..._instance._$data,
        if (countryCode != _undefined && countryCode != null)
          'countryCode': (countryCode as String),
        if (number != _undefined && number != null)
          'number': (number as String),
      }));
}

class _CopyWithStubImpl$Input$PhoneNumberInput<TRes>
    implements CopyWith$Input$PhoneNumberInput<TRes> {
  _CopyWithStubImpl$Input$PhoneNumberInput(this._res);

  TRes _res;

  call({
    String? countryCode,
    String? number,
  }) =>
      _res;
}

class Input$DeliveryContactInput {
  factory Input$DeliveryContactInput({
    required String name,
    required Input$PhoneNumberInput phoneNumber,
    String? email,
    required String addressLine1,
    String? addressLine2,
    String? zone,
    String? buildingNumber,
    String? apartmentNumber,
    String? city,
    String? state,
    String? instructions,
    String? postalCode,
    String? companyName,
  }) =>
      Input$DeliveryContactInput._({
        r'name': name,
        r'phoneNumber': phoneNumber,
        if (email != null) r'email': email,
        r'addressLine1': addressLine1,
        if (addressLine2 != null) r'addressLine2': addressLine2,
        if (zone != null) r'zone': zone,
        if (buildingNumber != null) r'buildingNumber': buildingNumber,
        if (apartmentNumber != null) r'apartmentNumber': apartmentNumber,
        if (city != null) r'city': city,
        if (state != null) r'state': state,
        if (instructions != null) r'instructions': instructions,
        if (postalCode != null) r'postalCode': postalCode,
        if (companyName != null) r'companyName': companyName,
      });

  Input$DeliveryContactInput._(this._$data);

  factory Input$DeliveryContactInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$phoneNumber = data['phoneNumber'];
    result$data['phoneNumber'] = Input$PhoneNumberInput.fromJson(
        (l$phoneNumber as Map<String, dynamic>));
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    final l$addressLine1 = data['addressLine1'];
    result$data['addressLine1'] = (l$addressLine1 as String);
    if (data.containsKey('addressLine2')) {
      final l$addressLine2 = data['addressLine2'];
      result$data['addressLine2'] = (l$addressLine2 as String?);
    }
    if (data.containsKey('zone')) {
      final l$zone = data['zone'];
      result$data['zone'] = (l$zone as String?);
    }
    if (data.containsKey('buildingNumber')) {
      final l$buildingNumber = data['buildingNumber'];
      result$data['buildingNumber'] = (l$buildingNumber as String?);
    }
    if (data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = data['apartmentNumber'];
      result$data['apartmentNumber'] = (l$apartmentNumber as String?);
    }
    if (data.containsKey('city')) {
      final l$city = data['city'];
      result$data['city'] = (l$city as String?);
    }
    if (data.containsKey('state')) {
      final l$state = data['state'];
      result$data['state'] = (l$state as String?);
    }
    if (data.containsKey('instructions')) {
      final l$instructions = data['instructions'];
      result$data['instructions'] = (l$instructions as String?);
    }
    if (data.containsKey('postalCode')) {
      final l$postalCode = data['postalCode'];
      result$data['postalCode'] = (l$postalCode as String?);
    }
    if (data.containsKey('companyName')) {
      final l$companyName = data['companyName'];
      result$data['companyName'] = (l$companyName as String?);
    }
    return Input$DeliveryContactInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  Input$PhoneNumberInput get phoneNumber =>
      (_$data['phoneNumber'] as Input$PhoneNumberInput);

  String? get email => (_$data['email'] as String?);

  String get addressLine1 => (_$data['addressLine1'] as String);

  String? get addressLine2 => (_$data['addressLine2'] as String?);

  String? get zone => (_$data['zone'] as String?);

  String? get buildingNumber => (_$data['buildingNumber'] as String?);

  String? get apartmentNumber => (_$data['apartmentNumber'] as String?);

  String? get city => (_$data['city'] as String?);

  String? get state => (_$data['state'] as String?);

  String? get instructions => (_$data['instructions'] as String?);

  String? get postalCode => (_$data['postalCode'] as String?);

  String? get companyName => (_$data['companyName'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$phoneNumber = phoneNumber;
    result$data['phoneNumber'] = l$phoneNumber.toJson();
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    final l$addressLine1 = addressLine1;
    result$data['addressLine1'] = l$addressLine1;
    if (_$data.containsKey('addressLine2')) {
      final l$addressLine2 = addressLine2;
      result$data['addressLine2'] = l$addressLine2;
    }
    if (_$data.containsKey('zone')) {
      final l$zone = zone;
      result$data['zone'] = l$zone;
    }
    if (_$data.containsKey('buildingNumber')) {
      final l$buildingNumber = buildingNumber;
      result$data['buildingNumber'] = l$buildingNumber;
    }
    if (_$data.containsKey('apartmentNumber')) {
      final l$apartmentNumber = apartmentNumber;
      result$data['apartmentNumber'] = l$apartmentNumber;
    }
    if (_$data.containsKey('city')) {
      final l$city = city;
      result$data['city'] = l$city;
    }
    if (_$data.containsKey('state')) {
      final l$state = state;
      result$data['state'] = l$state;
    }
    if (_$data.containsKey('instructions')) {
      final l$instructions = instructions;
      result$data['instructions'] = l$instructions;
    }
    if (_$data.containsKey('postalCode')) {
      final l$postalCode = postalCode;
      result$data['postalCode'] = l$postalCode;
    }
    if (_$data.containsKey('companyName')) {
      final l$companyName = companyName;
      result$data['companyName'] = l$companyName;
    }
    return result$data;
  }

  CopyWith$Input$DeliveryContactInput<Input$DeliveryContactInput>
      get copyWith => CopyWith$Input$DeliveryContactInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DeliveryContactInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$addressLine1 = addressLine1;
    final lOther$addressLine1 = other.addressLine1;
    if (l$addressLine1 != lOther$addressLine1) {
      return false;
    }
    final l$addressLine2 = addressLine2;
    final lOther$addressLine2 = other.addressLine2;
    if (_$data.containsKey('addressLine2') !=
        other._$data.containsKey('addressLine2')) {
      return false;
    }
    if (l$addressLine2 != lOther$addressLine2) {
      return false;
    }
    final l$zone = zone;
    final lOther$zone = other.zone;
    if (_$data.containsKey('zone') != other._$data.containsKey('zone')) {
      return false;
    }
    if (l$zone != lOther$zone) {
      return false;
    }
    final l$buildingNumber = buildingNumber;
    final lOther$buildingNumber = other.buildingNumber;
    if (_$data.containsKey('buildingNumber') !=
        other._$data.containsKey('buildingNumber')) {
      return false;
    }
    if (l$buildingNumber != lOther$buildingNumber) {
      return false;
    }
    final l$apartmentNumber = apartmentNumber;
    final lOther$apartmentNumber = other.apartmentNumber;
    if (_$data.containsKey('apartmentNumber') !=
        other._$data.containsKey('apartmentNumber')) {
      return false;
    }
    if (l$apartmentNumber != lOther$apartmentNumber) {
      return false;
    }
    final l$city = city;
    final lOther$city = other.city;
    if (_$data.containsKey('city') != other._$data.containsKey('city')) {
      return false;
    }
    if (l$city != lOther$city) {
      return false;
    }
    final l$state = state;
    final lOther$state = other.state;
    if (_$data.containsKey('state') != other._$data.containsKey('state')) {
      return false;
    }
    if (l$state != lOther$state) {
      return false;
    }
    final l$instructions = instructions;
    final lOther$instructions = other.instructions;
    if (_$data.containsKey('instructions') !=
        other._$data.containsKey('instructions')) {
      return false;
    }
    if (l$instructions != lOther$instructions) {
      return false;
    }
    final l$postalCode = postalCode;
    final lOther$postalCode = other.postalCode;
    if (_$data.containsKey('postalCode') !=
        other._$data.containsKey('postalCode')) {
      return false;
    }
    if (l$postalCode != lOther$postalCode) {
      return false;
    }
    final l$companyName = companyName;
    final lOther$companyName = other.companyName;
    if (_$data.containsKey('companyName') !=
        other._$data.containsKey('companyName')) {
      return false;
    }
    if (l$companyName != lOther$companyName) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$phoneNumber = phoneNumber;
    final l$email = email;
    final l$addressLine1 = addressLine1;
    final l$addressLine2 = addressLine2;
    final l$zone = zone;
    final l$buildingNumber = buildingNumber;
    final l$apartmentNumber = apartmentNumber;
    final l$city = city;
    final l$state = state;
    final l$instructions = instructions;
    final l$postalCode = postalCode;
    final l$companyName = companyName;
    return Object.hashAll([
      l$name,
      l$phoneNumber,
      _$data.containsKey('email') ? l$email : const {},
      l$addressLine1,
      _$data.containsKey('addressLine2') ? l$addressLine2 : const {},
      _$data.containsKey('zone') ? l$zone : const {},
      _$data.containsKey('buildingNumber') ? l$buildingNumber : const {},
      _$data.containsKey('apartmentNumber') ? l$apartmentNumber : const {},
      _$data.containsKey('city') ? l$city : const {},
      _$data.containsKey('state') ? l$state : const {},
      _$data.containsKey('instructions') ? l$instructions : const {},
      _$data.containsKey('postalCode') ? l$postalCode : const {},
      _$data.containsKey('companyName') ? l$companyName : const {},
    ]);
  }
}

abstract class CopyWith$Input$DeliveryContactInput<TRes> {
  factory CopyWith$Input$DeliveryContactInput(
    Input$DeliveryContactInput instance,
    TRes Function(Input$DeliveryContactInput) then,
  ) = _CopyWithImpl$Input$DeliveryContactInput;

  factory CopyWith$Input$DeliveryContactInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeliveryContactInput;

  TRes call({
    String? name,
    Input$PhoneNumberInput? phoneNumber,
    String? email,
    String? addressLine1,
    String? addressLine2,
    String? zone,
    String? buildingNumber,
    String? apartmentNumber,
    String? city,
    String? state,
    String? instructions,
    String? postalCode,
    String? companyName,
  });
  CopyWith$Input$PhoneNumberInput<TRes> get phoneNumber;
}

class _CopyWithImpl$Input$DeliveryContactInput<TRes>
    implements CopyWith$Input$DeliveryContactInput<TRes> {
  _CopyWithImpl$Input$DeliveryContactInput(
    this._instance,
    this._then,
  );

  final Input$DeliveryContactInput _instance;

  final TRes Function(Input$DeliveryContactInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? phoneNumber = _undefined,
    Object? email = _undefined,
    Object? addressLine1 = _undefined,
    Object? addressLine2 = _undefined,
    Object? zone = _undefined,
    Object? buildingNumber = _undefined,
    Object? apartmentNumber = _undefined,
    Object? city = _undefined,
    Object? state = _undefined,
    Object? instructions = _undefined,
    Object? postalCode = _undefined,
    Object? companyName = _undefined,
  }) =>
      _then(Input$DeliveryContactInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (phoneNumber != _undefined && phoneNumber != null)
          'phoneNumber': (phoneNumber as Input$PhoneNumberInput),
        if (email != _undefined) 'email': (email as String?),
        if (addressLine1 != _undefined && addressLine1 != null)
          'addressLine1': (addressLine1 as String),
        if (addressLine2 != _undefined)
          'addressLine2': (addressLine2 as String?),
        if (zone != _undefined) 'zone': (zone as String?),
        if (buildingNumber != _undefined)
          'buildingNumber': (buildingNumber as String?),
        if (apartmentNumber != _undefined)
          'apartmentNumber': (apartmentNumber as String?),
        if (city != _undefined) 'city': (city as String?),
        if (state != _undefined) 'state': (state as String?),
        if (instructions != _undefined)
          'instructions': (instructions as String?),
        if (postalCode != _undefined) 'postalCode': (postalCode as String?),
        if (companyName != _undefined) 'companyName': (companyName as String?),
      }));

  CopyWith$Input$PhoneNumberInput<TRes> get phoneNumber {
    final local$phoneNumber = _instance.phoneNumber;
    return CopyWith$Input$PhoneNumberInput(
        local$phoneNumber, (e) => call(phoneNumber: e));
  }
}

class _CopyWithStubImpl$Input$DeliveryContactInput<TRes>
    implements CopyWith$Input$DeliveryContactInput<TRes> {
  _CopyWithStubImpl$Input$DeliveryContactInput(this._res);

  TRes _res;

  call({
    String? name,
    Input$PhoneNumberInput? phoneNumber,
    String? email,
    String? addressLine1,
    String? addressLine2,
    String? zone,
    String? buildingNumber,
    String? apartmentNumber,
    String? city,
    String? state,
    String? instructions,
    String? postalCode,
    String? companyName,
  }) =>
      _res;

  CopyWith$Input$PhoneNumberInput<TRes> get phoneNumber =>
      CopyWith$Input$PhoneNumberInput.stub(_res);
}

class Input$CalculateFareInput {
  factory Input$CalculateFareInput({
    Enum$TaxiOrderType? orderType,
    int? waitTime,
    required List<Input$PointInput> points,
    bool? twoWay,
    String? couponCode,
    List<String>? selectedOptionIds,
  }) =>
      Input$CalculateFareInput._({
        if (orderType != null) r'orderType': orderType,
        if (waitTime != null) r'waitTime': waitTime,
        r'points': points,
        if (twoWay != null) r'twoWay': twoWay,
        if (couponCode != null) r'couponCode': couponCode,
        if (selectedOptionIds != null) r'selectedOptionIds': selectedOptionIds,
      });

  Input$CalculateFareInput._(this._$data);

  factory Input$CalculateFareInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('orderType')) {
      final l$orderType = data['orderType'];
      result$data['orderType'] =
          fromJson$Enum$TaxiOrderType((l$orderType as String));
    }
    if (data.containsKey('waitTime')) {
      final l$waitTime = data['waitTime'];
      result$data['waitTime'] = (l$waitTime as int?);
    }
    final l$points = data['points'];
    result$data['points'] = (l$points as List<dynamic>)
        .map((e) => Input$PointInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('twoWay')) {
      final l$twoWay = data['twoWay'];
      result$data['twoWay'] = (l$twoWay as bool?);
    }
    if (data.containsKey('couponCode')) {
      final l$couponCode = data['couponCode'];
      result$data['couponCode'] = (l$couponCode as String?);
    }
    if (data.containsKey('selectedOptionIds')) {
      final l$selectedOptionIds = data['selectedOptionIds'];
      result$data['selectedOptionIds'] = (l$selectedOptionIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    return Input$CalculateFareInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$TaxiOrderType? get orderType =>
      (_$data['orderType'] as Enum$TaxiOrderType?);

  int? get waitTime => (_$data['waitTime'] as int?);

  List<Input$PointInput> get points =>
      (_$data['points'] as List<Input$PointInput>);

  bool? get twoWay => (_$data['twoWay'] as bool?);

  String? get couponCode => (_$data['couponCode'] as String?);

  List<String>? get selectedOptionIds =>
      (_$data['selectedOptionIds'] as List<String>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('orderType')) {
      final l$orderType = orderType;
      result$data['orderType'] =
          toJson$Enum$TaxiOrderType((l$orderType as Enum$TaxiOrderType));
    }
    if (_$data.containsKey('waitTime')) {
      final l$waitTime = waitTime;
      result$data['waitTime'] = l$waitTime;
    }
    final l$points = points;
    result$data['points'] = l$points.map((e) => e.toJson()).toList();
    if (_$data.containsKey('twoWay')) {
      final l$twoWay = twoWay;
      result$data['twoWay'] = l$twoWay;
    }
    if (_$data.containsKey('couponCode')) {
      final l$couponCode = couponCode;
      result$data['couponCode'] = l$couponCode;
    }
    if (_$data.containsKey('selectedOptionIds')) {
      final l$selectedOptionIds = selectedOptionIds;
      result$data['selectedOptionIds'] =
          l$selectedOptionIds?.map((e) => e).toList();
    }
    return result$data;
  }

  CopyWith$Input$CalculateFareInput<Input$CalculateFareInput> get copyWith =>
      CopyWith$Input$CalculateFareInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CalculateFareInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderType = orderType;
    final lOther$orderType = other.orderType;
    if (_$data.containsKey('orderType') !=
        other._$data.containsKey('orderType')) {
      return false;
    }
    if (l$orderType != lOther$orderType) {
      return false;
    }
    final l$waitTime = waitTime;
    final lOther$waitTime = other.waitTime;
    if (_$data.containsKey('waitTime') !=
        other._$data.containsKey('waitTime')) {
      return false;
    }
    if (l$waitTime != lOther$waitTime) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$twoWay = twoWay;
    final lOther$twoWay = other.twoWay;
    if (_$data.containsKey('twoWay') != other._$data.containsKey('twoWay')) {
      return false;
    }
    if (l$twoWay != lOther$twoWay) {
      return false;
    }
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (_$data.containsKey('couponCode') !=
        other._$data.containsKey('couponCode')) {
      return false;
    }
    if (l$couponCode != lOther$couponCode) {
      return false;
    }
    final l$selectedOptionIds = selectedOptionIds;
    final lOther$selectedOptionIds = other.selectedOptionIds;
    if (_$data.containsKey('selectedOptionIds') !=
        other._$data.containsKey('selectedOptionIds')) {
      return false;
    }
    if (l$selectedOptionIds != null && lOther$selectedOptionIds != null) {
      if (l$selectedOptionIds.length != lOther$selectedOptionIds.length) {
        return false;
      }
      for (int i = 0; i < l$selectedOptionIds.length; i++) {
        final l$selectedOptionIds$entry = l$selectedOptionIds[i];
        final lOther$selectedOptionIds$entry = lOther$selectedOptionIds[i];
        if (l$selectedOptionIds$entry != lOther$selectedOptionIds$entry) {
          return false;
        }
      }
    } else if (l$selectedOptionIds != lOther$selectedOptionIds) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderType = orderType;
    final l$waitTime = waitTime;
    final l$points = points;
    final l$twoWay = twoWay;
    final l$couponCode = couponCode;
    final l$selectedOptionIds = selectedOptionIds;
    return Object.hashAll([
      _$data.containsKey('orderType') ? l$orderType : const {},
      _$data.containsKey('waitTime') ? l$waitTime : const {},
      Object.hashAll(l$points.map((v) => v)),
      _$data.containsKey('twoWay') ? l$twoWay : const {},
      _$data.containsKey('couponCode') ? l$couponCode : const {},
      _$data.containsKey('selectedOptionIds')
          ? l$selectedOptionIds == null
              ? null
              : Object.hashAll(l$selectedOptionIds.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$CalculateFareInput<TRes> {
  factory CopyWith$Input$CalculateFareInput(
    Input$CalculateFareInput instance,
    TRes Function(Input$CalculateFareInput) then,
  ) = _CopyWithImpl$Input$CalculateFareInput;

  factory CopyWith$Input$CalculateFareInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CalculateFareInput;

  TRes call({
    Enum$TaxiOrderType? orderType,
    int? waitTime,
    List<Input$PointInput>? points,
    bool? twoWay,
    String? couponCode,
    List<String>? selectedOptionIds,
  });
  TRes points(
      Iterable<Input$PointInput> Function(
              Iterable<CopyWith$Input$PointInput<Input$PointInput>>)
          _fn);
}

class _CopyWithImpl$Input$CalculateFareInput<TRes>
    implements CopyWith$Input$CalculateFareInput<TRes> {
  _CopyWithImpl$Input$CalculateFareInput(
    this._instance,
    this._then,
  );

  final Input$CalculateFareInput _instance;

  final TRes Function(Input$CalculateFareInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? orderType = _undefined,
    Object? waitTime = _undefined,
    Object? points = _undefined,
    Object? twoWay = _undefined,
    Object? couponCode = _undefined,
    Object? selectedOptionIds = _undefined,
  }) =>
      _then(Input$CalculateFareInput._({
        ..._instance._$data,
        if (orderType != _undefined && orderType != null)
          'orderType': (orderType as Enum$TaxiOrderType),
        if (waitTime != _undefined) 'waitTime': (waitTime as int?),
        if (points != _undefined && points != null)
          'points': (points as List<Input$PointInput>),
        if (twoWay != _undefined) 'twoWay': (twoWay as bool?),
        if (couponCode != _undefined) 'couponCode': (couponCode as String?),
        if (selectedOptionIds != _undefined)
          'selectedOptionIds': (selectedOptionIds as List<String>?),
      }));

  TRes points(
          Iterable<Input$PointInput> Function(
                  Iterable<CopyWith$Input$PointInput<Input$PointInput>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Input$PointInput(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$CalculateFareInput<TRes>
    implements CopyWith$Input$CalculateFareInput<TRes> {
  _CopyWithStubImpl$Input$CalculateFareInput(this._res);

  TRes _res;

  call({
    Enum$TaxiOrderType? orderType,
    int? waitTime,
    List<Input$PointInput>? points,
    bool? twoWay,
    String? couponCode,
    List<String>? selectedOptionIds,
  }) =>
      _res;

  points(_fn) => _res;
}

class Input$ServiceCategoryFilter {
  factory Input$ServiceCategoryFilter({
    List<Input$ServiceCategoryFilter>? and,
    List<Input$ServiceCategoryFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$ServiceCategoryFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$ServiceCategoryFilter._(this._$data);

  factory Input$ServiceCategoryFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$ServiceCategoryFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$ServiceCategoryFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$ServiceCategoryFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServiceCategoryFilter>? get and =>
      (_$data['and'] as List<Input$ServiceCategoryFilter>?);

  List<Input$ServiceCategoryFilter>? get or =>
      (_$data['or'] as List<Input$ServiceCategoryFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$ServiceCategoryFilter<Input$ServiceCategoryFilter>
      get copyWith => CopyWith$Input$ServiceCategoryFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ServiceCategoryFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceCategoryFilter<TRes> {
  factory CopyWith$Input$ServiceCategoryFilter(
    Input$ServiceCategoryFilter instance,
    TRes Function(Input$ServiceCategoryFilter) then,
  ) = _CopyWithImpl$Input$ServiceCategoryFilter;

  factory CopyWith$Input$ServiceCategoryFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceCategoryFilter;

  TRes call({
    List<Input$ServiceCategoryFilter>? and,
    List<Input$ServiceCategoryFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$ServiceCategoryFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceCategoryFilter<
                      Input$ServiceCategoryFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$ServiceCategoryFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceCategoryFilter<
                      Input$ServiceCategoryFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$ServiceCategoryFilter<TRes>
    implements CopyWith$Input$ServiceCategoryFilter<TRes> {
  _CopyWithImpl$Input$ServiceCategoryFilter(
    this._instance,
    this._then,
  );

  final Input$ServiceCategoryFilter _instance;

  final TRes Function(Input$ServiceCategoryFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$ServiceCategoryFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$ServiceCategoryFilter>?),
        if (or != _undefined) 'or': (or as List<Input$ServiceCategoryFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$ServiceCategoryFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceCategoryFilter<
                          Input$ServiceCategoryFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$ServiceCategoryFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$ServiceCategoryFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceCategoryFilter<
                          Input$ServiceCategoryFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$ServiceCategoryFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$ServiceCategoryFilter<TRes>
    implements CopyWith$Input$ServiceCategoryFilter<TRes> {
  _CopyWithStubImpl$Input$ServiceCategoryFilter(this._res);

  TRes _res;

  call({
    List<Input$ServiceCategoryFilter>? and,
    List<Input$ServiceCategoryFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$ServiceCategorySort {
  factory Input$ServiceCategorySort({
    required Enum$ServiceCategorySortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$ServiceCategorySort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$ServiceCategorySort._(this._$data);

  factory Input$ServiceCategorySort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$ServiceCategorySortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$ServiceCategorySort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$ServiceCategorySortFields get field =>
      (_$data['field'] as Enum$ServiceCategorySortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$ServiceCategorySortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$ServiceCategorySort<Input$ServiceCategorySort> get copyWith =>
      CopyWith$Input$ServiceCategorySort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ServiceCategorySort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$ServiceCategorySort<TRes> {
  factory CopyWith$Input$ServiceCategorySort(
    Input$ServiceCategorySort instance,
    TRes Function(Input$ServiceCategorySort) then,
  ) = _CopyWithImpl$Input$ServiceCategorySort;

  factory CopyWith$Input$ServiceCategorySort.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceCategorySort;

  TRes call({
    Enum$ServiceCategorySortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$ServiceCategorySort<TRes>
    implements CopyWith$Input$ServiceCategorySort<TRes> {
  _CopyWithImpl$Input$ServiceCategorySort(
    this._instance,
    this._then,
  );

  final Input$ServiceCategorySort _instance;

  final TRes Function(Input$ServiceCategorySort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$ServiceCategorySort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$ServiceCategorySortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$ServiceCategorySort<TRes>
    implements CopyWith$Input$ServiceCategorySort<TRes> {
  _CopyWithStubImpl$Input$ServiceCategorySort(this._res);

  TRes _res;

  call({
    Enum$ServiceCategorySortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$CursorPaging {
  factory Input$CursorPaging({
    String? before,
    String? after,
    int? first,
    int? last,
  }) =>
      Input$CursorPaging._({
        if (before != null) r'before': before,
        if (after != null) r'after': after,
        if (first != null) r'first': first,
        if (last != null) r'last': last,
      });

  Input$CursorPaging._(this._$data);

  factory Input$CursorPaging.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('before')) {
      final l$before = data['before'];
      result$data['before'] = l$before == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$before);
    }
    if (data.containsKey('after')) {
      final l$after = data['after'];
      result$data['after'] = l$after == null
          ? null
          : fromGraphQLConnectionCursorToDartString(l$after);
    }
    if (data.containsKey('first')) {
      final l$first = data['first'];
      result$data['first'] = (l$first as int?);
    }
    if (data.containsKey('last')) {
      final l$last = data['last'];
      result$data['last'] = (l$last as int?);
    }
    return Input$CursorPaging._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get before => (_$data['before'] as String?);

  String? get after => (_$data['after'] as String?);

  int? get first => (_$data['first'] as int?);

  int? get last => (_$data['last'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('before')) {
      final l$before = before;
      result$data['before'] = l$before == null
          ? null
          : fromDartStringToGraphQLConnectionCursor(l$before);
    }
    if (_$data.containsKey('after')) {
      final l$after = after;
      result$data['after'] = l$after == null
          ? null
          : fromDartStringToGraphQLConnectionCursor(l$after);
    }
    if (_$data.containsKey('first')) {
      final l$first = first;
      result$data['first'] = l$first;
    }
    if (_$data.containsKey('last')) {
      final l$last = last;
      result$data['last'] = l$last;
    }
    return result$data;
  }

  CopyWith$Input$CursorPaging<Input$CursorPaging> get copyWith =>
      CopyWith$Input$CursorPaging(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CursorPaging || runtimeType != other.runtimeType) {
      return false;
    }
    final l$before = before;
    final lOther$before = other.before;
    if (_$data.containsKey('before') != other._$data.containsKey('before')) {
      return false;
    }
    if (l$before != lOther$before) {
      return false;
    }
    final l$after = after;
    final lOther$after = other.after;
    if (_$data.containsKey('after') != other._$data.containsKey('after')) {
      return false;
    }
    if (l$after != lOther$after) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (_$data.containsKey('first') != other._$data.containsKey('first')) {
      return false;
    }
    if (l$first != lOther$first) {
      return false;
    }
    final l$last = last;
    final lOther$last = other.last;
    if (_$data.containsKey('last') != other._$data.containsKey('last')) {
      return false;
    }
    if (l$last != lOther$last) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$before = before;
    final l$after = after;
    final l$first = first;
    final l$last = last;
    return Object.hashAll([
      _$data.containsKey('before') ? l$before : const {},
      _$data.containsKey('after') ? l$after : const {},
      _$data.containsKey('first') ? l$first : const {},
      _$data.containsKey('last') ? l$last : const {},
    ]);
  }
}

abstract class CopyWith$Input$CursorPaging<TRes> {
  factory CopyWith$Input$CursorPaging(
    Input$CursorPaging instance,
    TRes Function(Input$CursorPaging) then,
  ) = _CopyWithImpl$Input$CursorPaging;

  factory CopyWith$Input$CursorPaging.stub(TRes res) =
      _CopyWithStubImpl$Input$CursorPaging;

  TRes call({
    String? before,
    String? after,
    int? first,
    int? last,
  });
}

class _CopyWithImpl$Input$CursorPaging<TRes>
    implements CopyWith$Input$CursorPaging<TRes> {
  _CopyWithImpl$Input$CursorPaging(
    this._instance,
    this._then,
  );

  final Input$CursorPaging _instance;

  final TRes Function(Input$CursorPaging) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? before = _undefined,
    Object? after = _undefined,
    Object? first = _undefined,
    Object? last = _undefined,
  }) =>
      _then(Input$CursorPaging._({
        ..._instance._$data,
        if (before != _undefined) 'before': (before as String?),
        if (after != _undefined) 'after': (after as String?),
        if (first != _undefined) 'first': (first as int?),
        if (last != _undefined) 'last': (last as int?),
      }));
}

class _CopyWithStubImpl$Input$CursorPaging<TRes>
    implements CopyWith$Input$CursorPaging<TRes> {
  _CopyWithStubImpl$Input$CursorPaging(this._res);

  TRes _res;

  call({
    String? before,
    String? after,
    int? first,
    int? last,
  }) =>
      _res;
}

class Input$FeedbackParameterFilter {
  factory Input$FeedbackParameterFilter({
    List<Input$FeedbackParameterFilter>? and,
    List<Input$FeedbackParameterFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$FeedbackParameterFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$FeedbackParameterFilter._(this._$data);

  factory Input$FeedbackParameterFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$FeedbackParameterFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$FeedbackParameterFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$FeedbackParameterFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$FeedbackParameterFilter>? get and =>
      (_$data['and'] as List<Input$FeedbackParameterFilter>?);

  List<Input$FeedbackParameterFilter>? get or =>
      (_$data['or'] as List<Input$FeedbackParameterFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$FeedbackParameterFilter<Input$FeedbackParameterFilter>
      get copyWith => CopyWith$Input$FeedbackParameterFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FeedbackParameterFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
    ]);
  }
}

abstract class CopyWith$Input$FeedbackParameterFilter<TRes> {
  factory CopyWith$Input$FeedbackParameterFilter(
    Input$FeedbackParameterFilter instance,
    TRes Function(Input$FeedbackParameterFilter) then,
  ) = _CopyWithImpl$Input$FeedbackParameterFilter;

  factory CopyWith$Input$FeedbackParameterFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$FeedbackParameterFilter;

  TRes call({
    List<Input$FeedbackParameterFilter>? and,
    List<Input$FeedbackParameterFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$FeedbackParameterFilter>? Function(
              Iterable<
                  CopyWith$Input$FeedbackParameterFilter<
                      Input$FeedbackParameterFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$FeedbackParameterFilter>? Function(
              Iterable<
                  CopyWith$Input$FeedbackParameterFilter<
                      Input$FeedbackParameterFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$FeedbackParameterFilter<TRes>
    implements CopyWith$Input$FeedbackParameterFilter<TRes> {
  _CopyWithImpl$Input$FeedbackParameterFilter(
    this._instance,
    this._then,
  );

  final Input$FeedbackParameterFilter _instance;

  final TRes Function(Input$FeedbackParameterFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$FeedbackParameterFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$FeedbackParameterFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$FeedbackParameterFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$FeedbackParameterFilter>? Function(
                  Iterable<
                      CopyWith$Input$FeedbackParameterFilter<
                          Input$FeedbackParameterFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$FeedbackParameterFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$FeedbackParameterFilter>? Function(
                  Iterable<
                      CopyWith$Input$FeedbackParameterFilter<
                          Input$FeedbackParameterFilter>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$FeedbackParameterFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }
}

class _CopyWithStubImpl$Input$FeedbackParameterFilter<TRes>
    implements CopyWith$Input$FeedbackParameterFilter<TRes> {
  _CopyWithStubImpl$Input$FeedbackParameterFilter(this._res);

  TRes _res;

  call({
    List<Input$FeedbackParameterFilter>? and,
    List<Input$FeedbackParameterFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$FeedbackParameterSort {
  factory Input$FeedbackParameterSort({
    required Enum$FeedbackParameterSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$FeedbackParameterSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$FeedbackParameterSort._(this._$data);

  factory Input$FeedbackParameterSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$FeedbackParameterSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$FeedbackParameterSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$FeedbackParameterSortFields get field =>
      (_$data['field'] as Enum$FeedbackParameterSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$FeedbackParameterSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$FeedbackParameterSort<Input$FeedbackParameterSort>
      get copyWith => CopyWith$Input$FeedbackParameterSort(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FeedbackParameterSort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$FeedbackParameterSort<TRes> {
  factory CopyWith$Input$FeedbackParameterSort(
    Input$FeedbackParameterSort instance,
    TRes Function(Input$FeedbackParameterSort) then,
  ) = _CopyWithImpl$Input$FeedbackParameterSort;

  factory CopyWith$Input$FeedbackParameterSort.stub(TRes res) =
      _CopyWithStubImpl$Input$FeedbackParameterSort;

  TRes call({
    Enum$FeedbackParameterSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$FeedbackParameterSort<TRes>
    implements CopyWith$Input$FeedbackParameterSort<TRes> {
  _CopyWithImpl$Input$FeedbackParameterSort(
    this._instance,
    this._then,
  );

  final Input$FeedbackParameterSort _instance;

  final TRes Function(Input$FeedbackParameterSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$FeedbackParameterSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$FeedbackParameterSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$FeedbackParameterSort<TRes>
    implements CopyWith$Input$FeedbackParameterSort<TRes> {
  _CopyWithStubImpl$Input$FeedbackParameterSort(this._res);

  TRes _res;

  call({
    Enum$FeedbackParameterSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$OrderCancelReasonFilter {
  factory Input$OrderCancelReasonFilter({
    List<Input$OrderCancelReasonFilter>? and,
    List<Input$OrderCancelReasonFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? isEnabled,
    Input$AnnouncementUserTypeFilterComparison? userType,
  }) =>
      Input$OrderCancelReasonFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (isEnabled != null) r'isEnabled': isEnabled,
        if (userType != null) r'userType': userType,
      });

  Input$OrderCancelReasonFilter._(this._$data);

  factory Input$OrderCancelReasonFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$OrderCancelReasonFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$OrderCancelReasonFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('isEnabled')) {
      final l$isEnabled = data['isEnabled'];
      result$data['isEnabled'] = l$isEnabled == null
          ? null
          : Input$BooleanFieldComparison.fromJson(
              (l$isEnabled as Map<String, dynamic>));
    }
    if (data.containsKey('userType')) {
      final l$userType = data['userType'];
      result$data['userType'] = l$userType == null
          ? null
          : Input$AnnouncementUserTypeFilterComparison.fromJson(
              (l$userType as Map<String, dynamic>));
    }
    return Input$OrderCancelReasonFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderCancelReasonFilter>? get and =>
      (_$data['and'] as List<Input$OrderCancelReasonFilter>?);

  List<Input$OrderCancelReasonFilter>? get or =>
      (_$data['or'] as List<Input$OrderCancelReasonFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$BooleanFieldComparison? get isEnabled =>
      (_$data['isEnabled'] as Input$BooleanFieldComparison?);

  Input$AnnouncementUserTypeFilterComparison? get userType =>
      (_$data['userType'] as Input$AnnouncementUserTypeFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('isEnabled')) {
      final l$isEnabled = isEnabled;
      result$data['isEnabled'] = l$isEnabled?.toJson();
    }
    if (_$data.containsKey('userType')) {
      final l$userType = userType;
      result$data['userType'] = l$userType?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$OrderCancelReasonFilter<Input$OrderCancelReasonFilter>
      get copyWith => CopyWith$Input$OrderCancelReasonFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderCancelReasonFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$isEnabled = isEnabled;
    final lOther$isEnabled = other.isEnabled;
    if (_$data.containsKey('isEnabled') !=
        other._$data.containsKey('isEnabled')) {
      return false;
    }
    if (l$isEnabled != lOther$isEnabled) {
      return false;
    }
    final l$userType = userType;
    final lOther$userType = other.userType;
    if (_$data.containsKey('userType') !=
        other._$data.containsKey('userType')) {
      return false;
    }
    if (l$userType != lOther$userType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$isEnabled = isEnabled;
    final l$userType = userType;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('isEnabled') ? l$isEnabled : const {},
      _$data.containsKey('userType') ? l$userType : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderCancelReasonFilter<TRes> {
  factory CopyWith$Input$OrderCancelReasonFilter(
    Input$OrderCancelReasonFilter instance,
    TRes Function(Input$OrderCancelReasonFilter) then,
  ) = _CopyWithImpl$Input$OrderCancelReasonFilter;

  factory CopyWith$Input$OrderCancelReasonFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderCancelReasonFilter;

  TRes call({
    List<Input$OrderCancelReasonFilter>? and,
    List<Input$OrderCancelReasonFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? isEnabled,
    Input$AnnouncementUserTypeFilterComparison? userType,
  });
  TRes and(
      Iterable<Input$OrderCancelReasonFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderCancelReasonFilter<
                      Input$OrderCancelReasonFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderCancelReasonFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderCancelReasonFilter<
                      Input$OrderCancelReasonFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$BooleanFieldComparison<TRes> get isEnabled;
  CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> get userType;
}

class _CopyWithImpl$Input$OrderCancelReasonFilter<TRes>
    implements CopyWith$Input$OrderCancelReasonFilter<TRes> {
  _CopyWithImpl$Input$OrderCancelReasonFilter(
    this._instance,
    this._then,
  );

  final Input$OrderCancelReasonFilter _instance;

  final TRes Function(Input$OrderCancelReasonFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? isEnabled = _undefined,
    Object? userType = _undefined,
  }) =>
      _then(Input$OrderCancelReasonFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$OrderCancelReasonFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$OrderCancelReasonFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (isEnabled != _undefined)
          'isEnabled': (isEnabled as Input$BooleanFieldComparison?),
        if (userType != _undefined)
          'userType': (userType as Input$AnnouncementUserTypeFilterComparison?),
      }));

  TRes and(
          Iterable<Input$OrderCancelReasonFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderCancelReasonFilter<
                          Input$OrderCancelReasonFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$OrderCancelReasonFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$OrderCancelReasonFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderCancelReasonFilter<
                          Input$OrderCancelReasonFilter>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$OrderCancelReasonFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$BooleanFieldComparison<TRes> get isEnabled {
    final local$isEnabled = _instance.isEnabled;
    return local$isEnabled == null
        ? CopyWith$Input$BooleanFieldComparison.stub(_then(_instance))
        : CopyWith$Input$BooleanFieldComparison(
            local$isEnabled, (e) => call(isEnabled: e));
  }

  CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> get userType {
    final local$userType = _instance.userType;
    return local$userType == null
        ? CopyWith$Input$AnnouncementUserTypeFilterComparison.stub(
            _then(_instance))
        : CopyWith$Input$AnnouncementUserTypeFilterComparison(
            local$userType, (e) => call(userType: e));
  }
}

class _CopyWithStubImpl$Input$OrderCancelReasonFilter<TRes>
    implements CopyWith$Input$OrderCancelReasonFilter<TRes> {
  _CopyWithStubImpl$Input$OrderCancelReasonFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderCancelReasonFilter>? and,
    List<Input$OrderCancelReasonFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? isEnabled,
    Input$AnnouncementUserTypeFilterComparison? userType,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$BooleanFieldComparison<TRes> get isEnabled =>
      CopyWith$Input$BooleanFieldComparison.stub(_res);

  CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> get userType =>
      CopyWith$Input$AnnouncementUserTypeFilterComparison.stub(_res);
}

class Input$BooleanFieldComparison {
  factory Input$BooleanFieldComparison({
    bool? $is,
    bool? isNot,
  }) =>
      Input$BooleanFieldComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
      });

  Input$BooleanFieldComparison._(this._$data);

  factory Input$BooleanFieldComparison.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    return Input$BooleanFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    return result$data;
  }

  CopyWith$Input$BooleanFieldComparison<Input$BooleanFieldComparison>
      get copyWith => CopyWith$Input$BooleanFieldComparison(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$BooleanFieldComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
    ]);
  }
}

abstract class CopyWith$Input$BooleanFieldComparison<TRes> {
  factory CopyWith$Input$BooleanFieldComparison(
    Input$BooleanFieldComparison instance,
    TRes Function(Input$BooleanFieldComparison) then,
  ) = _CopyWithImpl$Input$BooleanFieldComparison;

  factory CopyWith$Input$BooleanFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$BooleanFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
  });
}

class _CopyWithImpl$Input$BooleanFieldComparison<TRes>
    implements CopyWith$Input$BooleanFieldComparison<TRes> {
  _CopyWithImpl$Input$BooleanFieldComparison(
    this._instance,
    this._then,
  );

  final Input$BooleanFieldComparison _instance;

  final TRes Function(Input$BooleanFieldComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
  }) =>
      _then(Input$BooleanFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
      }));
}

class _CopyWithStubImpl$Input$BooleanFieldComparison<TRes>
    implements CopyWith$Input$BooleanFieldComparison<TRes> {
  _CopyWithStubImpl$Input$BooleanFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
  }) =>
      _res;
}

class Input$AnnouncementUserTypeFilterComparison {
  factory Input$AnnouncementUserTypeFilterComparison({
    bool? $is,
    bool? isNot,
    Enum$AnnouncementUserType? eq,
    Enum$AnnouncementUserType? neq,
    Enum$AnnouncementUserType? gt,
    Enum$AnnouncementUserType? gte,
    Enum$AnnouncementUserType? lt,
    Enum$AnnouncementUserType? lte,
    Enum$AnnouncementUserType? like,
    Enum$AnnouncementUserType? notLike,
    Enum$AnnouncementUserType? iLike,
    Enum$AnnouncementUserType? notILike,
    List<Enum$AnnouncementUserType>? $in,
    List<Enum$AnnouncementUserType>? notIn,
  }) =>
      Input$AnnouncementUserTypeFilterComparison._({
        if ($is != null) r'is': $is,
        if (isNot != null) r'isNot': isNot,
        if (eq != null) r'eq': eq,
        if (neq != null) r'neq': neq,
        if (gt != null) r'gt': gt,
        if (gte != null) r'gte': gte,
        if (lt != null) r'lt': lt,
        if (lte != null) r'lte': lte,
        if (like != null) r'like': like,
        if (notLike != null) r'notLike': notLike,
        if (iLike != null) r'iLike': iLike,
        if (notILike != null) r'notILike': notILike,
        if ($in != null) r'in': $in,
        if (notIn != null) r'notIn': notIn,
      });

  Input$AnnouncementUserTypeFilterComparison._(this._$data);

  factory Input$AnnouncementUserTypeFilterComparison.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('is')) {
      final l$$is = data['is'];
      result$data['is'] = (l$$is as bool?);
    }
    if (data.containsKey('isNot')) {
      final l$isNot = data['isNot'];
      result$data['isNot'] = (l$isNot as bool?);
    }
    if (data.containsKey('eq')) {
      final l$eq = data['eq'];
      result$data['eq'] = l$eq == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$eq as String));
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = l$neq == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$neq as String));
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = l$gt == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$gt as String));
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = l$gte == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$gte as String));
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = l$lt == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$lt as String));
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = l$lte == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$lte as String));
    }
    if (data.containsKey('like')) {
      final l$like = data['like'];
      result$data['like'] = l$like == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$like as String));
    }
    if (data.containsKey('notLike')) {
      final l$notLike = data['notLike'];
      result$data['notLike'] = l$notLike == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$notLike as String));
    }
    if (data.containsKey('iLike')) {
      final l$iLike = data['iLike'];
      result$data['iLike'] = l$iLike == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$iLike as String));
    }
    if (data.containsKey('notILike')) {
      final l$notILike = data['notILike'];
      result$data['notILike'] = l$notILike == null
          ? null
          : fromJson$Enum$AnnouncementUserType((l$notILike as String));
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] = (l$$in as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AnnouncementUserType((e as String)))
          .toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => fromJson$Enum$AnnouncementUserType((e as String)))
          .toList();
    }
    return Input$AnnouncementUserTypeFilterComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  Enum$AnnouncementUserType? get eq =>
      (_$data['eq'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get neq =>
      (_$data['neq'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get gt =>
      (_$data['gt'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get gte =>
      (_$data['gte'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get lt =>
      (_$data['lt'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get lte =>
      (_$data['lte'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get like =>
      (_$data['like'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get notLike =>
      (_$data['notLike'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get iLike =>
      (_$data['iLike'] as Enum$AnnouncementUserType?);

  Enum$AnnouncementUserType? get notILike =>
      (_$data['notILike'] as Enum$AnnouncementUserType?);

  List<Enum$AnnouncementUserType>? get $in =>
      (_$data['in'] as List<Enum$AnnouncementUserType>?);

  List<Enum$AnnouncementUserType>? get notIn =>
      (_$data['notIn'] as List<Enum$AnnouncementUserType>?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('is')) {
      final l$$is = $is;
      result$data['is'] = l$$is;
    }
    if (_$data.containsKey('isNot')) {
      final l$isNot = isNot;
      result$data['isNot'] = l$isNot;
    }
    if (_$data.containsKey('eq')) {
      final l$eq = eq;
      result$data['eq'] =
          l$eq == null ? null : toJson$Enum$AnnouncementUserType(l$eq);
    }
    if (_$data.containsKey('neq')) {
      final l$neq = neq;
      result$data['neq'] =
          l$neq == null ? null : toJson$Enum$AnnouncementUserType(l$neq);
    }
    if (_$data.containsKey('gt')) {
      final l$gt = gt;
      result$data['gt'] =
          l$gt == null ? null : toJson$Enum$AnnouncementUserType(l$gt);
    }
    if (_$data.containsKey('gte')) {
      final l$gte = gte;
      result$data['gte'] =
          l$gte == null ? null : toJson$Enum$AnnouncementUserType(l$gte);
    }
    if (_$data.containsKey('lt')) {
      final l$lt = lt;
      result$data['lt'] =
          l$lt == null ? null : toJson$Enum$AnnouncementUserType(l$lt);
    }
    if (_$data.containsKey('lte')) {
      final l$lte = lte;
      result$data['lte'] =
          l$lte == null ? null : toJson$Enum$AnnouncementUserType(l$lte);
    }
    if (_$data.containsKey('like')) {
      final l$like = like;
      result$data['like'] =
          l$like == null ? null : toJson$Enum$AnnouncementUserType(l$like);
    }
    if (_$data.containsKey('notLike')) {
      final l$notLike = notLike;
      result$data['notLike'] = l$notLike == null
          ? null
          : toJson$Enum$AnnouncementUserType(l$notLike);
    }
    if (_$data.containsKey('iLike')) {
      final l$iLike = iLike;
      result$data['iLike'] =
          l$iLike == null ? null : toJson$Enum$AnnouncementUserType(l$iLike);
    }
    if (_$data.containsKey('notILike')) {
      final l$notILike = notILike;
      result$data['notILike'] = l$notILike == null
          ? null
          : toJson$Enum$AnnouncementUserType(l$notILike);
    }
    if (_$data.containsKey('in')) {
      final l$$in = $in;
      result$data['in'] =
          l$$in?.map((e) => toJson$Enum$AnnouncementUserType(e)).toList();
    }
    if (_$data.containsKey('notIn')) {
      final l$notIn = notIn;
      result$data['notIn'] =
          l$notIn?.map((e) => toJson$Enum$AnnouncementUserType(e)).toList();
    }
    return result$data;
  }

  CopyWith$Input$AnnouncementUserTypeFilterComparison<
          Input$AnnouncementUserTypeFilterComparison>
      get copyWith => CopyWith$Input$AnnouncementUserTypeFilterComparison(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AnnouncementUserTypeFilterComparison ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$is = $is;
    final lOther$$is = other.$is;
    if (_$data.containsKey('is') != other._$data.containsKey('is')) {
      return false;
    }
    if (l$$is != lOther$$is) {
      return false;
    }
    final l$isNot = isNot;
    final lOther$isNot = other.isNot;
    if (_$data.containsKey('isNot') != other._$data.containsKey('isNot')) {
      return false;
    }
    if (l$isNot != lOther$isNot) {
      return false;
    }
    final l$eq = eq;
    final lOther$eq = other.eq;
    if (_$data.containsKey('eq') != other._$data.containsKey('eq')) {
      return false;
    }
    if (l$eq != lOther$eq) {
      return false;
    }
    final l$neq = neq;
    final lOther$neq = other.neq;
    if (_$data.containsKey('neq') != other._$data.containsKey('neq')) {
      return false;
    }
    if (l$neq != lOther$neq) {
      return false;
    }
    final l$gt = gt;
    final lOther$gt = other.gt;
    if (_$data.containsKey('gt') != other._$data.containsKey('gt')) {
      return false;
    }
    if (l$gt != lOther$gt) {
      return false;
    }
    final l$gte = gte;
    final lOther$gte = other.gte;
    if (_$data.containsKey('gte') != other._$data.containsKey('gte')) {
      return false;
    }
    if (l$gte != lOther$gte) {
      return false;
    }
    final l$lt = lt;
    final lOther$lt = other.lt;
    if (_$data.containsKey('lt') != other._$data.containsKey('lt')) {
      return false;
    }
    if (l$lt != lOther$lt) {
      return false;
    }
    final l$lte = lte;
    final lOther$lte = other.lte;
    if (_$data.containsKey('lte') != other._$data.containsKey('lte')) {
      return false;
    }
    if (l$lte != lOther$lte) {
      return false;
    }
    final l$like = like;
    final lOther$like = other.like;
    if (_$data.containsKey('like') != other._$data.containsKey('like')) {
      return false;
    }
    if (l$like != lOther$like) {
      return false;
    }
    final l$notLike = notLike;
    final lOther$notLike = other.notLike;
    if (_$data.containsKey('notLike') != other._$data.containsKey('notLike')) {
      return false;
    }
    if (l$notLike != lOther$notLike) {
      return false;
    }
    final l$iLike = iLike;
    final lOther$iLike = other.iLike;
    if (_$data.containsKey('iLike') != other._$data.containsKey('iLike')) {
      return false;
    }
    if (l$iLike != lOther$iLike) {
      return false;
    }
    final l$notILike = notILike;
    final lOther$notILike = other.notILike;
    if (_$data.containsKey('notILike') !=
        other._$data.containsKey('notILike')) {
      return false;
    }
    if (l$notILike != lOther$notILike) {
      return false;
    }
    final l$$in = $in;
    final lOther$$in = other.$in;
    if (_$data.containsKey('in') != other._$data.containsKey('in')) {
      return false;
    }
    if (l$$in != null && lOther$$in != null) {
      if (l$$in.length != lOther$$in.length) {
        return false;
      }
      for (int i = 0; i < l$$in.length; i++) {
        final l$$in$entry = l$$in[i];
        final lOther$$in$entry = lOther$$in[i];
        if (l$$in$entry != lOther$$in$entry) {
          return false;
        }
      }
    } else if (l$$in != lOther$$in) {
      return false;
    }
    final l$notIn = notIn;
    final lOther$notIn = other.notIn;
    if (_$data.containsKey('notIn') != other._$data.containsKey('notIn')) {
      return false;
    }
    if (l$notIn != null && lOther$notIn != null) {
      if (l$notIn.length != lOther$notIn.length) {
        return false;
      }
      for (int i = 0; i < l$notIn.length; i++) {
        final l$notIn$entry = l$notIn[i];
        final lOther$notIn$entry = lOther$notIn[i];
        if (l$notIn$entry != lOther$notIn$entry) {
          return false;
        }
      }
    } else if (l$notIn != lOther$notIn) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$$is = $is;
    final l$isNot = isNot;
    final l$eq = eq;
    final l$neq = neq;
    final l$gt = gt;
    final l$gte = gte;
    final l$lt = lt;
    final l$lte = lte;
    final l$like = like;
    final l$notLike = notLike;
    final l$iLike = iLike;
    final l$notILike = notILike;
    final l$$in = $in;
    final l$notIn = notIn;
    return Object.hashAll([
      _$data.containsKey('is') ? l$$is : const {},
      _$data.containsKey('isNot') ? l$isNot : const {},
      _$data.containsKey('eq') ? l$eq : const {},
      _$data.containsKey('neq') ? l$neq : const {},
      _$data.containsKey('gt') ? l$gt : const {},
      _$data.containsKey('gte') ? l$gte : const {},
      _$data.containsKey('lt') ? l$lt : const {},
      _$data.containsKey('lte') ? l$lte : const {},
      _$data.containsKey('like') ? l$like : const {},
      _$data.containsKey('notLike') ? l$notLike : const {},
      _$data.containsKey('iLike') ? l$iLike : const {},
      _$data.containsKey('notILike') ? l$notILike : const {},
      _$data.containsKey('in')
          ? l$$in == null
              ? null
              : Object.hashAll(l$$in.map((v) => v))
          : const {},
      _$data.containsKey('notIn')
          ? l$notIn == null
              ? null
              : Object.hashAll(l$notIn.map((v) => v))
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> {
  factory CopyWith$Input$AnnouncementUserTypeFilterComparison(
    Input$AnnouncementUserTypeFilterComparison instance,
    TRes Function(Input$AnnouncementUserTypeFilterComparison) then,
  ) = _CopyWithImpl$Input$AnnouncementUserTypeFilterComparison;

  factory CopyWith$Input$AnnouncementUserTypeFilterComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$AnnouncementUserTypeFilterComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    Enum$AnnouncementUserType? eq,
    Enum$AnnouncementUserType? neq,
    Enum$AnnouncementUserType? gt,
    Enum$AnnouncementUserType? gte,
    Enum$AnnouncementUserType? lt,
    Enum$AnnouncementUserType? lte,
    Enum$AnnouncementUserType? like,
    Enum$AnnouncementUserType? notLike,
    Enum$AnnouncementUserType? iLike,
    Enum$AnnouncementUserType? notILike,
    List<Enum$AnnouncementUserType>? $in,
    List<Enum$AnnouncementUserType>? notIn,
  });
}

class _CopyWithImpl$Input$AnnouncementUserTypeFilterComparison<TRes>
    implements CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> {
  _CopyWithImpl$Input$AnnouncementUserTypeFilterComparison(
    this._instance,
    this._then,
  );

  final Input$AnnouncementUserTypeFilterComparison _instance;

  final TRes Function(Input$AnnouncementUserTypeFilterComparison) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? $is = _undefined,
    Object? isNot = _undefined,
    Object? eq = _undefined,
    Object? neq = _undefined,
    Object? gt = _undefined,
    Object? gte = _undefined,
    Object? lt = _undefined,
    Object? lte = _undefined,
    Object? like = _undefined,
    Object? notLike = _undefined,
    Object? iLike = _undefined,
    Object? notILike = _undefined,
    Object? $in = _undefined,
    Object? notIn = _undefined,
  }) =>
      _then(Input$AnnouncementUserTypeFilterComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as Enum$AnnouncementUserType?),
        if (neq != _undefined) 'neq': (neq as Enum$AnnouncementUserType?),
        if (gt != _undefined) 'gt': (gt as Enum$AnnouncementUserType?),
        if (gte != _undefined) 'gte': (gte as Enum$AnnouncementUserType?),
        if (lt != _undefined) 'lt': (lt as Enum$AnnouncementUserType?),
        if (lte != _undefined) 'lte': (lte as Enum$AnnouncementUserType?),
        if (like != _undefined) 'like': (like as Enum$AnnouncementUserType?),
        if (notLike != _undefined)
          'notLike': (notLike as Enum$AnnouncementUserType?),
        if (iLike != _undefined) 'iLike': (iLike as Enum$AnnouncementUserType?),
        if (notILike != _undefined)
          'notILike': (notILike as Enum$AnnouncementUserType?),
        if ($in != _undefined) 'in': ($in as List<Enum$AnnouncementUserType>?),
        if (notIn != _undefined)
          'notIn': (notIn as List<Enum$AnnouncementUserType>?),
      }));
}

class _CopyWithStubImpl$Input$AnnouncementUserTypeFilterComparison<TRes>
    implements CopyWith$Input$AnnouncementUserTypeFilterComparison<TRes> {
  _CopyWithStubImpl$Input$AnnouncementUserTypeFilterComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    Enum$AnnouncementUserType? eq,
    Enum$AnnouncementUserType? neq,
    Enum$AnnouncementUserType? gt,
    Enum$AnnouncementUserType? gte,
    Enum$AnnouncementUserType? lt,
    Enum$AnnouncementUserType? lte,
    Enum$AnnouncementUserType? like,
    Enum$AnnouncementUserType? notLike,
    Enum$AnnouncementUserType? iLike,
    Enum$AnnouncementUserType? notILike,
    List<Enum$AnnouncementUserType>? $in,
    List<Enum$AnnouncementUserType>? notIn,
  }) =>
      _res;
}

class Input$OrderCancelReasonSort {
  factory Input$OrderCancelReasonSort({
    required Enum$OrderCancelReasonSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$OrderCancelReasonSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$OrderCancelReasonSort._(this._$data);

  factory Input$OrderCancelReasonSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$OrderCancelReasonSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$OrderCancelReasonSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderCancelReasonSortFields get field =>
      (_$data['field'] as Enum$OrderCancelReasonSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$OrderCancelReasonSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$OrderCancelReasonSort<Input$OrderCancelReasonSort>
      get copyWith => CopyWith$Input$OrderCancelReasonSort(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderCancelReasonSort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$OrderCancelReasonSort<TRes> {
  factory CopyWith$Input$OrderCancelReasonSort(
    Input$OrderCancelReasonSort instance,
    TRes Function(Input$OrderCancelReasonSort) then,
  ) = _CopyWithImpl$Input$OrderCancelReasonSort;

  factory CopyWith$Input$OrderCancelReasonSort.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderCancelReasonSort;

  TRes call({
    Enum$OrderCancelReasonSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$OrderCancelReasonSort<TRes>
    implements CopyWith$Input$OrderCancelReasonSort<TRes> {
  _CopyWithImpl$Input$OrderCancelReasonSort(
    this._instance,
    this._then,
  );

  final Input$OrderCancelReasonSort _instance;

  final TRes Function(Input$OrderCancelReasonSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$OrderCancelReasonSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$OrderCancelReasonSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$OrderCancelReasonSort<TRes>
    implements CopyWith$Input$OrderCancelReasonSort<TRes> {
  _CopyWithStubImpl$Input$OrderCancelReasonSort(this._res);

  TRes _res;

  call({
    Enum$OrderCancelReasonSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$RiderAddressFilter {
  factory Input$RiderAddressFilter({
    List<Input$RiderAddressFilter>? and,
    List<Input$RiderAddressFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      Input$RiderAddressFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (riderId != null) r'riderId': riderId,
      });

  Input$RiderAddressFilter._(this._$data);

  factory Input$RiderAddressFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$RiderAddressFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$RiderAddressFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('riderId')) {
      final l$riderId = data['riderId'];
      result$data['riderId'] = l$riderId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$riderId as Map<String, dynamic>));
    }
    return Input$RiderAddressFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$RiderAddressFilter>? get and =>
      (_$data['and'] as List<Input$RiderAddressFilter>?);

  List<Input$RiderAddressFilter>? get or =>
      (_$data['or'] as List<Input$RiderAddressFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get riderId =>
      (_$data['riderId'] as Input$IDFilterComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('riderId')) {
      final l$riderId = riderId;
      result$data['riderId'] = l$riderId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$RiderAddressFilter<Input$RiderAddressFilter> get copyWith =>
      CopyWith$Input$RiderAddressFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderAddressFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$riderId = riderId;
    final lOther$riderId = other.riderId;
    if (_$data.containsKey('riderId') != other._$data.containsKey('riderId')) {
      return false;
    }
    if (l$riderId != lOther$riderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$riderId = riderId;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('riderId') ? l$riderId : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderAddressFilter<TRes> {
  factory CopyWith$Input$RiderAddressFilter(
    Input$RiderAddressFilter instance,
    TRes Function(Input$RiderAddressFilter) then,
  ) = _CopyWithImpl$Input$RiderAddressFilter;

  factory CopyWith$Input$RiderAddressFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderAddressFilter;

  TRes call({
    List<Input$RiderAddressFilter>? and,
    List<Input$RiderAddressFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  });
  TRes and(
      Iterable<Input$RiderAddressFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderAddressFilter<Input$RiderAddressFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$RiderAddressFilter>? Function(
              Iterable<
                  CopyWith$Input$RiderAddressFilter<Input$RiderAddressFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get riderId;
}

class _CopyWithImpl$Input$RiderAddressFilter<TRes>
    implements CopyWith$Input$RiderAddressFilter<TRes> {
  _CopyWithImpl$Input$RiderAddressFilter(
    this._instance,
    this._then,
  );

  final Input$RiderAddressFilter _instance;

  final TRes Function(Input$RiderAddressFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? riderId = _undefined,
  }) =>
      _then(Input$RiderAddressFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$RiderAddressFilter>?),
        if (or != _undefined) 'or': (or as List<Input$RiderAddressFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (riderId != _undefined)
          'riderId': (riderId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$RiderAddressFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderAddressFilter<
                          Input$RiderAddressFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$RiderAddressFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$RiderAddressFilter>? Function(
                  Iterable<
                      CopyWith$Input$RiderAddressFilter<
                          Input$RiderAddressFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$RiderAddressFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get riderId {
    final local$riderId = _instance.riderId;
    return local$riderId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$riderId, (e) => call(riderId: e));
  }
}

class _CopyWithStubImpl$Input$RiderAddressFilter<TRes>
    implements CopyWith$Input$RiderAddressFilter<TRes> {
  _CopyWithStubImpl$Input$RiderAddressFilter(this._res);

  TRes _res;

  call({
    List<Input$RiderAddressFilter>? and,
    List<Input$RiderAddressFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get riderId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$RiderAddressSort {
  factory Input$RiderAddressSort({
    required Enum$RiderAddressSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$RiderAddressSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$RiderAddressSort._(this._$data);

  factory Input$RiderAddressSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$RiderAddressSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$RiderAddressSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$RiderAddressSortFields get field =>
      (_$data['field'] as Enum$RiderAddressSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$RiderAddressSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$RiderAddressSort<Input$RiderAddressSort> get copyWith =>
      CopyWith$Input$RiderAddressSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderAddressSort || runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$RiderAddressSort<TRes> {
  factory CopyWith$Input$RiderAddressSort(
    Input$RiderAddressSort instance,
    TRes Function(Input$RiderAddressSort) then,
  ) = _CopyWithImpl$Input$RiderAddressSort;

  factory CopyWith$Input$RiderAddressSort.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderAddressSort;

  TRes call({
    Enum$RiderAddressSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$RiderAddressSort<TRes>
    implements CopyWith$Input$RiderAddressSort<TRes> {
  _CopyWithImpl$Input$RiderAddressSort(
    this._instance,
    this._then,
  );

  final Input$RiderAddressSort _instance;

  final TRes Function(Input$RiderAddressSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$RiderAddressSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$RiderAddressSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$RiderAddressSort<TRes>
    implements CopyWith$Input$RiderAddressSort<TRes> {
  _CopyWithStubImpl$Input$RiderAddressSort(this._res);

  TRes _res;

  call({
    Enum$RiderAddressSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$PaymentGatewayFilter {
  factory Input$PaymentGatewayFilter({
    List<Input$PaymentGatewayFilter>? and,
    List<Input$PaymentGatewayFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? enabled,
  }) =>
      Input$PaymentGatewayFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (enabled != null) r'enabled': enabled,
      });

  Input$PaymentGatewayFilter._(this._$data);

  factory Input$PaymentGatewayFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$PaymentGatewayFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$PaymentGatewayFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('enabled')) {
      final l$enabled = data['enabled'];
      result$data['enabled'] = l$enabled == null
          ? null
          : Input$BooleanFieldComparison.fromJson(
              (l$enabled as Map<String, dynamic>));
    }
    return Input$PaymentGatewayFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PaymentGatewayFilter>? get and =>
      (_$data['and'] as List<Input$PaymentGatewayFilter>?);

  List<Input$PaymentGatewayFilter>? get or =>
      (_$data['or'] as List<Input$PaymentGatewayFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$BooleanFieldComparison? get enabled =>
      (_$data['enabled'] as Input$BooleanFieldComparison?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('and')) {
      final l$and = and;
      result$data['and'] = l$and?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('or')) {
      final l$or = or;
      result$data['or'] = l$or?.map((e) => e.toJson()).toList();
    }
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id?.toJson();
    }
    if (_$data.containsKey('enabled')) {
      final l$enabled = enabled;
      result$data['enabled'] = l$enabled?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PaymentGatewayFilter<Input$PaymentGatewayFilter>
      get copyWith => CopyWith$Input$PaymentGatewayFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaymentGatewayFilter ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$and = and;
    final lOther$and = other.and;
    if (_$data.containsKey('and') != other._$data.containsKey('and')) {
      return false;
    }
    if (l$and != null && lOther$and != null) {
      if (l$and.length != lOther$and.length) {
        return false;
      }
      for (int i = 0; i < l$and.length; i++) {
        final l$and$entry = l$and[i];
        final lOther$and$entry = lOther$and[i];
        if (l$and$entry != lOther$and$entry) {
          return false;
        }
      }
    } else if (l$and != lOther$and) {
      return false;
    }
    final l$or = or;
    final lOther$or = other.or;
    if (_$data.containsKey('or') != other._$data.containsKey('or')) {
      return false;
    }
    if (l$or != null && lOther$or != null) {
      if (l$or.length != lOther$or.length) {
        return false;
      }
      for (int i = 0; i < l$or.length; i++) {
        final l$or$entry = l$or[i];
        final lOther$or$entry = lOther$or[i];
        if (l$or$entry != lOther$or$entry) {
          return false;
        }
      }
    } else if (l$or != lOther$or) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (_$data.containsKey('id') != other._$data.containsKey('id')) {
      return false;
    }
    if (l$id != lOther$id) {
      return false;
    }
    final l$enabled = enabled;
    final lOther$enabled = other.enabled;
    if (_$data.containsKey('enabled') != other._$data.containsKey('enabled')) {
      return false;
    }
    if (l$enabled != lOther$enabled) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$enabled = enabled;
    return Object.hashAll([
      _$data.containsKey('and')
          ? l$and == null
              ? null
              : Object.hashAll(l$and.map((v) => v))
          : const {},
      _$data.containsKey('or')
          ? l$or == null
              ? null
              : Object.hashAll(l$or.map((v) => v))
          : const {},
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('enabled') ? l$enabled : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaymentGatewayFilter<TRes> {
  factory CopyWith$Input$PaymentGatewayFilter(
    Input$PaymentGatewayFilter instance,
    TRes Function(Input$PaymentGatewayFilter) then,
  ) = _CopyWithImpl$Input$PaymentGatewayFilter;

  factory CopyWith$Input$PaymentGatewayFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentGatewayFilter;

  TRes call({
    List<Input$PaymentGatewayFilter>? and,
    List<Input$PaymentGatewayFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? enabled,
  });
  TRes and(
      Iterable<Input$PaymentGatewayFilter>? Function(
              Iterable<
                  CopyWith$Input$PaymentGatewayFilter<
                      Input$PaymentGatewayFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$PaymentGatewayFilter>? Function(
              Iterable<
                  CopyWith$Input$PaymentGatewayFilter<
                      Input$PaymentGatewayFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$BooleanFieldComparison<TRes> get enabled;
}

class _CopyWithImpl$Input$PaymentGatewayFilter<TRes>
    implements CopyWith$Input$PaymentGatewayFilter<TRes> {
  _CopyWithImpl$Input$PaymentGatewayFilter(
    this._instance,
    this._then,
  );

  final Input$PaymentGatewayFilter _instance;

  final TRes Function(Input$PaymentGatewayFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? enabled = _undefined,
  }) =>
      _then(Input$PaymentGatewayFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$PaymentGatewayFilter>?),
        if (or != _undefined) 'or': (or as List<Input$PaymentGatewayFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (enabled != _undefined)
          'enabled': (enabled as Input$BooleanFieldComparison?),
      }));

  TRes and(
          Iterable<Input$PaymentGatewayFilter>? Function(
                  Iterable<
                      CopyWith$Input$PaymentGatewayFilter<
                          Input$PaymentGatewayFilter>>?)
              _fn) =>
      call(
          and:
              _fn(_instance.and?.map((e) => CopyWith$Input$PaymentGatewayFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$PaymentGatewayFilter>? Function(
                  Iterable<
                      CopyWith$Input$PaymentGatewayFilter<
                          Input$PaymentGatewayFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$PaymentGatewayFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$BooleanFieldComparison<TRes> get enabled {
    final local$enabled = _instance.enabled;
    return local$enabled == null
        ? CopyWith$Input$BooleanFieldComparison.stub(_then(_instance))
        : CopyWith$Input$BooleanFieldComparison(
            local$enabled, (e) => call(enabled: e));
  }
}

class _CopyWithStubImpl$Input$PaymentGatewayFilter<TRes>
    implements CopyWith$Input$PaymentGatewayFilter<TRes> {
  _CopyWithStubImpl$Input$PaymentGatewayFilter(this._res);

  TRes _res;

  call({
    List<Input$PaymentGatewayFilter>? and,
    List<Input$PaymentGatewayFilter>? or,
    Input$IDFilterComparison? id,
    Input$BooleanFieldComparison? enabled,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$BooleanFieldComparison<TRes> get enabled =>
      CopyWith$Input$BooleanFieldComparison.stub(_res);
}

class Input$PaymentGatewaySort {
  factory Input$PaymentGatewaySort({
    required Enum$PaymentGatewaySortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$PaymentGatewaySort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$PaymentGatewaySort._(this._$data);

  factory Input$PaymentGatewaySort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$PaymentGatewaySortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$PaymentGatewaySort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PaymentGatewaySortFields get field =>
      (_$data['field'] as Enum$PaymentGatewaySortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$PaymentGatewaySortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$PaymentGatewaySort<Input$PaymentGatewaySort> get copyWith =>
      CopyWith$Input$PaymentGatewaySort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PaymentGatewaySort ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$field = field;
    final lOther$field = other.field;
    if (l$field != lOther$field) {
      return false;
    }
    final l$direction = direction;
    final lOther$direction = other.direction;
    if (l$direction != lOther$direction) {
      return false;
    }
    final l$nulls = nulls;
    final lOther$nulls = other.nulls;
    if (_$data.containsKey('nulls') != other._$data.containsKey('nulls')) {
      return false;
    }
    if (l$nulls != lOther$nulls) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$field = field;
    final l$direction = direction;
    final l$nulls = nulls;
    return Object.hashAll([
      l$field,
      l$direction,
      _$data.containsKey('nulls') ? l$nulls : const {},
    ]);
  }
}

abstract class CopyWith$Input$PaymentGatewaySort<TRes> {
  factory CopyWith$Input$PaymentGatewaySort(
    Input$PaymentGatewaySort instance,
    TRes Function(Input$PaymentGatewaySort) then,
  ) = _CopyWithImpl$Input$PaymentGatewaySort;

  factory CopyWith$Input$PaymentGatewaySort.stub(TRes res) =
      _CopyWithStubImpl$Input$PaymentGatewaySort;

  TRes call({
    Enum$PaymentGatewaySortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$PaymentGatewaySort<TRes>
    implements CopyWith$Input$PaymentGatewaySort<TRes> {
  _CopyWithImpl$Input$PaymentGatewaySort(
    this._instance,
    this._then,
  );

  final Input$PaymentGatewaySort _instance;

  final TRes Function(Input$PaymentGatewaySort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$PaymentGatewaySort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$PaymentGatewaySortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$PaymentGatewaySort<TRes>
    implements CopyWith$Input$PaymentGatewaySort<TRes> {
  _CopyWithStubImpl$Input$PaymentGatewaySort(this._res);

  TRes _res;

  call({
    Enum$PaymentGatewaySortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$CreateOrderInput {
  factory Input$CreateOrderInput({
    required int serviceId,
    Enum$TaxiOrderType? orderType,
    required int intervalMinutes,
    int? waitTime,
    String? paymentMethodId,
    required List<Input$PointInput> points,
    required List<String> addresses,
    bool? twoWay,
    List<String>? optionIds,
    String? couponCode,
    Enum$PaymentMode? paymentMode,
  }) =>
      Input$CreateOrderInput._({
        r'serviceId': serviceId,
        if (orderType != null) r'orderType': orderType,
        r'intervalMinutes': intervalMinutes,
        if (waitTime != null) r'waitTime': waitTime,
        if (paymentMethodId != null) r'paymentMethodId': paymentMethodId,
        r'points': points,
        r'addresses': addresses,
        if (twoWay != null) r'twoWay': twoWay,
        if (optionIds != null) r'optionIds': optionIds,
        if (couponCode != null) r'couponCode': couponCode,
        if (paymentMode != null) r'paymentMode': paymentMode,
      });

  Input$CreateOrderInput._(this._$data);

  factory Input$CreateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$serviceId = data['serviceId'];
    result$data['serviceId'] = (l$serviceId as int);
    if (data.containsKey('orderType')) {
      final l$orderType = data['orderType'];
      result$data['orderType'] =
          fromJson$Enum$TaxiOrderType((l$orderType as String));
    }
    final l$intervalMinutes = data['intervalMinutes'];
    result$data['intervalMinutes'] = (l$intervalMinutes as int);
    if (data.containsKey('waitTime')) {
      final l$waitTime = data['waitTime'];
      result$data['waitTime'] = (l$waitTime as int?);
    }
    if (data.containsKey('paymentMethodId')) {
      final l$paymentMethodId = data['paymentMethodId'];
      result$data['paymentMethodId'] = (l$paymentMethodId as String?);
    }
    final l$points = data['points'];
    result$data['points'] = (l$points as List<dynamic>)
        .map((e) => Input$PointInput.fromJson((e as Map<String, dynamic>)))
        .toList();
    final l$addresses = data['addresses'];
    result$data['addresses'] =
        (l$addresses as List<dynamic>).map((e) => (e as String)).toList();
    if (data.containsKey('twoWay')) {
      final l$twoWay = data['twoWay'];
      result$data['twoWay'] = (l$twoWay as bool?);
    }
    if (data.containsKey('optionIds')) {
      final l$optionIds = data['optionIds'];
      result$data['optionIds'] =
          (l$optionIds as List<dynamic>?)?.map((e) => (e as String)).toList();
    }
    if (data.containsKey('couponCode')) {
      final l$couponCode = data['couponCode'];
      result$data['couponCode'] = (l$couponCode as String?);
    }
    if (data.containsKey('paymentMode')) {
      final l$paymentMode = data['paymentMode'];
      result$data['paymentMode'] = l$paymentMode == null
          ? null
          : fromJson$Enum$PaymentMode((l$paymentMode as String));
    }
    return Input$CreateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get serviceId => (_$data['serviceId'] as int);

  Enum$TaxiOrderType? get orderType =>
      (_$data['orderType'] as Enum$TaxiOrderType?);

  int get intervalMinutes => (_$data['intervalMinutes'] as int);

  int? get waitTime => (_$data['waitTime'] as int?);

  String? get paymentMethodId => (_$data['paymentMethodId'] as String?);

  List<Input$PointInput> get points =>
      (_$data['points'] as List<Input$PointInput>);

  List<String> get addresses => (_$data['addresses'] as List<String>);

  bool? get twoWay => (_$data['twoWay'] as bool?);

  List<String>? get optionIds => (_$data['optionIds'] as List<String>?);

  String? get couponCode => (_$data['couponCode'] as String?);

  Enum$PaymentMode? get paymentMode =>
      (_$data['paymentMode'] as Enum$PaymentMode?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$serviceId = serviceId;
    result$data['serviceId'] = l$serviceId;
    if (_$data.containsKey('orderType')) {
      final l$orderType = orderType;
      result$data['orderType'] =
          toJson$Enum$TaxiOrderType((l$orderType as Enum$TaxiOrderType));
    }
    final l$intervalMinutes = intervalMinutes;
    result$data['intervalMinutes'] = l$intervalMinutes;
    if (_$data.containsKey('waitTime')) {
      final l$waitTime = waitTime;
      result$data['waitTime'] = l$waitTime;
    }
    if (_$data.containsKey('paymentMethodId')) {
      final l$paymentMethodId = paymentMethodId;
      result$data['paymentMethodId'] = l$paymentMethodId;
    }
    final l$points = points;
    result$data['points'] = l$points.map((e) => e.toJson()).toList();
    final l$addresses = addresses;
    result$data['addresses'] = l$addresses.map((e) => e).toList();
    if (_$data.containsKey('twoWay')) {
      final l$twoWay = twoWay;
      result$data['twoWay'] = l$twoWay;
    }
    if (_$data.containsKey('optionIds')) {
      final l$optionIds = optionIds;
      result$data['optionIds'] = l$optionIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('couponCode')) {
      final l$couponCode = couponCode;
      result$data['couponCode'] = l$couponCode;
    }
    if (_$data.containsKey('paymentMode')) {
      final l$paymentMode = paymentMode;
      result$data['paymentMode'] =
          l$paymentMode == null ? null : toJson$Enum$PaymentMode(l$paymentMode);
    }
    return result$data;
  }

  CopyWith$Input$CreateOrderInput<Input$CreateOrderInput> get copyWith =>
      CopyWith$Input$CreateOrderInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOrderInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$serviceId = serviceId;
    final lOther$serviceId = other.serviceId;
    if (l$serviceId != lOther$serviceId) {
      return false;
    }
    final l$orderType = orderType;
    final lOther$orderType = other.orderType;
    if (_$data.containsKey('orderType') !=
        other._$data.containsKey('orderType')) {
      return false;
    }
    if (l$orderType != lOther$orderType) {
      return false;
    }
    final l$intervalMinutes = intervalMinutes;
    final lOther$intervalMinutes = other.intervalMinutes;
    if (l$intervalMinutes != lOther$intervalMinutes) {
      return false;
    }
    final l$waitTime = waitTime;
    final lOther$waitTime = other.waitTime;
    if (_$data.containsKey('waitTime') !=
        other._$data.containsKey('waitTime')) {
      return false;
    }
    if (l$waitTime != lOther$waitTime) {
      return false;
    }
    final l$paymentMethodId = paymentMethodId;
    final lOther$paymentMethodId = other.paymentMethodId;
    if (_$data.containsKey('paymentMethodId') !=
        other._$data.containsKey('paymentMethodId')) {
      return false;
    }
    if (l$paymentMethodId != lOther$paymentMethodId) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points.length != lOther$points.length) {
      return false;
    }
    for (int i = 0; i < l$points.length; i++) {
      final l$points$entry = l$points[i];
      final lOther$points$entry = lOther$points[i];
      if (l$points$entry != lOther$points$entry) {
        return false;
      }
    }
    final l$addresses = addresses;
    final lOther$addresses = other.addresses;
    if (l$addresses.length != lOther$addresses.length) {
      return false;
    }
    for (int i = 0; i < l$addresses.length; i++) {
      final l$addresses$entry = l$addresses[i];
      final lOther$addresses$entry = lOther$addresses[i];
      if (l$addresses$entry != lOther$addresses$entry) {
        return false;
      }
    }
    final l$twoWay = twoWay;
    final lOther$twoWay = other.twoWay;
    if (_$data.containsKey('twoWay') != other._$data.containsKey('twoWay')) {
      return false;
    }
    if (l$twoWay != lOther$twoWay) {
      return false;
    }
    final l$optionIds = optionIds;
    final lOther$optionIds = other.optionIds;
    if (_$data.containsKey('optionIds') !=
        other._$data.containsKey('optionIds')) {
      return false;
    }
    if (l$optionIds != null && lOther$optionIds != null) {
      if (l$optionIds.length != lOther$optionIds.length) {
        return false;
      }
      for (int i = 0; i < l$optionIds.length; i++) {
        final l$optionIds$entry = l$optionIds[i];
        final lOther$optionIds$entry = lOther$optionIds[i];
        if (l$optionIds$entry != lOther$optionIds$entry) {
          return false;
        }
      }
    } else if (l$optionIds != lOther$optionIds) {
      return false;
    }
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (_$data.containsKey('couponCode') !=
        other._$data.containsKey('couponCode')) {
      return false;
    }
    if (l$couponCode != lOther$couponCode) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (_$data.containsKey('paymentMode') !=
        other._$data.containsKey('paymentMode')) {
      return false;
    }
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$serviceId = serviceId;
    final l$orderType = orderType;
    final l$intervalMinutes = intervalMinutes;
    final l$waitTime = waitTime;
    final l$paymentMethodId = paymentMethodId;
    final l$points = points;
    final l$addresses = addresses;
    final l$twoWay = twoWay;
    final l$optionIds = optionIds;
    final l$couponCode = couponCode;
    final l$paymentMode = paymentMode;
    return Object.hashAll([
      l$serviceId,
      _$data.containsKey('orderType') ? l$orderType : const {},
      l$intervalMinutes,
      _$data.containsKey('waitTime') ? l$waitTime : const {},
      _$data.containsKey('paymentMethodId') ? l$paymentMethodId : const {},
      Object.hashAll(l$points.map((v) => v)),
      Object.hashAll(l$addresses.map((v) => v)),
      _$data.containsKey('twoWay') ? l$twoWay : const {},
      _$data.containsKey('optionIds')
          ? l$optionIds == null
              ? null
              : Object.hashAll(l$optionIds.map((v) => v))
          : const {},
      _$data.containsKey('couponCode') ? l$couponCode : const {},
      _$data.containsKey('paymentMode') ? l$paymentMode : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreateOrderInput<TRes> {
  factory CopyWith$Input$CreateOrderInput(
    Input$CreateOrderInput instance,
    TRes Function(Input$CreateOrderInput) then,
  ) = _CopyWithImpl$Input$CreateOrderInput;

  factory CopyWith$Input$CreateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOrderInput;

  TRes call({
    int? serviceId,
    Enum$TaxiOrderType? orderType,
    int? intervalMinutes,
    int? waitTime,
    String? paymentMethodId,
    List<Input$PointInput>? points,
    List<String>? addresses,
    bool? twoWay,
    List<String>? optionIds,
    String? couponCode,
    Enum$PaymentMode? paymentMode,
  });
  TRes points(
      Iterable<Input$PointInput> Function(
              Iterable<CopyWith$Input$PointInput<Input$PointInput>>)
          _fn);
}

class _CopyWithImpl$Input$CreateOrderInput<TRes>
    implements CopyWith$Input$CreateOrderInput<TRes> {
  _CopyWithImpl$Input$CreateOrderInput(
    this._instance,
    this._then,
  );

  final Input$CreateOrderInput _instance;

  final TRes Function(Input$CreateOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? serviceId = _undefined,
    Object? orderType = _undefined,
    Object? intervalMinutes = _undefined,
    Object? waitTime = _undefined,
    Object? paymentMethodId = _undefined,
    Object? points = _undefined,
    Object? addresses = _undefined,
    Object? twoWay = _undefined,
    Object? optionIds = _undefined,
    Object? couponCode = _undefined,
    Object? paymentMode = _undefined,
  }) =>
      _then(Input$CreateOrderInput._({
        ..._instance._$data,
        if (serviceId != _undefined && serviceId != null)
          'serviceId': (serviceId as int),
        if (orderType != _undefined && orderType != null)
          'orderType': (orderType as Enum$TaxiOrderType),
        if (intervalMinutes != _undefined && intervalMinutes != null)
          'intervalMinutes': (intervalMinutes as int),
        if (waitTime != _undefined) 'waitTime': (waitTime as int?),
        if (paymentMethodId != _undefined)
          'paymentMethodId': (paymentMethodId as String?),
        if (points != _undefined && points != null)
          'points': (points as List<Input$PointInput>),
        if (addresses != _undefined && addresses != null)
          'addresses': (addresses as List<String>),
        if (twoWay != _undefined) 'twoWay': (twoWay as bool?),
        if (optionIds != _undefined) 'optionIds': (optionIds as List<String>?),
        if (couponCode != _undefined) 'couponCode': (couponCode as String?),
        if (paymentMode != _undefined)
          'paymentMode': (paymentMode as Enum$PaymentMode?),
      }));

  TRes points(
          Iterable<Input$PointInput> Function(
                  Iterable<CopyWith$Input$PointInput<Input$PointInput>>)
              _fn) =>
      call(
          points: _fn(_instance.points.map((e) => CopyWith$Input$PointInput(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Input$CreateOrderInput<TRes>
    implements CopyWith$Input$CreateOrderInput<TRes> {
  _CopyWithStubImpl$Input$CreateOrderInput(this._res);

  TRes _res;

  call({
    int? serviceId,
    Enum$TaxiOrderType? orderType,
    int? intervalMinutes,
    int? waitTime,
    String? paymentMethodId,
    List<Input$PointInput>? points,
    List<String>? addresses,
    bool? twoWay,
    List<String>? optionIds,
    String? couponCode,
    Enum$PaymentMode? paymentMode,
  }) =>
      _res;

  points(_fn) => _res;
}

class Input$SubmitFeedbackInput {
  factory Input$SubmitFeedbackInput({
    required int score,
    required String requestId,
    List<String>? parameterIds,
    String? description,
    bool? addToFavorite,
  }) =>
      Input$SubmitFeedbackInput._({
        r'score': score,
        r'requestId': requestId,
        if (parameterIds != null) r'parameterIds': parameterIds,
        if (description != null) r'description': description,
        if (addToFavorite != null) r'addToFavorite': addToFavorite,
      });

  Input$SubmitFeedbackInput._(this._$data);

  factory Input$SubmitFeedbackInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$score = data['score'];
    result$data['score'] = (l$score as int);
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    if (data.containsKey('parameterIds')) {
      final l$parameterIds = data['parameterIds'];
      result$data['parameterIds'] = (l$parameterIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('addToFavorite')) {
      final l$addToFavorite = data['addToFavorite'];
      result$data['addToFavorite'] = (l$addToFavorite as bool?);
    }
    return Input$SubmitFeedbackInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get score => (_$data['score'] as int);

  String get requestId => (_$data['requestId'] as String);

  List<String>? get parameterIds => (_$data['parameterIds'] as List<String>?);

  String? get description => (_$data['description'] as String?);

  bool? get addToFavorite => (_$data['addToFavorite'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$score = score;
    result$data['score'] = l$score;
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    if (_$data.containsKey('parameterIds')) {
      final l$parameterIds = parameterIds;
      result$data['parameterIds'] = l$parameterIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('addToFavorite')) {
      final l$addToFavorite = addToFavorite;
      result$data['addToFavorite'] = l$addToFavorite;
    }
    return result$data;
  }

  CopyWith$Input$SubmitFeedbackInput<Input$SubmitFeedbackInput> get copyWith =>
      CopyWith$Input$SubmitFeedbackInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SubmitFeedbackInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$parameterIds = parameterIds;
    final lOther$parameterIds = other.parameterIds;
    if (_$data.containsKey('parameterIds') !=
        other._$data.containsKey('parameterIds')) {
      return false;
    }
    if (l$parameterIds != null && lOther$parameterIds != null) {
      if (l$parameterIds.length != lOther$parameterIds.length) {
        return false;
      }
      for (int i = 0; i < l$parameterIds.length; i++) {
        final l$parameterIds$entry = l$parameterIds[i];
        final lOther$parameterIds$entry = lOther$parameterIds[i];
        if (l$parameterIds$entry != lOther$parameterIds$entry) {
          return false;
        }
      }
    } else if (l$parameterIds != lOther$parameterIds) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$addToFavorite = addToFavorite;
    final lOther$addToFavorite = other.addToFavorite;
    if (_$data.containsKey('addToFavorite') !=
        other._$data.containsKey('addToFavorite')) {
      return false;
    }
    if (l$addToFavorite != lOther$addToFavorite) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$score = score;
    final l$requestId = requestId;
    final l$parameterIds = parameterIds;
    final l$description = description;
    final l$addToFavorite = addToFavorite;
    return Object.hashAll([
      l$score,
      l$requestId,
      _$data.containsKey('parameterIds')
          ? l$parameterIds == null
              ? null
              : Object.hashAll(l$parameterIds.map((v) => v))
          : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('addToFavorite') ? l$addToFavorite : const {},
    ]);
  }
}

abstract class CopyWith$Input$SubmitFeedbackInput<TRes> {
  factory CopyWith$Input$SubmitFeedbackInput(
    Input$SubmitFeedbackInput instance,
    TRes Function(Input$SubmitFeedbackInput) then,
  ) = _CopyWithImpl$Input$SubmitFeedbackInput;

  factory CopyWith$Input$SubmitFeedbackInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SubmitFeedbackInput;

  TRes call({
    int? score,
    String? requestId,
    List<String>? parameterIds,
    String? description,
    bool? addToFavorite,
  });
}

class _CopyWithImpl$Input$SubmitFeedbackInput<TRes>
    implements CopyWith$Input$SubmitFeedbackInput<TRes> {
  _CopyWithImpl$Input$SubmitFeedbackInput(
    this._instance,
    this._then,
  );

  final Input$SubmitFeedbackInput _instance;

  final TRes Function(Input$SubmitFeedbackInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? score = _undefined,
    Object? requestId = _undefined,
    Object? parameterIds = _undefined,
    Object? description = _undefined,
    Object? addToFavorite = _undefined,
  }) =>
      _then(Input$SubmitFeedbackInput._({
        ..._instance._$data,
        if (score != _undefined && score != null) 'score': (score as int),
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (parameterIds != _undefined)
          'parameterIds': (parameterIds as List<String>?),
        if (description != _undefined) 'description': (description as String?),
        if (addToFavorite != _undefined)
          'addToFavorite': (addToFavorite as bool?),
      }));
}

class _CopyWithStubImpl$Input$SubmitFeedbackInput<TRes>
    implements CopyWith$Input$SubmitFeedbackInput<TRes> {
  _CopyWithStubImpl$Input$SubmitFeedbackInput(this._res);

  TRes _res;

  call({
    int? score,
    String? requestId,
    List<String>? parameterIds,
    String? description,
    bool? addToFavorite,
  }) =>
      _res;
}

class Input$TopUpWalletInput {
  factory Input$TopUpWalletInput({
    required String gatewayId,
    Enum$PaymentMode? paymentMode,
    required double amount,
    required String currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
    String? orderNumber,
  }) =>
      Input$TopUpWalletInput._({
        r'gatewayId': gatewayId,
        if (paymentMode != null) r'paymentMode': paymentMode,
        r'amount': amount,
        r'currency': currency,
        if (token != null) r'token': token,
        if (pin != null) r'pin': pin,
        if (otp != null) r'otp': otp,
        if (transactionId != null) r'transactionId': transactionId,
        if (orderNumber != null) r'orderNumber': orderNumber,
      });

  Input$TopUpWalletInput._(this._$data);

  factory Input$TopUpWalletInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    if (data.containsKey('paymentMode')) {
      final l$paymentMode = data['paymentMode'];
      result$data['paymentMode'] =
          fromJson$Enum$PaymentMode((l$paymentMode as String));
    }
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    final l$currency = data['currency'];
    result$data['currency'] = (l$currency as String);
    if (data.containsKey('token')) {
      final l$token = data['token'];
      result$data['token'] = (l$token as String?);
    }
    if (data.containsKey('pin')) {
      final l$pin = data['pin'];
      result$data['pin'] = (l$pin as num?)?.toDouble();
    }
    if (data.containsKey('otp')) {
      final l$otp = data['otp'];
      result$data['otp'] = (l$otp as num?)?.toDouble();
    }
    if (data.containsKey('transactionId')) {
      final l$transactionId = data['transactionId'];
      result$data['transactionId'] = (l$transactionId as String?);
    }
    if (data.containsKey('orderNumber')) {
      final l$orderNumber = data['orderNumber'];
      result$data['orderNumber'] = (l$orderNumber as String?);
    }
    return Input$TopUpWalletInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Enum$PaymentMode? get paymentMode =>
      (_$data['paymentMode'] as Enum$PaymentMode?);

  double get amount => (_$data['amount'] as double);

  String get currency => (_$data['currency'] as String);

  String? get token => (_$data['token'] as String?);

  double? get pin => (_$data['pin'] as double?);

  double? get otp => (_$data['otp'] as double?);

  String? get transactionId => (_$data['transactionId'] as String?);

  String? get orderNumber => (_$data['orderNumber'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    if (_$data.containsKey('paymentMode')) {
      final l$paymentMode = paymentMode;
      result$data['paymentMode'] =
          toJson$Enum$PaymentMode((l$paymentMode as Enum$PaymentMode));
    }
    final l$amount = amount;
    result$data['amount'] = l$amount;
    final l$currency = currency;
    result$data['currency'] = l$currency;
    if (_$data.containsKey('token')) {
      final l$token = token;
      result$data['token'] = l$token;
    }
    if (_$data.containsKey('pin')) {
      final l$pin = pin;
      result$data['pin'] = l$pin;
    }
    if (_$data.containsKey('otp')) {
      final l$otp = otp;
      result$data['otp'] = l$otp;
    }
    if (_$data.containsKey('transactionId')) {
      final l$transactionId = transactionId;
      result$data['transactionId'] = l$transactionId;
    }
    if (_$data.containsKey('orderNumber')) {
      final l$orderNumber = orderNumber;
      result$data['orderNumber'] = l$orderNumber;
    }
    return result$data;
  }

  CopyWith$Input$TopUpWalletInput<Input$TopUpWalletInput> get copyWith =>
      CopyWith$Input$TopUpWalletInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$TopUpWalletInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$gatewayId = gatewayId;
    final lOther$gatewayId = other.gatewayId;
    if (l$gatewayId != lOther$gatewayId) {
      return false;
    }
    final l$paymentMode = paymentMode;
    final lOther$paymentMode = other.paymentMode;
    if (_$data.containsKey('paymentMode') !=
        other._$data.containsKey('paymentMode')) {
      return false;
    }
    if (l$paymentMode != lOther$paymentMode) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$currency = currency;
    final lOther$currency = other.currency;
    if (l$currency != lOther$currency) {
      return false;
    }
    final l$token = token;
    final lOther$token = other.token;
    if (_$data.containsKey('token') != other._$data.containsKey('token')) {
      return false;
    }
    if (l$token != lOther$token) {
      return false;
    }
    final l$pin = pin;
    final lOther$pin = other.pin;
    if (_$data.containsKey('pin') != other._$data.containsKey('pin')) {
      return false;
    }
    if (l$pin != lOther$pin) {
      return false;
    }
    final l$otp = otp;
    final lOther$otp = other.otp;
    if (_$data.containsKey('otp') != other._$data.containsKey('otp')) {
      return false;
    }
    if (l$otp != lOther$otp) {
      return false;
    }
    final l$transactionId = transactionId;
    final lOther$transactionId = other.transactionId;
    if (_$data.containsKey('transactionId') !=
        other._$data.containsKey('transactionId')) {
      return false;
    }
    if (l$transactionId != lOther$transactionId) {
      return false;
    }
    final l$orderNumber = orderNumber;
    final lOther$orderNumber = other.orderNumber;
    if (_$data.containsKey('orderNumber') !=
        other._$data.containsKey('orderNumber')) {
      return false;
    }
    if (l$orderNumber != lOther$orderNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gatewayId = gatewayId;
    final l$paymentMode = paymentMode;
    final l$amount = amount;
    final l$currency = currency;
    final l$token = token;
    final l$pin = pin;
    final l$otp = otp;
    final l$transactionId = transactionId;
    final l$orderNumber = orderNumber;
    return Object.hashAll([
      l$gatewayId,
      _$data.containsKey('paymentMode') ? l$paymentMode : const {},
      l$amount,
      l$currency,
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('pin') ? l$pin : const {},
      _$data.containsKey('otp') ? l$otp : const {},
      _$data.containsKey('transactionId') ? l$transactionId : const {},
      _$data.containsKey('orderNumber') ? l$orderNumber : const {},
    ]);
  }
}

abstract class CopyWith$Input$TopUpWalletInput<TRes> {
  factory CopyWith$Input$TopUpWalletInput(
    Input$TopUpWalletInput instance,
    TRes Function(Input$TopUpWalletInput) then,
  ) = _CopyWithImpl$Input$TopUpWalletInput;

  factory CopyWith$Input$TopUpWalletInput.stub(TRes res) =
      _CopyWithStubImpl$Input$TopUpWalletInput;

  TRes call({
    String? gatewayId,
    Enum$PaymentMode? paymentMode,
    double? amount,
    String? currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
    String? orderNumber,
  });
}

class _CopyWithImpl$Input$TopUpWalletInput<TRes>
    implements CopyWith$Input$TopUpWalletInput<TRes> {
  _CopyWithImpl$Input$TopUpWalletInput(
    this._instance,
    this._then,
  );

  final Input$TopUpWalletInput _instance;

  final TRes Function(Input$TopUpWalletInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gatewayId = _undefined,
    Object? paymentMode = _undefined,
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? token = _undefined,
    Object? pin = _undefined,
    Object? otp = _undefined,
    Object? transactionId = _undefined,
    Object? orderNumber = _undefined,
  }) =>
      _then(Input$TopUpWalletInput._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
        if (paymentMode != _undefined && paymentMode != null)
          'paymentMode': (paymentMode as Enum$PaymentMode),
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (currency != _undefined && currency != null)
          'currency': (currency as String),
        if (token != _undefined) 'token': (token as String?),
        if (pin != _undefined) 'pin': (pin as double?),
        if (otp != _undefined) 'otp': (otp as double?),
        if (transactionId != _undefined)
          'transactionId': (transactionId as String?),
        if (orderNumber != _undefined) 'orderNumber': (orderNumber as String?),
      }));
}

class _CopyWithStubImpl$Input$TopUpWalletInput<TRes>
    implements CopyWith$Input$TopUpWalletInput<TRes> {
  _CopyWithStubImpl$Input$TopUpWalletInput(this._res);

  TRes _res;

  call({
    String? gatewayId,
    Enum$PaymentMode? paymentMode,
    double? amount,
    String? currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
    String? orderNumber,
  }) =>
      _res;
}

class Input$LoginInput {
  factory Input$LoginInput({required String firebaseToken}) =>
      Input$LoginInput._({
        r'firebaseToken': firebaseToken,
      });

  Input$LoginInput._(this._$data);

  factory Input$LoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$firebaseToken = data['firebaseToken'];
    result$data['firebaseToken'] = (l$firebaseToken as String);
    return Input$LoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get firebaseToken => (_$data['firebaseToken'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$firebaseToken = firebaseToken;
    result$data['firebaseToken'] = l$firebaseToken;
    return result$data;
  }

  CopyWith$Input$LoginInput<Input$LoginInput> get copyWith =>
      CopyWith$Input$LoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$LoginInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$firebaseToken = firebaseToken;
    final lOther$firebaseToken = other.firebaseToken;
    if (l$firebaseToken != lOther$firebaseToken) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firebaseToken = firebaseToken;
    return Object.hashAll([l$firebaseToken]);
  }
}

abstract class CopyWith$Input$LoginInput<TRes> {
  factory CopyWith$Input$LoginInput(
    Input$LoginInput instance,
    TRes Function(Input$LoginInput) then,
  ) = _CopyWithImpl$Input$LoginInput;

  factory CopyWith$Input$LoginInput.stub(TRes res) =
      _CopyWithStubImpl$Input$LoginInput;

  TRes call({String? firebaseToken});
}

class _CopyWithImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithImpl$Input$LoginInput(
    this._instance,
    this._then,
  );

  final Input$LoginInput _instance;

  final TRes Function(Input$LoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? firebaseToken = _undefined}) => _then(Input$LoginInput._({
        ..._instance._$data,
        if (firebaseToken != _undefined && firebaseToken != null)
          'firebaseToken': (firebaseToken as String),
      }));
}

class _CopyWithStubImpl$Input$LoginInput<TRes>
    implements CopyWith$Input$LoginInput<TRes> {
  _CopyWithStubImpl$Input$LoginInput(this._res);

  TRes _res;

  call({String? firebaseToken}) => _res;
}

class Input$UpdateOneRiderInput {
  factory Input$UpdateOneRiderInput({
    required String id,
    required Input$UpdateRiderInput update,
  }) =>
      Input$UpdateOneRiderInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOneRiderInput._(this._$data);

  factory Input$UpdateOneRiderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdateRiderInput.fromJson((l$update as Map<String, dynamic>));
    return Input$UpdateOneRiderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UpdateRiderInput get update =>
      (_$data['update'] as Input$UpdateRiderInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOneRiderInput<Input$UpdateOneRiderInput> get copyWith =>
      CopyWith$Input$UpdateOneRiderInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOneRiderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$update = update;
    return Object.hashAll([
      l$id,
      l$update,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOneRiderInput<TRes> {
  factory CopyWith$Input$UpdateOneRiderInput(
    Input$UpdateOneRiderInput instance,
    TRes Function(Input$UpdateOneRiderInput) then,
  ) = _CopyWithImpl$Input$UpdateOneRiderInput;

  factory CopyWith$Input$UpdateOneRiderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOneRiderInput;

  TRes call({
    String? id,
    Input$UpdateRiderInput? update,
  });
  CopyWith$Input$UpdateRiderInput<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOneRiderInput<TRes>
    implements CopyWith$Input$UpdateOneRiderInput<TRes> {
  _CopyWithImpl$Input$UpdateOneRiderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOneRiderInput _instance;

  final TRes Function(Input$UpdateOneRiderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOneRiderInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdateRiderInput),
      }));

  CopyWith$Input$UpdateRiderInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$UpdateRiderInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOneRiderInput<TRes>
    implements CopyWith$Input$UpdateOneRiderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOneRiderInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateRiderInput? update,
  }) =>
      _res;

  CopyWith$Input$UpdateRiderInput<TRes> get update =>
      CopyWith$Input$UpdateRiderInput.stub(_res);
}

class Input$UpdateRiderInput {
  factory Input$UpdateRiderInput({
    String? mediaId,
    int? presetAvatarNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    String? notificationPlayerId,
    String? password,
    bool? isResident,
    String? idNumber,
    Enum$RiderDocumentType? documentType,
  }) =>
      Input$UpdateRiderInput._({
        if (mediaId != null) r'mediaId': mediaId,
        if (presetAvatarNumber != null)
          r'presetAvatarNumber': presetAvatarNumber,
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (gender != null) r'gender': gender,
        if (email != null) r'email': email,
        if (notificationPlayerId != null)
          r'notificationPlayerId': notificationPlayerId,
        if (password != null) r'password': password,
        if (isResident != null) r'isResident': isResident,
        if (idNumber != null) r'idNumber': idNumber,
        if (documentType != null) r'documentType': documentType,
      });

  Input$UpdateRiderInput._(this._$data);

  factory Input$UpdateRiderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as String?);
    }
    if (data.containsKey('presetAvatarNumber')) {
      final l$presetAvatarNumber = data['presetAvatarNumber'];
      result$data['presetAvatarNumber'] = (l$presetAvatarNumber as int?);
    }
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('notificationPlayerId')) {
      final l$notificationPlayerId = data['notificationPlayerId'];
      result$data['notificationPlayerId'] = (l$notificationPlayerId as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('isResident')) {
      final l$isResident = data['isResident'];
      result$data['isResident'] = (l$isResident as bool?);
    }
    if (data.containsKey('idNumber')) {
      final l$idNumber = data['idNumber'];
      result$data['idNumber'] = (l$idNumber as String?);
    }
    if (data.containsKey('documentType')) {
      final l$documentType = data['documentType'];
      result$data['documentType'] = l$documentType == null
          ? null
          : fromJson$Enum$RiderDocumentType((l$documentType as String));
    }
    return Input$UpdateRiderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get mediaId => (_$data['mediaId'] as String?);

  int? get presetAvatarNumber => (_$data['presetAvatarNumber'] as int?);

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);

  String? get email => (_$data['email'] as String?);

  String? get notificationPlayerId =>
      (_$data['notificationPlayerId'] as String?);

  String? get password => (_$data['password'] as String?);

  bool? get isResident => (_$data['isResident'] as bool?);

  String? get idNumber => (_$data['idNumber'] as String?);

  Enum$RiderDocumentType? get documentType =>
      (_$data['documentType'] as Enum$RiderDocumentType?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('presetAvatarNumber')) {
      final l$presetAvatarNumber = presetAvatarNumber;
      result$data['presetAvatarNumber'] = l$presetAvatarNumber;
    }
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('notificationPlayerId')) {
      final l$notificationPlayerId = notificationPlayerId;
      result$data['notificationPlayerId'] = l$notificationPlayerId;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('isResident')) {
      final l$isResident = isResident;
      result$data['isResident'] = l$isResident;
    }
    if (_$data.containsKey('idNumber')) {
      final l$idNumber = idNumber;
      result$data['idNumber'] = l$idNumber;
    }
    if (_$data.containsKey('documentType')) {
      final l$documentType = documentType;
      result$data['documentType'] = l$documentType == null
          ? null
          : toJson$Enum$RiderDocumentType(l$documentType);
    }
    return result$data;
  }

  CopyWith$Input$UpdateRiderInput<Input$UpdateRiderInput> get copyWith =>
      CopyWith$Input$UpdateRiderInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateRiderInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mediaId = mediaId;
    final lOther$mediaId = other.mediaId;
    if (_$data.containsKey('mediaId') != other._$data.containsKey('mediaId')) {
      return false;
    }
    if (l$mediaId != lOther$mediaId) {
      return false;
    }
    final l$presetAvatarNumber = presetAvatarNumber;
    final lOther$presetAvatarNumber = other.presetAvatarNumber;
    if (_$data.containsKey('presetAvatarNumber') !=
        other._$data.containsKey('presetAvatarNumber')) {
      return false;
    }
    if (l$presetAvatarNumber != lOther$presetAvatarNumber) {
      return false;
    }
    final l$firstName = firstName;
    final lOther$firstName = other.firstName;
    if (_$data.containsKey('firstName') !=
        other._$data.containsKey('firstName')) {
      return false;
    }
    if (l$firstName != lOther$firstName) {
      return false;
    }
    final l$lastName = lastName;
    final lOther$lastName = other.lastName;
    if (_$data.containsKey('lastName') !=
        other._$data.containsKey('lastName')) {
      return false;
    }
    if (l$lastName != lOther$lastName) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$notificationPlayerId = notificationPlayerId;
    final lOther$notificationPlayerId = other.notificationPlayerId;
    if (_$data.containsKey('notificationPlayerId') !=
        other._$data.containsKey('notificationPlayerId')) {
      return false;
    }
    if (l$notificationPlayerId != lOther$notificationPlayerId) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (_$data.containsKey('password') !=
        other._$data.containsKey('password')) {
      return false;
    }
    if (l$password != lOther$password) {
      return false;
    }
    final l$isResident = isResident;
    final lOther$isResident = other.isResident;
    if (_$data.containsKey('isResident') !=
        other._$data.containsKey('isResident')) {
      return false;
    }
    if (l$isResident != lOther$isResident) {
      return false;
    }
    final l$idNumber = idNumber;
    final lOther$idNumber = other.idNumber;
    if (_$data.containsKey('idNumber') !=
        other._$data.containsKey('idNumber')) {
      return false;
    }
    if (l$idNumber != lOther$idNumber) {
      return false;
    }
    final l$documentType = documentType;
    final lOther$documentType = other.documentType;
    if (_$data.containsKey('documentType') !=
        other._$data.containsKey('documentType')) {
      return false;
    }
    if (l$documentType != lOther$documentType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mediaId = mediaId;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$gender = gender;
    final l$email = email;
    final l$notificationPlayerId = notificationPlayerId;
    final l$password = password;
    final l$isResident = isResident;
    final l$idNumber = idNumber;
    final l$documentType = documentType;
    return Object.hashAll([
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('presetAvatarNumber')
          ? l$presetAvatarNumber
          : const {},
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('notificationPlayerId')
          ? l$notificationPlayerId
          : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('isResident') ? l$isResident : const {},
      _$data.containsKey('idNumber') ? l$idNumber : const {},
      _$data.containsKey('documentType') ? l$documentType : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateRiderInput<TRes> {
  factory CopyWith$Input$UpdateRiderInput(
    Input$UpdateRiderInput instance,
    TRes Function(Input$UpdateRiderInput) then,
  ) = _CopyWithImpl$Input$UpdateRiderInput;

  factory CopyWith$Input$UpdateRiderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateRiderInput;

  TRes call({
    String? mediaId,
    int? presetAvatarNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    String? notificationPlayerId,
    String? password,
    bool? isResident,
    String? idNumber,
    Enum$RiderDocumentType? documentType,
  });
}

class _CopyWithImpl$Input$UpdateRiderInput<TRes>
    implements CopyWith$Input$UpdateRiderInput<TRes> {
  _CopyWithImpl$Input$UpdateRiderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateRiderInput _instance;

  final TRes Function(Input$UpdateRiderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mediaId = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? gender = _undefined,
    Object? email = _undefined,
    Object? notificationPlayerId = _undefined,
    Object? password = _undefined,
    Object? isResident = _undefined,
    Object? idNumber = _undefined,
    Object? documentType = _undefined,
  }) =>
      _then(Input$UpdateRiderInput._({
        ..._instance._$data,
        if (mediaId != _undefined) 'mediaId': (mediaId as String?),
        if (presetAvatarNumber != _undefined)
          'presetAvatarNumber': (presetAvatarNumber as int?),
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (email != _undefined) 'email': (email as String?),
        if (notificationPlayerId != _undefined)
          'notificationPlayerId': (notificationPlayerId as String?),
        if (password != _undefined) 'password': (password as String?),
        if (isResident != _undefined) 'isResident': (isResident as bool?),
        if (idNumber != _undefined) 'idNumber': (idNumber as String?),
        if (documentType != _undefined)
          'documentType': (documentType as Enum$RiderDocumentType?),
      }));
}

class _CopyWithStubImpl$Input$UpdateRiderInput<TRes>
    implements CopyWith$Input$UpdateRiderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateRiderInput(this._res);

  TRes _res;

  call({
    String? mediaId,
    int? presetAvatarNumber,
    String? firstName,
    String? lastName,
    Enum$Gender? gender,
    String? email,
    String? notificationPlayerId,
    String? password,
    bool? isResident,
    String? idNumber,
    Enum$RiderDocumentType? documentType,
  }) =>
      _res;
}

class Input$UpdateOneOrderInput {
  factory Input$UpdateOneOrderInput({
    required String id,
    required Input$UpdateOrderInput update,
  }) =>
      Input$UpdateOneOrderInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOneOrderInput._(this._$data);

  factory Input$UpdateOneOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdateOrderInput.fromJson((l$update as Map<String, dynamic>));
    return Input$UpdateOneOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UpdateOrderInput get update =>
      (_$data['update'] as Input$UpdateOrderInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOneOrderInput<Input$UpdateOneOrderInput> get copyWith =>
      CopyWith$Input$UpdateOneOrderInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOneOrderInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$update = update;
    return Object.hashAll([
      l$id,
      l$update,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOneOrderInput<TRes> {
  factory CopyWith$Input$UpdateOneOrderInput(
    Input$UpdateOneOrderInput instance,
    TRes Function(Input$UpdateOneOrderInput) then,
  ) = _CopyWithImpl$Input$UpdateOneOrderInput;

  factory CopyWith$Input$UpdateOneOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOneOrderInput;

  TRes call({
    String? id,
    Input$UpdateOrderInput? update,
  });
  CopyWith$Input$UpdateOrderInput<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOneOrderInput<TRes>
    implements CopyWith$Input$UpdateOneOrderInput<TRes> {
  _CopyWithImpl$Input$UpdateOneOrderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOneOrderInput _instance;

  final TRes Function(Input$UpdateOneOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOneOrderInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdateOrderInput),
      }));

  CopyWith$Input$UpdateOrderInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$UpdateOrderInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOneOrderInput<TRes>
    implements CopyWith$Input$UpdateOneOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOneOrderInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateOrderInput? update,
  }) =>
      _res;

  CopyWith$Input$UpdateOrderInput<TRes> get update =>
      CopyWith$Input$UpdateOrderInput.stub(_res);
}

class Input$UpdateOrderInput {
  factory Input$UpdateOrderInput({
    int? waitMinutes,
    Enum$OrderStatus? status,
    double? tipAmount,
    String? couponCode,
  }) =>
      Input$UpdateOrderInput._({
        if (waitMinutes != null) r'waitMinutes': waitMinutes,
        if (status != null) r'status': status,
        if (tipAmount != null) r'tipAmount': tipAmount,
        if (couponCode != null) r'couponCode': couponCode,
      });

  Input$UpdateOrderInput._(this._$data);

  factory Input$UpdateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('waitMinutes')) {
      final l$waitMinutes = data['waitMinutes'];
      result$data['waitMinutes'] = (l$waitMinutes as int?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('tipAmount')) {
      final l$tipAmount = data['tipAmount'];
      result$data['tipAmount'] = (l$tipAmount as num?)?.toDouble();
    }
    if (data.containsKey('couponCode')) {
      final l$couponCode = data['couponCode'];
      result$data['couponCode'] = (l$couponCode as String?);
    }
    return Input$UpdateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get waitMinutes => (_$data['waitMinutes'] as int?);

  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);

  double? get tipAmount => (_$data['tipAmount'] as double?);

  String? get couponCode => (_$data['couponCode'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('waitMinutes')) {
      final l$waitMinutes = waitMinutes;
      result$data['waitMinutes'] = l$waitMinutes;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('tipAmount')) {
      final l$tipAmount = tipAmount;
      result$data['tipAmount'] = l$tipAmount;
    }
    if (_$data.containsKey('couponCode')) {
      final l$couponCode = couponCode;
      result$data['couponCode'] = l$couponCode;
    }
    return result$data;
  }

  CopyWith$Input$UpdateOrderInput<Input$UpdateOrderInput> get copyWith =>
      CopyWith$Input$UpdateOrderInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOrderInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$waitMinutes = waitMinutes;
    final lOther$waitMinutes = other.waitMinutes;
    if (_$data.containsKey('waitMinutes') !=
        other._$data.containsKey('waitMinutes')) {
      return false;
    }
    if (l$waitMinutes != lOther$waitMinutes) {
      return false;
    }
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$tipAmount = tipAmount;
    final lOther$tipAmount = other.tipAmount;
    if (_$data.containsKey('tipAmount') !=
        other._$data.containsKey('tipAmount')) {
      return false;
    }
    if (l$tipAmount != lOther$tipAmount) {
      return false;
    }
    final l$couponCode = couponCode;
    final lOther$couponCode = other.couponCode;
    if (_$data.containsKey('couponCode') !=
        other._$data.containsKey('couponCode')) {
      return false;
    }
    if (l$couponCode != lOther$couponCode) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$waitMinutes = waitMinutes;
    final l$status = status;
    final l$tipAmount = tipAmount;
    final l$couponCode = couponCode;
    return Object.hashAll([
      _$data.containsKey('waitMinutes') ? l$waitMinutes : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('tipAmount') ? l$tipAmount : const {},
      _$data.containsKey('couponCode') ? l$couponCode : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateOrderInput<TRes> {
  factory CopyWith$Input$UpdateOrderInput(
    Input$UpdateOrderInput instance,
    TRes Function(Input$UpdateOrderInput) then,
  ) = _CopyWithImpl$Input$UpdateOrderInput;

  factory CopyWith$Input$UpdateOrderInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOrderInput;

  TRes call({
    int? waitMinutes,
    Enum$OrderStatus? status,
    double? tipAmount,
    String? couponCode,
  });
}

class _CopyWithImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithImpl$Input$UpdateOrderInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOrderInput _instance;

  final TRes Function(Input$UpdateOrderInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? waitMinutes = _undefined,
    Object? status = _undefined,
    Object? tipAmount = _undefined,
    Object? couponCode = _undefined,
  }) =>
      _then(Input$UpdateOrderInput._({
        ..._instance._$data,
        if (waitMinutes != _undefined) 'waitMinutes': (waitMinutes as int?),
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (tipAmount != _undefined) 'tipAmount': (tipAmount as double?),
        if (couponCode != _undefined) 'couponCode': (couponCode as String?),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrderInput(this._res);

  TRes _res;

  call({
    int? waitMinutes,
    Enum$OrderStatus? status,
    double? tipAmount,
    String? couponCode,
  }) =>
      _res;
}

class Input$CreateOneRiderAddressInput {
  factory Input$CreateOneRiderAddressInput(
          {required Input$CreateRiderAddressInput riderAddress}) =>
      Input$CreateOneRiderAddressInput._({
        r'riderAddress': riderAddress,
      });

  Input$CreateOneRiderAddressInput._(this._$data);

  factory Input$CreateOneRiderAddressInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$riderAddress = data['riderAddress'];
    result$data['riderAddress'] = Input$CreateRiderAddressInput.fromJson(
        (l$riderAddress as Map<String, dynamic>));
    return Input$CreateOneRiderAddressInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreateRiderAddressInput get riderAddress =>
      (_$data['riderAddress'] as Input$CreateRiderAddressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$riderAddress = riderAddress;
    result$data['riderAddress'] = l$riderAddress.toJson();
    return result$data;
  }

  CopyWith$Input$CreateOneRiderAddressInput<Input$CreateOneRiderAddressInput>
      get copyWith => CopyWith$Input$CreateOneRiderAddressInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOneRiderAddressInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$riderAddress = riderAddress;
    final lOther$riderAddress = other.riderAddress;
    if (l$riderAddress != lOther$riderAddress) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$riderAddress = riderAddress;
    return Object.hashAll([l$riderAddress]);
  }
}

abstract class CopyWith$Input$CreateOneRiderAddressInput<TRes> {
  factory CopyWith$Input$CreateOneRiderAddressInput(
    Input$CreateOneRiderAddressInput instance,
    TRes Function(Input$CreateOneRiderAddressInput) then,
  ) = _CopyWithImpl$Input$CreateOneRiderAddressInput;

  factory CopyWith$Input$CreateOneRiderAddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOneRiderAddressInput;

  TRes call({Input$CreateRiderAddressInput? riderAddress});
  CopyWith$Input$CreateRiderAddressInput<TRes> get riderAddress;
}

class _CopyWithImpl$Input$CreateOneRiderAddressInput<TRes>
    implements CopyWith$Input$CreateOneRiderAddressInput<TRes> {
  _CopyWithImpl$Input$CreateOneRiderAddressInput(
    this._instance,
    this._then,
  );

  final Input$CreateOneRiderAddressInput _instance;

  final TRes Function(Input$CreateOneRiderAddressInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? riderAddress = _undefined}) =>
      _then(Input$CreateOneRiderAddressInput._({
        ..._instance._$data,
        if (riderAddress != _undefined && riderAddress != null)
          'riderAddress': (riderAddress as Input$CreateRiderAddressInput),
      }));

  CopyWith$Input$CreateRiderAddressInput<TRes> get riderAddress {
    final local$riderAddress = _instance.riderAddress;
    return CopyWith$Input$CreateRiderAddressInput(
        local$riderAddress, (e) => call(riderAddress: e));
  }
}

class _CopyWithStubImpl$Input$CreateOneRiderAddressInput<TRes>
    implements CopyWith$Input$CreateOneRiderAddressInput<TRes> {
  _CopyWithStubImpl$Input$CreateOneRiderAddressInput(this._res);

  TRes _res;

  call({Input$CreateRiderAddressInput? riderAddress}) => _res;

  CopyWith$Input$CreateRiderAddressInput<TRes> get riderAddress =>
      CopyWith$Input$CreateRiderAddressInput.stub(_res);
}

class Input$CreateRiderAddressInput {
  factory Input$CreateRiderAddressInput({
    required String title,
    required String details,
    required Input$PointInput location,
    required Enum$RiderAddressType type,
    required Input$PhoneNumberInput phoneNumber,
  }) =>
      Input$CreateRiderAddressInput._({
        r'title': title,
        r'details': details,
        r'location': location,
        r'type': type,
        r'phoneNumber': phoneNumber,
      });

  Input$CreateRiderAddressInput._(this._$data);

  factory Input$CreateRiderAddressInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$title = data['title'];
    result$data['title'] = (l$title as String);
    final l$details = data['details'];
    result$data['details'] = (l$details as String);
    final l$location = data['location'];
    result$data['location'] =
        Input$PointInput.fromJson((l$location as Map<String, dynamic>));
    final l$type = data['type'];
    result$data['type'] = fromJson$Enum$RiderAddressType((l$type as String));
    final l$phoneNumber = data['phoneNumber'];
    result$data['phoneNumber'] = Input$PhoneNumberInput.fromJson(
        (l$phoneNumber as Map<String, dynamic>));
    return Input$CreateRiderAddressInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get title => (_$data['title'] as String);

  String get details => (_$data['details'] as String);

  Input$PointInput get location => (_$data['location'] as Input$PointInput);

  Enum$RiderAddressType get type => (_$data['type'] as Enum$RiderAddressType);

  Input$PhoneNumberInput get phoneNumber =>
      (_$data['phoneNumber'] as Input$PhoneNumberInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$title = title;
    result$data['title'] = l$title;
    final l$details = details;
    result$data['details'] = l$details;
    final l$location = location;
    result$data['location'] = l$location.toJson();
    final l$type = type;
    result$data['type'] = toJson$Enum$RiderAddressType(l$type);
    final l$phoneNumber = phoneNumber;
    result$data['phoneNumber'] = l$phoneNumber.toJson();
    return result$data;
  }

  CopyWith$Input$CreateRiderAddressInput<Input$CreateRiderAddressInput>
      get copyWith => CopyWith$Input$CreateRiderAddressInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateRiderAddressInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$details = details;
    final lOther$details = other.details;
    if (l$details != lOther$details) {
      return false;
    }
    final l$location = location;
    final lOther$location = other.location;
    if (l$location != lOther$location) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (l$type != lOther$type) {
      return false;
    }
    final l$phoneNumber = phoneNumber;
    final lOther$phoneNumber = other.phoneNumber;
    if (l$phoneNumber != lOther$phoneNumber) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$details = details;
    final l$location = location;
    final l$type = type;
    final l$phoneNumber = phoneNumber;
    return Object.hashAll([
      l$title,
      l$details,
      l$location,
      l$type,
      l$phoneNumber,
    ]);
  }
}

abstract class CopyWith$Input$CreateRiderAddressInput<TRes> {
  factory CopyWith$Input$CreateRiderAddressInput(
    Input$CreateRiderAddressInput instance,
    TRes Function(Input$CreateRiderAddressInput) then,
  ) = _CopyWithImpl$Input$CreateRiderAddressInput;

  factory CopyWith$Input$CreateRiderAddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateRiderAddressInput;

  TRes call({
    String? title,
    String? details,
    Input$PointInput? location,
    Enum$RiderAddressType? type,
    Input$PhoneNumberInput? phoneNumber,
  });
  CopyWith$Input$PointInput<TRes> get location;
  CopyWith$Input$PhoneNumberInput<TRes> get phoneNumber;
}

class _CopyWithImpl$Input$CreateRiderAddressInput<TRes>
    implements CopyWith$Input$CreateRiderAddressInput<TRes> {
  _CopyWithImpl$Input$CreateRiderAddressInput(
    this._instance,
    this._then,
  );

  final Input$CreateRiderAddressInput _instance;

  final TRes Function(Input$CreateRiderAddressInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? details = _undefined,
    Object? location = _undefined,
    Object? type = _undefined,
    Object? phoneNumber = _undefined,
  }) =>
      _then(Input$CreateRiderAddressInput._({
        ..._instance._$data,
        if (title != _undefined && title != null) 'title': (title as String),
        if (details != _undefined && details != null)
          'details': (details as String),
        if (location != _undefined && location != null)
          'location': (location as Input$PointInput),
        if (type != _undefined && type != null)
          'type': (type as Enum$RiderAddressType),
        if (phoneNumber != _undefined && phoneNumber != null)
          'phoneNumber': (phoneNumber as Input$PhoneNumberInput),
      }));

  CopyWith$Input$PointInput<TRes> get location {
    final local$location = _instance.location;
    return CopyWith$Input$PointInput(local$location, (e) => call(location: e));
  }

  CopyWith$Input$PhoneNumberInput<TRes> get phoneNumber {
    final local$phoneNumber = _instance.phoneNumber;
    return CopyWith$Input$PhoneNumberInput(
        local$phoneNumber, (e) => call(phoneNumber: e));
  }
}

class _CopyWithStubImpl$Input$CreateRiderAddressInput<TRes>
    implements CopyWith$Input$CreateRiderAddressInput<TRes> {
  _CopyWithStubImpl$Input$CreateRiderAddressInput(this._res);

  TRes _res;

  call({
    String? title,
    String? details,
    Input$PointInput? location,
    Enum$RiderAddressType? type,
    Input$PhoneNumberInput? phoneNumber,
  }) =>
      _res;

  CopyWith$Input$PointInput<TRes> get location =>
      CopyWith$Input$PointInput.stub(_res);

  CopyWith$Input$PhoneNumberInput<TRes> get phoneNumber =>
      CopyWith$Input$PhoneNumberInput.stub(_res);
}

class Input$UpdateOneRiderAddressInput {
  factory Input$UpdateOneRiderAddressInput({
    required String id,
    required Input$CreateRiderAddressInput update,
  }) =>
      Input$UpdateOneRiderAddressInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOneRiderAddressInput._(this._$data);

  factory Input$UpdateOneRiderAddressInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] = Input$CreateRiderAddressInput.fromJson(
        (l$update as Map<String, dynamic>));
    return Input$UpdateOneRiderAddressInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$CreateRiderAddressInput get update =>
      (_$data['update'] as Input$CreateRiderAddressInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOneRiderAddressInput<Input$UpdateOneRiderAddressInput>
      get copyWith => CopyWith$Input$UpdateOneRiderAddressInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOneRiderAddressInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$update = update;
    final lOther$update = other.update;
    if (l$update != lOther$update) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$update = update;
    return Object.hashAll([
      l$id,
      l$update,
    ]);
  }
}

abstract class CopyWith$Input$UpdateOneRiderAddressInput<TRes> {
  factory CopyWith$Input$UpdateOneRiderAddressInput(
    Input$UpdateOneRiderAddressInput instance,
    TRes Function(Input$UpdateOneRiderAddressInput) then,
  ) = _CopyWithImpl$Input$UpdateOneRiderAddressInput;

  factory CopyWith$Input$UpdateOneRiderAddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOneRiderAddressInput;

  TRes call({
    String? id,
    Input$CreateRiderAddressInput? update,
  });
  CopyWith$Input$CreateRiderAddressInput<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOneRiderAddressInput<TRes>
    implements CopyWith$Input$UpdateOneRiderAddressInput<TRes> {
  _CopyWithImpl$Input$UpdateOneRiderAddressInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOneRiderAddressInput _instance;

  final TRes Function(Input$UpdateOneRiderAddressInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOneRiderAddressInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$CreateRiderAddressInput),
      }));

  CopyWith$Input$CreateRiderAddressInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$CreateRiderAddressInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOneRiderAddressInput<TRes>
    implements CopyWith$Input$UpdateOneRiderAddressInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOneRiderAddressInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$CreateRiderAddressInput? update,
  }) =>
      _res;

  CopyWith$Input$CreateRiderAddressInput<TRes> get update =>
      CopyWith$Input$CreateRiderAddressInput.stub(_res);
}

class Input$DeleteOneRiderAddressInput {
  factory Input$DeleteOneRiderAddressInput({required String id}) =>
      Input$DeleteOneRiderAddressInput._({
        r'id': id,
      });

  Input$DeleteOneRiderAddressInput._(this._$data);

  factory Input$DeleteOneRiderAddressInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$DeleteOneRiderAddressInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$DeleteOneRiderAddressInput<Input$DeleteOneRiderAddressInput>
      get copyWith => CopyWith$Input$DeleteOneRiderAddressInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DeleteOneRiderAddressInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Input$DeleteOneRiderAddressInput<TRes> {
  factory CopyWith$Input$DeleteOneRiderAddressInput(
    Input$DeleteOneRiderAddressInput instance,
    TRes Function(Input$DeleteOneRiderAddressInput) then,
  ) = _CopyWithImpl$Input$DeleteOneRiderAddressInput;

  factory CopyWith$Input$DeleteOneRiderAddressInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteOneRiderAddressInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$DeleteOneRiderAddressInput<TRes>
    implements CopyWith$Input$DeleteOneRiderAddressInput<TRes> {
  _CopyWithImpl$Input$DeleteOneRiderAddressInput(
    this._instance,
    this._then,
  );

  final Input$DeleteOneRiderAddressInput _instance;

  final TRes Function(Input$DeleteOneRiderAddressInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$DeleteOneRiderAddressInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteOneRiderAddressInput<TRes>
    implements CopyWith$Input$DeleteOneRiderAddressInput<TRes> {
  _CopyWithStubImpl$Input$DeleteOneRiderAddressInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$CreateOneComplaintInput {
  factory Input$CreateOneComplaintInput(
          {required Input$ComplaintInput complaint}) =>
      Input$CreateOneComplaintInput._({
        r'complaint': complaint,
      });

  Input$CreateOneComplaintInput._(this._$data);

  factory Input$CreateOneComplaintInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$complaint = data['complaint'];
    result$data['complaint'] =
        Input$ComplaintInput.fromJson((l$complaint as Map<String, dynamic>));
    return Input$CreateOneComplaintInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$ComplaintInput get complaint =>
      (_$data['complaint'] as Input$ComplaintInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$complaint = complaint;
    result$data['complaint'] = l$complaint.toJson();
    return result$data;
  }

  CopyWith$Input$CreateOneComplaintInput<Input$CreateOneComplaintInput>
      get copyWith => CopyWith$Input$CreateOneComplaintInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOneComplaintInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$complaint = complaint;
    final lOther$complaint = other.complaint;
    if (l$complaint != lOther$complaint) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$complaint = complaint;
    return Object.hashAll([l$complaint]);
  }
}

abstract class CopyWith$Input$CreateOneComplaintInput<TRes> {
  factory CopyWith$Input$CreateOneComplaintInput(
    Input$CreateOneComplaintInput instance,
    TRes Function(Input$CreateOneComplaintInput) then,
  ) = _CopyWithImpl$Input$CreateOneComplaintInput;

  factory CopyWith$Input$CreateOneComplaintInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOneComplaintInput;

  TRes call({Input$ComplaintInput? complaint});
  CopyWith$Input$ComplaintInput<TRes> get complaint;
}

class _CopyWithImpl$Input$CreateOneComplaintInput<TRes>
    implements CopyWith$Input$CreateOneComplaintInput<TRes> {
  _CopyWithImpl$Input$CreateOneComplaintInput(
    this._instance,
    this._then,
  );

  final Input$CreateOneComplaintInput _instance;

  final TRes Function(Input$CreateOneComplaintInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? complaint = _undefined}) =>
      _then(Input$CreateOneComplaintInput._({
        ..._instance._$data,
        if (complaint != _undefined && complaint != null)
          'complaint': (complaint as Input$ComplaintInput),
      }));

  CopyWith$Input$ComplaintInput<TRes> get complaint {
    final local$complaint = _instance.complaint;
    return CopyWith$Input$ComplaintInput(
        local$complaint, (e) => call(complaint: e));
  }
}

class _CopyWithStubImpl$Input$CreateOneComplaintInput<TRes>
    implements CopyWith$Input$CreateOneComplaintInput<TRes> {
  _CopyWithStubImpl$Input$CreateOneComplaintInput(this._res);

  TRes _res;

  call({Input$ComplaintInput? complaint}) => _res;

  CopyWith$Input$ComplaintInput<TRes> get complaint =>
      CopyWith$Input$ComplaintInput.stub(_res);
}

class Input$ComplaintInput {
  factory Input$ComplaintInput({
    required String requestId,
    required String subject,
    String? content,
    bool? requestedByDriver,
  }) =>
      Input$ComplaintInput._({
        r'requestId': requestId,
        r'subject': subject,
        if (content != null) r'content': content,
        if (requestedByDriver != null) r'requestedByDriver': requestedByDriver,
      });

  Input$ComplaintInput._(this._$data);

  factory Input$ComplaintInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$subject = data['subject'];
    result$data['subject'] = (l$subject as String);
    if (data.containsKey('content')) {
      final l$content = data['content'];
      result$data['content'] = (l$content as String?);
    }
    if (data.containsKey('requestedByDriver')) {
      final l$requestedByDriver = data['requestedByDriver'];
      result$data['requestedByDriver'] = (l$requestedByDriver as bool?);
    }
    return Input$ComplaintInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);

  String get subject => (_$data['subject'] as String);

  String? get content => (_$data['content'] as String?);

  bool? get requestedByDriver => (_$data['requestedByDriver'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$subject = subject;
    result$data['subject'] = l$subject;
    if (_$data.containsKey('content')) {
      final l$content = content;
      result$data['content'] = l$content;
    }
    if (_$data.containsKey('requestedByDriver')) {
      final l$requestedByDriver = requestedByDriver;
      result$data['requestedByDriver'] = l$requestedByDriver;
    }
    return result$data;
  }

  CopyWith$Input$ComplaintInput<Input$ComplaintInput> get copyWith =>
      CopyWith$Input$ComplaintInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ComplaintInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$subject = subject;
    final lOther$subject = other.subject;
    if (l$subject != lOther$subject) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (_$data.containsKey('content') != other._$data.containsKey('content')) {
      return false;
    }
    if (l$content != lOther$content) {
      return false;
    }
    final l$requestedByDriver = requestedByDriver;
    final lOther$requestedByDriver = other.requestedByDriver;
    if (_$data.containsKey('requestedByDriver') !=
        other._$data.containsKey('requestedByDriver')) {
      return false;
    }
    if (l$requestedByDriver != lOther$requestedByDriver) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$requestId = requestId;
    final l$subject = subject;
    final l$content = content;
    final l$requestedByDriver = requestedByDriver;
    return Object.hashAll([
      l$requestId,
      l$subject,
      _$data.containsKey('content') ? l$content : const {},
      _$data.containsKey('requestedByDriver') ? l$requestedByDriver : const {},
    ]);
  }
}

abstract class CopyWith$Input$ComplaintInput<TRes> {
  factory CopyWith$Input$ComplaintInput(
    Input$ComplaintInput instance,
    TRes Function(Input$ComplaintInput) then,
  ) = _CopyWithImpl$Input$ComplaintInput;

  factory CopyWith$Input$ComplaintInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ComplaintInput;

  TRes call({
    String? requestId,
    String? subject,
    String? content,
    bool? requestedByDriver,
  });
}

class _CopyWithImpl$Input$ComplaintInput<TRes>
    implements CopyWith$Input$ComplaintInput<TRes> {
  _CopyWithImpl$Input$ComplaintInput(
    this._instance,
    this._then,
  );

  final Input$ComplaintInput _instance;

  final TRes Function(Input$ComplaintInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestId = _undefined,
    Object? subject = _undefined,
    Object? content = _undefined,
    Object? requestedByDriver = _undefined,
  }) =>
      _then(Input$ComplaintInput._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (subject != _undefined && subject != null)
          'subject': (subject as String),
        if (content != _undefined) 'content': (content as String?),
        if (requestedByDriver != _undefined)
          'requestedByDriver': (requestedByDriver as bool?),
      }));
}

class _CopyWithStubImpl$Input$ComplaintInput<TRes>
    implements CopyWith$Input$ComplaintInput<TRes> {
  _CopyWithStubImpl$Input$ComplaintInput(this._res);

  TRes _res;

  call({
    String? requestId,
    String? subject,
    String? content,
    bool? requestedByDriver,
  }) =>
      _res;
}

class Input$CreateOneOrderMessageInput {
  factory Input$CreateOneOrderMessageInput(
          {required Input$OrderMessageInput orderMessage}) =>
      Input$CreateOneOrderMessageInput._({
        r'orderMessage': orderMessage,
      });

  Input$CreateOneOrderMessageInput._(this._$data);

  factory Input$CreateOneOrderMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$orderMessage = data['orderMessage'];
    result$data['orderMessage'] = Input$OrderMessageInput.fromJson(
        (l$orderMessage as Map<String, dynamic>));
    return Input$CreateOneOrderMessageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$OrderMessageInput get orderMessage =>
      (_$data['orderMessage'] as Input$OrderMessageInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$orderMessage = orderMessage;
    result$data['orderMessage'] = l$orderMessage.toJson();
    return result$data;
  }

  CopyWith$Input$CreateOneOrderMessageInput<Input$CreateOneOrderMessageInput>
      get copyWith => CopyWith$Input$CreateOneOrderMessageInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOneOrderMessageInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$orderMessage = orderMessage;
    final lOther$orderMessage = other.orderMessage;
    if (l$orderMessage != lOther$orderMessage) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$orderMessage = orderMessage;
    return Object.hashAll([l$orderMessage]);
  }
}

abstract class CopyWith$Input$CreateOneOrderMessageInput<TRes> {
  factory CopyWith$Input$CreateOneOrderMessageInput(
    Input$CreateOneOrderMessageInput instance,
    TRes Function(Input$CreateOneOrderMessageInput) then,
  ) = _CopyWithImpl$Input$CreateOneOrderMessageInput;

  factory CopyWith$Input$CreateOneOrderMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOneOrderMessageInput;

  TRes call({Input$OrderMessageInput? orderMessage});
  CopyWith$Input$OrderMessageInput<TRes> get orderMessage;
}

class _CopyWithImpl$Input$CreateOneOrderMessageInput<TRes>
    implements CopyWith$Input$CreateOneOrderMessageInput<TRes> {
  _CopyWithImpl$Input$CreateOneOrderMessageInput(
    this._instance,
    this._then,
  );

  final Input$CreateOneOrderMessageInput _instance;

  final TRes Function(Input$CreateOneOrderMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? orderMessage = _undefined}) =>
      _then(Input$CreateOneOrderMessageInput._({
        ..._instance._$data,
        if (orderMessage != _undefined && orderMessage != null)
          'orderMessage': (orderMessage as Input$OrderMessageInput),
      }));

  CopyWith$Input$OrderMessageInput<TRes> get orderMessage {
    final local$orderMessage = _instance.orderMessage;
    return CopyWith$Input$OrderMessageInput(
        local$orderMessage, (e) => call(orderMessage: e));
  }
}

class _CopyWithStubImpl$Input$CreateOneOrderMessageInput<TRes>
    implements CopyWith$Input$CreateOneOrderMessageInput<TRes> {
  _CopyWithStubImpl$Input$CreateOneOrderMessageInput(this._res);

  TRes _res;

  call({Input$OrderMessageInput? orderMessage}) => _res;

  CopyWith$Input$OrderMessageInput<TRes> get orderMessage =>
      CopyWith$Input$OrderMessageInput.stub(_res);
}

class Input$OrderMessageInput {
  factory Input$OrderMessageInput({
    required String requestId,
    required String content,
  }) =>
      Input$OrderMessageInput._({
        r'requestId': requestId,
        r'content': content,
      });

  Input$OrderMessageInput._(this._$data);

  factory Input$OrderMessageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$requestId = data['requestId'];
    result$data['requestId'] = (l$requestId as String);
    final l$content = data['content'];
    result$data['content'] = (l$content as String);
    return Input$OrderMessageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get requestId => (_$data['requestId'] as String);

  String get content => (_$data['content'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$requestId = requestId;
    result$data['requestId'] = l$requestId;
    final l$content = content;
    result$data['content'] = l$content;
    return result$data;
  }

  CopyWith$Input$OrderMessageInput<Input$OrderMessageInput> get copyWith =>
      CopyWith$Input$OrderMessageInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderMessageInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$requestId = requestId;
    final lOther$requestId = other.requestId;
    if (l$requestId != lOther$requestId) {
      return false;
    }
    final l$content = content;
    final lOther$content = other.content;
    if (l$content != lOther$content) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$requestId = requestId;
    final l$content = content;
    return Object.hashAll([
      l$requestId,
      l$content,
    ]);
  }
}

abstract class CopyWith$Input$OrderMessageInput<TRes> {
  factory CopyWith$Input$OrderMessageInput(
    Input$OrderMessageInput instance,
    TRes Function(Input$OrderMessageInput) then,
  ) = _CopyWithImpl$Input$OrderMessageInput;

  factory CopyWith$Input$OrderMessageInput.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageInput;

  TRes call({
    String? requestId,
    String? content,
  });
}

class _CopyWithImpl$Input$OrderMessageInput<TRes>
    implements CopyWith$Input$OrderMessageInput<TRes> {
  _CopyWithImpl$Input$OrderMessageInput(
    this._instance,
    this._then,
  );

  final Input$OrderMessageInput _instance;

  final TRes Function(Input$OrderMessageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? requestId = _undefined,
    Object? content = _undefined,
  }) =>
      _then(Input$OrderMessageInput._({
        ..._instance._$data,
        if (requestId != _undefined && requestId != null)
          'requestId': (requestId as String),
        if (content != _undefined && content != null)
          'content': (content as String),
      }));
}

class _CopyWithStubImpl$Input$OrderMessageInput<TRes>
    implements CopyWith$Input$OrderMessageInput<TRes> {
  _CopyWithStubImpl$Input$OrderMessageInput(this._res);

  TRes _res;

  call({
    String? requestId,
    String? content,
  }) =>
      _res;
}

enum Enum$RiderAddressType {
  Home,
  Work,
  Partner,
  Gym,
  Parent,
  Cafe,
  Park,
  Other,
  $unknown;

  factory Enum$RiderAddressType.fromJson(String value) =>
      fromJson$Enum$RiderAddressType(value);

  String toJson() => toJson$Enum$RiderAddressType(this);
}

String toJson$Enum$RiderAddressType(Enum$RiderAddressType e) {
  switch (e) {
    case Enum$RiderAddressType.Home:
      return r'Home';
    case Enum$RiderAddressType.Work:
      return r'Work';
    case Enum$RiderAddressType.Partner:
      return r'Partner';
    case Enum$RiderAddressType.Gym:
      return r'Gym';
    case Enum$RiderAddressType.Parent:
      return r'Parent';
    case Enum$RiderAddressType.Cafe:
      return r'Cafe';
    case Enum$RiderAddressType.Park:
      return r'Park';
    case Enum$RiderAddressType.Other:
      return r'Other';
    case Enum$RiderAddressType.$unknown:
      return r'$unknown';
  }
}

Enum$RiderAddressType fromJson$Enum$RiderAddressType(String value) {
  switch (value) {
    case r'Home':
      return Enum$RiderAddressType.Home;
    case r'Work':
      return Enum$RiderAddressType.Work;
    case r'Partner':
      return Enum$RiderAddressType.Partner;
    case r'Gym':
      return Enum$RiderAddressType.Gym;
    case r'Parent':
      return Enum$RiderAddressType.Parent;
    case r'Cafe':
      return Enum$RiderAddressType.Cafe;
    case r'Park':
      return Enum$RiderAddressType.Park;
    case r'Other':
      return Enum$RiderAddressType.Other;
    default:
      return Enum$RiderAddressType.$unknown;
  }
}

enum Enum$MessageStatus {
  Sent,
  Delivered,
  Seen,
  $unknown;

  factory Enum$MessageStatus.fromJson(String value) =>
      fromJson$Enum$MessageStatus(value);

  String toJson() => toJson$Enum$MessageStatus(this);
}

String toJson$Enum$MessageStatus(Enum$MessageStatus e) {
  switch (e) {
    case Enum$MessageStatus.Sent:
      return r'Sent';
    case Enum$MessageStatus.Delivered:
      return r'Delivered';
    case Enum$MessageStatus.Seen:
      return r'Seen';
    case Enum$MessageStatus.$unknown:
      return r'$unknown';
  }
}

Enum$MessageStatus fromJson$Enum$MessageStatus(String value) {
  switch (value) {
    case r'Sent':
      return Enum$MessageStatus.Sent;
    case r'Delivered':
      return Enum$MessageStatus.Delivered;
    case r'Seen':
      return Enum$MessageStatus.Seen;
    default:
      return Enum$MessageStatus.$unknown;
  }
}

enum Enum$ServiceOptionType {
  Free,
  Paid,
  TwoWay,
  $unknown;

  factory Enum$ServiceOptionType.fromJson(String value) =>
      fromJson$Enum$ServiceOptionType(value);

  String toJson() => toJson$Enum$ServiceOptionType(this);
}

String toJson$Enum$ServiceOptionType(Enum$ServiceOptionType e) {
  switch (e) {
    case Enum$ServiceOptionType.Free:
      return r'Free';
    case Enum$ServiceOptionType.Paid:
      return r'Paid';
    case Enum$ServiceOptionType.TwoWay:
      return r'TwoWay';
    case Enum$ServiceOptionType.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceOptionType fromJson$Enum$ServiceOptionType(String value) {
  switch (value) {
    case r'Free':
      return Enum$ServiceOptionType.Free;
    case r'Paid':
      return Enum$ServiceOptionType.Paid;
    case r'TwoWay':
      return Enum$ServiceOptionType.TwoWay;
    default:
      return Enum$ServiceOptionType.$unknown;
  }
}

enum Enum$ServiceOptionIcon {
  Pet,
  TwoWay,
  Luggage,
  PackageDelivery,
  Shopping,
  Custom1,
  Custom2,
  Custom3,
  Custom4,
  Custom5,
  $unknown;

  factory Enum$ServiceOptionIcon.fromJson(String value) =>
      fromJson$Enum$ServiceOptionIcon(value);

  String toJson() => toJson$Enum$ServiceOptionIcon(this);
}

String toJson$Enum$ServiceOptionIcon(Enum$ServiceOptionIcon e) {
  switch (e) {
    case Enum$ServiceOptionIcon.Pet:
      return r'Pet';
    case Enum$ServiceOptionIcon.TwoWay:
      return r'TwoWay';
    case Enum$ServiceOptionIcon.Luggage:
      return r'Luggage';
    case Enum$ServiceOptionIcon.PackageDelivery:
      return r'PackageDelivery';
    case Enum$ServiceOptionIcon.Shopping:
      return r'Shopping';
    case Enum$ServiceOptionIcon.Custom1:
      return r'Custom1';
    case Enum$ServiceOptionIcon.Custom2:
      return r'Custom2';
    case Enum$ServiceOptionIcon.Custom3:
      return r'Custom3';
    case Enum$ServiceOptionIcon.Custom4:
      return r'Custom4';
    case Enum$ServiceOptionIcon.Custom5:
      return r'Custom5';
    case Enum$ServiceOptionIcon.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceOptionIcon fromJson$Enum$ServiceOptionIcon(String value) {
  switch (value) {
    case r'Pet':
      return Enum$ServiceOptionIcon.Pet;
    case r'TwoWay':
      return Enum$ServiceOptionIcon.TwoWay;
    case r'Luggage':
      return Enum$ServiceOptionIcon.Luggage;
    case r'PackageDelivery':
      return Enum$ServiceOptionIcon.PackageDelivery;
    case r'Shopping':
      return Enum$ServiceOptionIcon.Shopping;
    case r'Custom1':
      return Enum$ServiceOptionIcon.Custom1;
    case r'Custom2':
      return Enum$ServiceOptionIcon.Custom2;
    case r'Custom3':
      return Enum$ServiceOptionIcon.Custom3;
    case r'Custom4':
      return Enum$ServiceOptionIcon.Custom4;
    case r'Custom5':
      return Enum$ServiceOptionIcon.Custom5;
    default:
      return Enum$ServiceOptionIcon.$unknown;
  }
}

enum Enum$ServicePaymentMethod {
  CashCredit,
  OnlyCredit,
  OnlyCash,
  $unknown;

  factory Enum$ServicePaymentMethod.fromJson(String value) =>
      fromJson$Enum$ServicePaymentMethod(value);

  String toJson() => toJson$Enum$ServicePaymentMethod(this);
}

String toJson$Enum$ServicePaymentMethod(Enum$ServicePaymentMethod e) {
  switch (e) {
    case Enum$ServicePaymentMethod.CashCredit:
      return r'CashCredit';
    case Enum$ServicePaymentMethod.OnlyCredit:
      return r'OnlyCredit';
    case Enum$ServicePaymentMethod.OnlyCash:
      return r'OnlyCash';
    case Enum$ServicePaymentMethod.$unknown:
      return r'$unknown';
  }
}

Enum$ServicePaymentMethod fromJson$Enum$ServicePaymentMethod(String value) {
  switch (value) {
    case r'CashCredit':
      return Enum$ServicePaymentMethod.CashCredit;
    case r'OnlyCredit':
      return Enum$ServicePaymentMethod.OnlyCredit;
    case r'OnlyCash':
      return Enum$ServicePaymentMethod.OnlyCash;
    default:
      return Enum$ServicePaymentMethod.$unknown;
  }
}

enum Enum$ServiceOptionSortFields {
  id,
  $unknown;

  factory Enum$ServiceOptionSortFields.fromJson(String value) =>
      fromJson$Enum$ServiceOptionSortFields(value);

  String toJson() => toJson$Enum$ServiceOptionSortFields(this);
}

String toJson$Enum$ServiceOptionSortFields(Enum$ServiceOptionSortFields e) {
  switch (e) {
    case Enum$ServiceOptionSortFields.id:
      return r'id';
    case Enum$ServiceOptionSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceOptionSortFields fromJson$Enum$ServiceOptionSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$ServiceOptionSortFields.id;
    default:
      return Enum$ServiceOptionSortFields.$unknown;
  }
}

enum Enum$SortDirection {
  ASC,
  DESC,
  $unknown;

  factory Enum$SortDirection.fromJson(String value) =>
      fromJson$Enum$SortDirection(value);

  String toJson() => toJson$Enum$SortDirection(this);
}

String toJson$Enum$SortDirection(Enum$SortDirection e) {
  switch (e) {
    case Enum$SortDirection.ASC:
      return r'ASC';
    case Enum$SortDirection.DESC:
      return r'DESC';
    case Enum$SortDirection.$unknown:
      return r'$unknown';
  }
}

Enum$SortDirection fromJson$Enum$SortDirection(String value) {
  switch (value) {
    case r'ASC':
      return Enum$SortDirection.ASC;
    case r'DESC':
      return Enum$SortDirection.DESC;
    default:
      return Enum$SortDirection.$unknown;
  }
}

enum Enum$SortNulls {
  NULLS_FIRST,
  NULLS_LAST,
  $unknown;

  factory Enum$SortNulls.fromJson(String value) =>
      fromJson$Enum$SortNulls(value);

  String toJson() => toJson$Enum$SortNulls(this);
}

String toJson$Enum$SortNulls(Enum$SortNulls e) {
  switch (e) {
    case Enum$SortNulls.NULLS_FIRST:
      return r'NULLS_FIRST';
    case Enum$SortNulls.NULLS_LAST:
      return r'NULLS_LAST';
    case Enum$SortNulls.$unknown:
      return r'$unknown';
  }
}

Enum$SortNulls fromJson$Enum$SortNulls(String value) {
  switch (value) {
    case r'NULLS_FIRST':
      return Enum$SortNulls.NULLS_FIRST;
    case r'NULLS_LAST':
      return Enum$SortNulls.NULLS_LAST;
    default:
      return Enum$SortNulls.$unknown;
  }
}

enum Enum$GatewayLinkMethod {
  none,
  redirect,
  manual,
  $unknown;

  factory Enum$GatewayLinkMethod.fromJson(String value) =>
      fromJson$Enum$GatewayLinkMethod(value);

  String toJson() => toJson$Enum$GatewayLinkMethod(this);
}

String toJson$Enum$GatewayLinkMethod(Enum$GatewayLinkMethod e) {
  switch (e) {
    case Enum$GatewayLinkMethod.none:
      return r'none';
    case Enum$GatewayLinkMethod.redirect:
      return r'redirect';
    case Enum$GatewayLinkMethod.manual:
      return r'manual';
    case Enum$GatewayLinkMethod.$unknown:
      return r'$unknown';
  }
}

Enum$GatewayLinkMethod fromJson$Enum$GatewayLinkMethod(String value) {
  switch (value) {
    case r'none':
      return Enum$GatewayLinkMethod.none;
    case r'redirect':
      return Enum$GatewayLinkMethod.redirect;
    case r'manual':
      return Enum$GatewayLinkMethod.manual;
    default:
      return Enum$GatewayLinkMethod.$unknown;
  }
}

enum Enum$PaymentGatewayType {
  Stripe,
  BrainTree,
  PayPal,
  Paytm,
  Razorpay,
  Paystack,
  PayU,
  Instamojo,
  Flutterwave,
  PayGate,
  MIPS,
  MercadoPago,
  AmazonPaymentServices,
  MyTMoney,
  WayForPay,
  MyFatoorah,
  SberBank,
  BinancePay,
  OpenPix,
  PayTR,
  CustomLink,
  $unknown;

  factory Enum$PaymentGatewayType.fromJson(String value) =>
      fromJson$Enum$PaymentGatewayType(value);

  String toJson() => toJson$Enum$PaymentGatewayType(this);
}

String toJson$Enum$PaymentGatewayType(Enum$PaymentGatewayType e) {
  switch (e) {
    case Enum$PaymentGatewayType.Stripe:
      return r'Stripe';
    case Enum$PaymentGatewayType.BrainTree:
      return r'BrainTree';
    case Enum$PaymentGatewayType.PayPal:
      return r'PayPal';
    case Enum$PaymentGatewayType.Paytm:
      return r'Paytm';
    case Enum$PaymentGatewayType.Razorpay:
      return r'Razorpay';
    case Enum$PaymentGatewayType.Paystack:
      return r'Paystack';
    case Enum$PaymentGatewayType.PayU:
      return r'PayU';
    case Enum$PaymentGatewayType.Instamojo:
      return r'Instamojo';
    case Enum$PaymentGatewayType.Flutterwave:
      return r'Flutterwave';
    case Enum$PaymentGatewayType.PayGate:
      return r'PayGate';
    case Enum$PaymentGatewayType.MIPS:
      return r'MIPS';
    case Enum$PaymentGatewayType.MercadoPago:
      return r'MercadoPago';
    case Enum$PaymentGatewayType.AmazonPaymentServices:
      return r'AmazonPaymentServices';
    case Enum$PaymentGatewayType.MyTMoney:
      return r'MyTMoney';
    case Enum$PaymentGatewayType.WayForPay:
      return r'WayForPay';
    case Enum$PaymentGatewayType.MyFatoorah:
      return r'MyFatoorah';
    case Enum$PaymentGatewayType.SberBank:
      return r'SberBank';
    case Enum$PaymentGatewayType.BinancePay:
      return r'BinancePay';
    case Enum$PaymentGatewayType.OpenPix:
      return r'OpenPix';
    case Enum$PaymentGatewayType.PayTR:
      return r'PayTR';
    case Enum$PaymentGatewayType.CustomLink:
      return r'CustomLink';
    case Enum$PaymentGatewayType.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentGatewayType fromJson$Enum$PaymentGatewayType(String value) {
  switch (value) {
    case r'Stripe':
      return Enum$PaymentGatewayType.Stripe;
    case r'BrainTree':
      return Enum$PaymentGatewayType.BrainTree;
    case r'PayPal':
      return Enum$PaymentGatewayType.PayPal;
    case r'Paytm':
      return Enum$PaymentGatewayType.Paytm;
    case r'Razorpay':
      return Enum$PaymentGatewayType.Razorpay;
    case r'Paystack':
      return Enum$PaymentGatewayType.Paystack;
    case r'PayU':
      return Enum$PaymentGatewayType.PayU;
    case r'Instamojo':
      return Enum$PaymentGatewayType.Instamojo;
    case r'Flutterwave':
      return Enum$PaymentGatewayType.Flutterwave;
    case r'PayGate':
      return Enum$PaymentGatewayType.PayGate;
    case r'MIPS':
      return Enum$PaymentGatewayType.MIPS;
    case r'MercadoPago':
      return Enum$PaymentGatewayType.MercadoPago;
    case r'AmazonPaymentServices':
      return Enum$PaymentGatewayType.AmazonPaymentServices;
    case r'MyTMoney':
      return Enum$PaymentGatewayType.MyTMoney;
    case r'WayForPay':
      return Enum$PaymentGatewayType.WayForPay;
    case r'MyFatoorah':
      return Enum$PaymentGatewayType.MyFatoorah;
    case r'SberBank':
      return Enum$PaymentGatewayType.SberBank;
    case r'BinancePay':
      return Enum$PaymentGatewayType.BinancePay;
    case r'OpenPix':
      return Enum$PaymentGatewayType.OpenPix;
    case r'PayTR':
      return Enum$PaymentGatewayType.PayTR;
    case r'CustomLink':
      return Enum$PaymentGatewayType.CustomLink;
    default:
      return Enum$PaymentGatewayType.$unknown;
  }
}

enum Enum$DriverServicesServiceDTOSortFields {
  driverId,
  serviceId,
  $unknown;

  factory Enum$DriverServicesServiceDTOSortFields.fromJson(String value) =>
      fromJson$Enum$DriverServicesServiceDTOSortFields(value);

  String toJson() => toJson$Enum$DriverServicesServiceDTOSortFields(this);
}

String toJson$Enum$DriverServicesServiceDTOSortFields(
    Enum$DriverServicesServiceDTOSortFields e) {
  switch (e) {
    case Enum$DriverServicesServiceDTOSortFields.driverId:
      return r'driverId';
    case Enum$DriverServicesServiceDTOSortFields.serviceId:
      return r'serviceId';
    case Enum$DriverServicesServiceDTOSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$DriverServicesServiceDTOSortFields
    fromJson$Enum$DriverServicesServiceDTOSortFields(String value) {
  switch (value) {
    case r'driverId':
      return Enum$DriverServicesServiceDTOSortFields.driverId;
    case r'serviceId':
      return Enum$DriverServicesServiceDTOSortFields.serviceId;
    default:
      return Enum$DriverServicesServiceDTOSortFields.$unknown;
  }
}

enum Enum$SavedPaymentMethodType {
  CARD,
  BANK_ACCOUNT,
  $unknown;

  factory Enum$SavedPaymentMethodType.fromJson(String value) =>
      fromJson$Enum$SavedPaymentMethodType(value);

  String toJson() => toJson$Enum$SavedPaymentMethodType(this);
}

String toJson$Enum$SavedPaymentMethodType(Enum$SavedPaymentMethodType e) {
  switch (e) {
    case Enum$SavedPaymentMethodType.CARD:
      return r'CARD';
    case Enum$SavedPaymentMethodType.BANK_ACCOUNT:
      return r'BANK_ACCOUNT';
    case Enum$SavedPaymentMethodType.$unknown:
      return r'$unknown';
  }
}

Enum$SavedPaymentMethodType fromJson$Enum$SavedPaymentMethodType(String value) {
  switch (value) {
    case r'CARD':
      return Enum$SavedPaymentMethodType.CARD;
    case r'BANK_ACCOUNT':
      return Enum$SavedPaymentMethodType.BANK_ACCOUNT;
    default:
      return Enum$SavedPaymentMethodType.$unknown;
  }
}

enum Enum$ProviderBrand {
  Visa,
  Mastercard,
  Amex,
  Discover,
  Diners,
  EftPosAu,
  JCB,
  UnionPay,
  Unknown,
  $unknown;

  factory Enum$ProviderBrand.fromJson(String value) =>
      fromJson$Enum$ProviderBrand(value);

  String toJson() => toJson$Enum$ProviderBrand(this);
}

String toJson$Enum$ProviderBrand(Enum$ProviderBrand e) {
  switch (e) {
    case Enum$ProviderBrand.Visa:
      return r'Visa';
    case Enum$ProviderBrand.Mastercard:
      return r'Mastercard';
    case Enum$ProviderBrand.Amex:
      return r'Amex';
    case Enum$ProviderBrand.Discover:
      return r'Discover';
    case Enum$ProviderBrand.Diners:
      return r'Diners';
    case Enum$ProviderBrand.EftPosAu:
      return r'EftPosAu';
    case Enum$ProviderBrand.JCB:
      return r'JCB';
    case Enum$ProviderBrand.UnionPay:
      return r'UnionPay';
    case Enum$ProviderBrand.Unknown:
      return r'Unknown';
    case Enum$ProviderBrand.$unknown:
      return r'$unknown';
  }
}

Enum$ProviderBrand fromJson$Enum$ProviderBrand(String value) {
  switch (value) {
    case r'Visa':
      return Enum$ProviderBrand.Visa;
    case r'Mastercard':
      return Enum$ProviderBrand.Mastercard;
    case r'Amex':
      return Enum$ProviderBrand.Amex;
    case r'Discover':
      return Enum$ProviderBrand.Discover;
    case r'Diners':
      return Enum$ProviderBrand.Diners;
    case r'EftPosAu':
      return Enum$ProviderBrand.EftPosAu;
    case r'JCB':
      return Enum$ProviderBrand.JCB;
    case r'UnionPay':
      return Enum$ProviderBrand.UnionPay;
    case r'Unknown':
      return Enum$ProviderBrand.Unknown;
    default:
      return Enum$ProviderBrand.$unknown;
  }
}

enum Enum$CartStatus {
  New,
  Preparing,
  ReadyForPickup,
  OutForDelivery,
  Completed,
  CancelRequestedByShop,
  CanceledRequestedByCustomer,
  CanceledByShop,
  CanceledByCustomer,
  Returned,
  Failed,
  $unknown;

  factory Enum$CartStatus.fromJson(String value) =>
      fromJson$Enum$CartStatus(value);

  String toJson() => toJson$Enum$CartStatus(this);
}

String toJson$Enum$CartStatus(Enum$CartStatus e) {
  switch (e) {
    case Enum$CartStatus.New:
      return r'New';
    case Enum$CartStatus.Preparing:
      return r'Preparing';
    case Enum$CartStatus.ReadyForPickup:
      return r'ReadyForPickup';
    case Enum$CartStatus.OutForDelivery:
      return r'OutForDelivery';
    case Enum$CartStatus.Completed:
      return r'Completed';
    case Enum$CartStatus.CancelRequestedByShop:
      return r'CancelRequestedByShop';
    case Enum$CartStatus.CanceledRequestedByCustomer:
      return r'CanceledRequestedByCustomer';
    case Enum$CartStatus.CanceledByShop:
      return r'CanceledByShop';
    case Enum$CartStatus.CanceledByCustomer:
      return r'CanceledByCustomer';
    case Enum$CartStatus.Returned:
      return r'Returned';
    case Enum$CartStatus.Failed:
      return r'Failed';
    case Enum$CartStatus.$unknown:
      return r'$unknown';
  }
}

Enum$CartStatus fromJson$Enum$CartStatus(String value) {
  switch (value) {
    case r'New':
      return Enum$CartStatus.New;
    case r'Preparing':
      return Enum$CartStatus.Preparing;
    case r'ReadyForPickup':
      return Enum$CartStatus.ReadyForPickup;
    case r'OutForDelivery':
      return Enum$CartStatus.OutForDelivery;
    case r'Completed':
      return Enum$CartStatus.Completed;
    case r'CancelRequestedByShop':
      return Enum$CartStatus.CancelRequestedByShop;
    case r'CanceledRequestedByCustomer':
      return Enum$CartStatus.CanceledRequestedByCustomer;
    case r'CanceledByShop':
      return Enum$CartStatus.CanceledByShop;
    case r'CanceledByCustomer':
      return Enum$CartStatus.CanceledByCustomer;
    case r'Returned':
      return Enum$CartStatus.Returned;
    case r'Failed':
      return Enum$CartStatus.Failed;
    default:
      return Enum$CartStatus.$unknown;
  }
}

enum Enum$OrderStatus {
  Requested,
  NotFound,
  NoCloseFound,
  Found,
  DriverAccepted,
  Arrived,
  WaitingForPrePay,
  DriverCanceled,
  RiderCanceled,
  Started,
  WaitingForPostPay,
  WaitingForReview,
  Finished,
  Booked,
  Expired,
  $unknown;

  factory Enum$OrderStatus.fromJson(String value) =>
      fromJson$Enum$OrderStatus(value);

  String toJson() => toJson$Enum$OrderStatus(this);
}

String toJson$Enum$OrderStatus(Enum$OrderStatus e) {
  switch (e) {
    case Enum$OrderStatus.Requested:
      return r'Requested';
    case Enum$OrderStatus.NotFound:
      return r'NotFound';
    case Enum$OrderStatus.NoCloseFound:
      return r'NoCloseFound';
    case Enum$OrderStatus.Found:
      return r'Found';
    case Enum$OrderStatus.DriverAccepted:
      return r'DriverAccepted';
    case Enum$OrderStatus.Arrived:
      return r'Arrived';
    case Enum$OrderStatus.WaitingForPrePay:
      return r'WaitingForPrePay';
    case Enum$OrderStatus.DriverCanceled:
      return r'DriverCanceled';
    case Enum$OrderStatus.RiderCanceled:
      return r'RiderCanceled';
    case Enum$OrderStatus.Started:
      return r'Started';
    case Enum$OrderStatus.WaitingForPostPay:
      return r'WaitingForPostPay';
    case Enum$OrderStatus.WaitingForReview:
      return r'WaitingForReview';
    case Enum$OrderStatus.Finished:
      return r'Finished';
    case Enum$OrderStatus.Booked:
      return r'Booked';
    case Enum$OrderStatus.Expired:
      return r'Expired';
    case Enum$OrderStatus.$unknown:
      return r'$unknown';
  }
}

Enum$OrderStatus fromJson$Enum$OrderStatus(String value) {
  switch (value) {
    case r'Requested':
      return Enum$OrderStatus.Requested;
    case r'NotFound':
      return Enum$OrderStatus.NotFound;
    case r'NoCloseFound':
      return Enum$OrderStatus.NoCloseFound;
    case r'Found':
      return Enum$OrderStatus.Found;
    case r'DriverAccepted':
      return Enum$OrderStatus.DriverAccepted;
    case r'Arrived':
      return Enum$OrderStatus.Arrived;
    case r'WaitingForPrePay':
      return Enum$OrderStatus.WaitingForPrePay;
    case r'DriverCanceled':
      return Enum$OrderStatus.DriverCanceled;
    case r'RiderCanceled':
      return Enum$OrderStatus.RiderCanceled;
    case r'Started':
      return Enum$OrderStatus.Started;
    case r'WaitingForPostPay':
      return Enum$OrderStatus.WaitingForPostPay;
    case r'WaitingForReview':
      return Enum$OrderStatus.WaitingForReview;
    case r'Finished':
      return Enum$OrderStatus.Finished;
    case r'Booked':
      return Enum$OrderStatus.Booked;
    case r'Expired':
      return Enum$OrderStatus.Expired;
    default:
      return Enum$OrderStatus.$unknown;
  }
}

enum Enum$TaxiOrderType {
  Ride,
  Rideshare,
  ParcelDelivery,
  FoodDelivery,
  ShopDelivery,
  $unknown;

  factory Enum$TaxiOrderType.fromJson(String value) =>
      fromJson$Enum$TaxiOrderType(value);

  String toJson() => toJson$Enum$TaxiOrderType(this);
}

String toJson$Enum$TaxiOrderType(Enum$TaxiOrderType e) {
  switch (e) {
    case Enum$TaxiOrderType.Ride:
      return r'Ride';
    case Enum$TaxiOrderType.Rideshare:
      return r'Rideshare';
    case Enum$TaxiOrderType.ParcelDelivery:
      return r'ParcelDelivery';
    case Enum$TaxiOrderType.FoodDelivery:
      return r'FoodDelivery';
    case Enum$TaxiOrderType.ShopDelivery:
      return r'ShopDelivery';
    case Enum$TaxiOrderType.$unknown:
      return r'$unknown';
  }
}

Enum$TaxiOrderType fromJson$Enum$TaxiOrderType(String value) {
  switch (value) {
    case r'Ride':
      return Enum$TaxiOrderType.Ride;
    case r'Rideshare':
      return Enum$TaxiOrderType.Rideshare;
    case r'ParcelDelivery':
      return Enum$TaxiOrderType.ParcelDelivery;
    case r'FoodDelivery':
      return Enum$TaxiOrderType.FoodDelivery;
    case r'ShopDelivery':
      return Enum$TaxiOrderType.ShopDelivery;
    default:
      return Enum$TaxiOrderType.$unknown;
  }
}

enum Enum$PaymentMode {
  Cash,
  SavedPaymentMethod,
  PaymentGateway,
  Wallet,
  $unknown;

  factory Enum$PaymentMode.fromJson(String value) =>
      fromJson$Enum$PaymentMode(value);

  String toJson() => toJson$Enum$PaymentMode(this);
}

String toJson$Enum$PaymentMode(Enum$PaymentMode e) {
  switch (e) {
    case Enum$PaymentMode.Cash:
      return r'Cash';
    case Enum$PaymentMode.SavedPaymentMethod:
      return r'SavedPaymentMethod';
    case Enum$PaymentMode.PaymentGateway:
      return r'PaymentGateway';
    case Enum$PaymentMode.Wallet:
      return r'Wallet';
    case Enum$PaymentMode.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentMode fromJson$Enum$PaymentMode(String value) {
  switch (value) {
    case r'Cash':
      return Enum$PaymentMode.Cash;
    case r'SavedPaymentMethod':
      return Enum$PaymentMode.SavedPaymentMethod;
    case r'PaymentGateway':
      return Enum$PaymentMode.PaymentGateway;
    case r'Wallet':
      return Enum$PaymentMode.Wallet;
    default:
      return Enum$PaymentMode.$unknown;
  }
}

enum Enum$OrderMessageSortFields {
  id,
  requestId,
  $unknown;

  factory Enum$OrderMessageSortFields.fromJson(String value) =>
      fromJson$Enum$OrderMessageSortFields(value);

  String toJson() => toJson$Enum$OrderMessageSortFields(this);
}

String toJson$Enum$OrderMessageSortFields(Enum$OrderMessageSortFields e) {
  switch (e) {
    case Enum$OrderMessageSortFields.id:
      return r'id';
    case Enum$OrderMessageSortFields.requestId:
      return r'requestId';
    case Enum$OrderMessageSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$OrderMessageSortFields fromJson$Enum$OrderMessageSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$OrderMessageSortFields.id;
    case r'requestId':
      return Enum$OrderMessageSortFields.requestId;
    default:
      return Enum$OrderMessageSortFields.$unknown;
  }
}

enum Enum$TaxiOrderShopDTOSortFields {
  id,
  $unknown;

  factory Enum$TaxiOrderShopDTOSortFields.fromJson(String value) =>
      fromJson$Enum$TaxiOrderShopDTOSortFields(value);

  String toJson() => toJson$Enum$TaxiOrderShopDTOSortFields(this);
}

String toJson$Enum$TaxiOrderShopDTOSortFields(
    Enum$TaxiOrderShopDTOSortFields e) {
  switch (e) {
    case Enum$TaxiOrderShopDTOSortFields.id:
      return r'id';
    case Enum$TaxiOrderShopDTOSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$TaxiOrderShopDTOSortFields fromJson$Enum$TaxiOrderShopDTOSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$TaxiOrderShopDTOSortFields.id;
    default:
      return Enum$TaxiOrderShopDTOSortFields.$unknown;
  }
}

enum Enum$TransactionAction {
  Recharge,
  Deduct,
  $unknown;

  factory Enum$TransactionAction.fromJson(String value) =>
      fromJson$Enum$TransactionAction(value);

  String toJson() => toJson$Enum$TransactionAction(this);
}

String toJson$Enum$TransactionAction(Enum$TransactionAction e) {
  switch (e) {
    case Enum$TransactionAction.Recharge:
      return r'Recharge';
    case Enum$TransactionAction.Deduct:
      return r'Deduct';
    case Enum$TransactionAction.$unknown:
      return r'$unknown';
  }
}

Enum$TransactionAction fromJson$Enum$TransactionAction(String value) {
  switch (value) {
    case r'Recharge':
      return Enum$TransactionAction.Recharge;
    case r'Deduct':
      return Enum$TransactionAction.Deduct;
    default:
      return Enum$TransactionAction.$unknown;
  }
}

enum Enum$RiderDeductTransactionType {
  OrderFee,
  ParkingFee,
  CancellationFee,
  Withdraw,
  Correction,
  $unknown;

  factory Enum$RiderDeductTransactionType.fromJson(String value) =>
      fromJson$Enum$RiderDeductTransactionType(value);

  String toJson() => toJson$Enum$RiderDeductTransactionType(this);
}

String toJson$Enum$RiderDeductTransactionType(
    Enum$RiderDeductTransactionType e) {
  switch (e) {
    case Enum$RiderDeductTransactionType.OrderFee:
      return r'OrderFee';
    case Enum$RiderDeductTransactionType.ParkingFee:
      return r'ParkingFee';
    case Enum$RiderDeductTransactionType.CancellationFee:
      return r'CancellationFee';
    case Enum$RiderDeductTransactionType.Withdraw:
      return r'Withdraw';
    case Enum$RiderDeductTransactionType.Correction:
      return r'Correction';
    case Enum$RiderDeductTransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$RiderDeductTransactionType fromJson$Enum$RiderDeductTransactionType(
    String value) {
  switch (value) {
    case r'OrderFee':
      return Enum$RiderDeductTransactionType.OrderFee;
    case r'ParkingFee':
      return Enum$RiderDeductTransactionType.ParkingFee;
    case r'CancellationFee':
      return Enum$RiderDeductTransactionType.CancellationFee;
    case r'Withdraw':
      return Enum$RiderDeductTransactionType.Withdraw;
    case r'Correction':
      return Enum$RiderDeductTransactionType.Correction;
    default:
      return Enum$RiderDeductTransactionType.$unknown;
  }
}

enum Enum$RiderRechargeTransactionType {
  BankTransfer,
  Gift,
  Correction,
  InAppPayment,
  $unknown;

  factory Enum$RiderRechargeTransactionType.fromJson(String value) =>
      fromJson$Enum$RiderRechargeTransactionType(value);

  String toJson() => toJson$Enum$RiderRechargeTransactionType(this);
}

String toJson$Enum$RiderRechargeTransactionType(
    Enum$RiderRechargeTransactionType e) {
  switch (e) {
    case Enum$RiderRechargeTransactionType.BankTransfer:
      return r'BankTransfer';
    case Enum$RiderRechargeTransactionType.Gift:
      return r'Gift';
    case Enum$RiderRechargeTransactionType.Correction:
      return r'Correction';
    case Enum$RiderRechargeTransactionType.InAppPayment:
      return r'InAppPayment';
    case Enum$RiderRechargeTransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$RiderRechargeTransactionType fromJson$Enum$RiderRechargeTransactionType(
    String value) {
  switch (value) {
    case r'BankTransfer':
      return Enum$RiderRechargeTransactionType.BankTransfer;
    case r'Gift':
      return Enum$RiderRechargeTransactionType.Gift;
    case r'Correction':
      return Enum$RiderRechargeTransactionType.Correction;
    case r'InAppPayment':
      return Enum$RiderRechargeTransactionType.InAppPayment;
    default:
      return Enum$RiderRechargeTransactionType.$unknown;
  }
}

enum Enum$Gender {
  Male,
  Female,
  Unknown,
  $unknown;

  factory Enum$Gender.fromJson(String value) => fromJson$Enum$Gender(value);

  String toJson() => toJson$Enum$Gender(this);
}

String toJson$Enum$Gender(Enum$Gender e) {
  switch (e) {
    case Enum$Gender.Male:
      return r'Male';
    case Enum$Gender.Female:
      return r'Female';
    case Enum$Gender.Unknown:
      return r'Unknown';
    case Enum$Gender.$unknown:
      return r'$unknown';
  }
}

Enum$Gender fromJson$Enum$Gender(String value) {
  switch (value) {
    case r'Male':
      return Enum$Gender.Male;
    case r'Female':
      return Enum$Gender.Female;
    case r'Unknown':
      return Enum$Gender.Unknown;
    default:
      return Enum$Gender.$unknown;
  }
}

enum Enum$RiderDocumentType {
  ID,
  Passport,
  DriverLicense,
  ResidentPermitID,
  $unknown;

  factory Enum$RiderDocumentType.fromJson(String value) =>
      fromJson$Enum$RiderDocumentType(value);

  String toJson() => toJson$Enum$RiderDocumentType(this);
}

String toJson$Enum$RiderDocumentType(Enum$RiderDocumentType e) {
  switch (e) {
    case Enum$RiderDocumentType.ID:
      return r'ID';
    case Enum$RiderDocumentType.Passport:
      return r'Passport';
    case Enum$RiderDocumentType.DriverLicense:
      return r'DriverLicense';
    case Enum$RiderDocumentType.ResidentPermitID:
      return r'ResidentPermitID';
    case Enum$RiderDocumentType.$unknown:
      return r'$unknown';
  }
}

Enum$RiderDocumentType fromJson$Enum$RiderDocumentType(String value) {
  switch (value) {
    case r'ID':
      return Enum$RiderDocumentType.ID;
    case r'Passport':
      return Enum$RiderDocumentType.Passport;
    case r'DriverLicense':
      return Enum$RiderDocumentType.DriverLicense;
    case r'ResidentPermitID':
      return Enum$RiderDocumentType.ResidentPermitID;
    default:
      return Enum$RiderDocumentType.$unknown;
  }
}

enum Enum$CouponSortFields {
  id,
  $unknown;

  factory Enum$CouponSortFields.fromJson(String value) =>
      fromJson$Enum$CouponSortFields(value);

  String toJson() => toJson$Enum$CouponSortFields(this);
}

String toJson$Enum$CouponSortFields(Enum$CouponSortFields e) {
  switch (e) {
    case Enum$CouponSortFields.id:
      return r'id';
    case Enum$CouponSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$CouponSortFields fromJson$Enum$CouponSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$CouponSortFields.id;
    default:
      return Enum$CouponSortFields.$unknown;
  }
}

enum Enum$RiderWalletSortFields {
  id,
  currency,
  riderId,
  $unknown;

  factory Enum$RiderWalletSortFields.fromJson(String value) =>
      fromJson$Enum$RiderWalletSortFields(value);

  String toJson() => toJson$Enum$RiderWalletSortFields(this);
}

String toJson$Enum$RiderWalletSortFields(Enum$RiderWalletSortFields e) {
  switch (e) {
    case Enum$RiderWalletSortFields.id:
      return r'id';
    case Enum$RiderWalletSortFields.currency:
      return r'currency';
    case Enum$RiderWalletSortFields.riderId:
      return r'riderId';
    case Enum$RiderWalletSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$RiderWalletSortFields fromJson$Enum$RiderWalletSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$RiderWalletSortFields.id;
    case r'currency':
      return Enum$RiderWalletSortFields.currency;
    case r'riderId':
      return Enum$RiderWalletSortFields.riderId;
    default:
      return Enum$RiderWalletSortFields.$unknown;
  }
}

enum Enum$RiderTransacionSortFields {
  id,
  riderId,
  shopOrderId,
  $unknown;

  factory Enum$RiderTransacionSortFields.fromJson(String value) =>
      fromJson$Enum$RiderTransacionSortFields(value);

  String toJson() => toJson$Enum$RiderTransacionSortFields(this);
}

String toJson$Enum$RiderTransacionSortFields(Enum$RiderTransacionSortFields e) {
  switch (e) {
    case Enum$RiderTransacionSortFields.id:
      return r'id';
    case Enum$RiderTransacionSortFields.riderId:
      return r'riderId';
    case Enum$RiderTransacionSortFields.shopOrderId:
      return r'shopOrderId';
    case Enum$RiderTransacionSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$RiderTransacionSortFields fromJson$Enum$RiderTransacionSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$RiderTransacionSortFields.id;
    case r'riderId':
      return Enum$RiderTransacionSortFields.riderId;
    case r'shopOrderId':
      return Enum$RiderTransacionSortFields.shopOrderId;
    default:
      return Enum$RiderTransacionSortFields.$unknown;
  }
}

enum Enum$SavedPaymentMethodSortFields {
  id,
  riderId,
  $unknown;

  factory Enum$SavedPaymentMethodSortFields.fromJson(String value) =>
      fromJson$Enum$SavedPaymentMethodSortFields(value);

  String toJson() => toJson$Enum$SavedPaymentMethodSortFields(this);
}

String toJson$Enum$SavedPaymentMethodSortFields(
    Enum$SavedPaymentMethodSortFields e) {
  switch (e) {
    case Enum$SavedPaymentMethodSortFields.id:
      return r'id';
    case Enum$SavedPaymentMethodSortFields.riderId:
      return r'riderId';
    case Enum$SavedPaymentMethodSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$SavedPaymentMethodSortFields fromJson$Enum$SavedPaymentMethodSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$SavedPaymentMethodSortFields.id;
    case r'riderId':
      return Enum$SavedPaymentMethodSortFields.riderId;
    default:
      return Enum$SavedPaymentMethodSortFields.$unknown;
  }
}

enum Enum$DriverSortFields {
  id,
  $unknown;

  factory Enum$DriverSortFields.fromJson(String value) =>
      fromJson$Enum$DriverSortFields(value);

  String toJson() => toJson$Enum$DriverSortFields(this);
}

String toJson$Enum$DriverSortFields(Enum$DriverSortFields e) {
  switch (e) {
    case Enum$DriverSortFields.id:
      return r'id';
    case Enum$DriverSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$DriverSortFields fromJson$Enum$DriverSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$DriverSortFields.id;
    default:
      return Enum$DriverSortFields.$unknown;
  }
}

enum Enum$OrderSortFields {
  id,
  status,
  createdOn,
  distanceBest,
  riderId,
  driverId,
  paymentGatewayId,
  paymentMethodId,
  $unknown;

  factory Enum$OrderSortFields.fromJson(String value) =>
      fromJson$Enum$OrderSortFields(value);

  String toJson() => toJson$Enum$OrderSortFields(this);
}

String toJson$Enum$OrderSortFields(Enum$OrderSortFields e) {
  switch (e) {
    case Enum$OrderSortFields.id:
      return r'id';
    case Enum$OrderSortFields.status:
      return r'status';
    case Enum$OrderSortFields.createdOn:
      return r'createdOn';
    case Enum$OrderSortFields.distanceBest:
      return r'distanceBest';
    case Enum$OrderSortFields.riderId:
      return r'riderId';
    case Enum$OrderSortFields.driverId:
      return r'driverId';
    case Enum$OrderSortFields.paymentGatewayId:
      return r'paymentGatewayId';
    case Enum$OrderSortFields.paymentMethodId:
      return r'paymentMethodId';
    case Enum$OrderSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$OrderSortFields fromJson$Enum$OrderSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$OrderSortFields.id;
    case r'status':
      return Enum$OrderSortFields.status;
    case r'createdOn':
      return Enum$OrderSortFields.createdOn;
    case r'distanceBest':
      return Enum$OrderSortFields.distanceBest;
    case r'riderId':
      return Enum$OrderSortFields.riderId;
    case r'driverId':
      return Enum$OrderSortFields.driverId;
    case r'paymentGatewayId':
      return Enum$OrderSortFields.paymentGatewayId;
    case r'paymentMethodId':
      return Enum$OrderSortFields.paymentMethodId;
    default:
      return Enum$OrderSortFields.$unknown;
  }
}

enum Enum$CalculateFareError {
  RegionUnsupported,
  NoServiceInRegion,
  $unknown;

  factory Enum$CalculateFareError.fromJson(String value) =>
      fromJson$Enum$CalculateFareError(value);

  String toJson() => toJson$Enum$CalculateFareError(this);
}

String toJson$Enum$CalculateFareError(Enum$CalculateFareError e) {
  switch (e) {
    case Enum$CalculateFareError.RegionUnsupported:
      return r'RegionUnsupported';
    case Enum$CalculateFareError.NoServiceInRegion:
      return r'NoServiceInRegion';
    case Enum$CalculateFareError.$unknown:
      return r'$unknown';
  }
}

Enum$CalculateFareError fromJson$Enum$CalculateFareError(String value) {
  switch (value) {
    case r'RegionUnsupported':
      return Enum$CalculateFareError.RegionUnsupported;
    case r'NoServiceInRegion':
      return Enum$CalculateFareError.NoServiceInRegion;
    default:
      return Enum$CalculateFareError.$unknown;
  }
}

enum Enum$AnnouncementUserType {
  Driver,
  Rider,
  Operator,
  $unknown;

  factory Enum$AnnouncementUserType.fromJson(String value) =>
      fromJson$Enum$AnnouncementUserType(value);

  String toJson() => toJson$Enum$AnnouncementUserType(this);
}

String toJson$Enum$AnnouncementUserType(Enum$AnnouncementUserType e) {
  switch (e) {
    case Enum$AnnouncementUserType.Driver:
      return r'Driver';
    case Enum$AnnouncementUserType.Rider:
      return r'Rider';
    case Enum$AnnouncementUserType.Operator:
      return r'Operator';
    case Enum$AnnouncementUserType.$unknown:
      return r'$unknown';
  }
}

Enum$AnnouncementUserType fromJson$Enum$AnnouncementUserType(String value) {
  switch (value) {
    case r'Driver':
      return Enum$AnnouncementUserType.Driver;
    case r'Rider':
      return Enum$AnnouncementUserType.Rider;
    case r'Operator':
      return Enum$AnnouncementUserType.Operator;
    default:
      return Enum$AnnouncementUserType.$unknown;
  }
}

enum Enum$ComplaintStatus {
  Submitted,
  UnderInvestigation,
  Resolved,
  $unknown;

  factory Enum$ComplaintStatus.fromJson(String value) =>
      fromJson$Enum$ComplaintStatus(value);

  String toJson() => toJson$Enum$ComplaintStatus(this);
}

String toJson$Enum$ComplaintStatus(Enum$ComplaintStatus e) {
  switch (e) {
    case Enum$ComplaintStatus.Submitted:
      return r'Submitted';
    case Enum$ComplaintStatus.UnderInvestigation:
      return r'UnderInvestigation';
    case Enum$ComplaintStatus.Resolved:
      return r'Resolved';
    case Enum$ComplaintStatus.$unknown:
      return r'$unknown';
  }
}

Enum$ComplaintStatus fromJson$Enum$ComplaintStatus(String value) {
  switch (value) {
    case r'Submitted':
      return Enum$ComplaintStatus.Submitted;
    case r'UnderInvestigation':
      return Enum$ComplaintStatus.UnderInvestigation;
    case r'Resolved':
      return Enum$ComplaintStatus.Resolved;
    default:
      return Enum$ComplaintStatus.$unknown;
  }
}

enum Enum$TopUpWalletStatus {
  OK,
  Redirect,
  Failed,
  $unknown;

  factory Enum$TopUpWalletStatus.fromJson(String value) =>
      fromJson$Enum$TopUpWalletStatus(value);

  String toJson() => toJson$Enum$TopUpWalletStatus(this);
}

String toJson$Enum$TopUpWalletStatus(Enum$TopUpWalletStatus e) {
  switch (e) {
    case Enum$TopUpWalletStatus.OK:
      return r'OK';
    case Enum$TopUpWalletStatus.Redirect:
      return r'Redirect';
    case Enum$TopUpWalletStatus.Failed:
      return r'Failed';
    case Enum$TopUpWalletStatus.$unknown:
      return r'$unknown';
  }
}

Enum$TopUpWalletStatus fromJson$Enum$TopUpWalletStatus(String value) {
  switch (value) {
    case r'OK':
      return Enum$TopUpWalletStatus.OK;
    case r'Redirect':
      return Enum$TopUpWalletStatus.Redirect;
    case r'Failed':
      return Enum$TopUpWalletStatus.Failed;
    default:
      return Enum$TopUpWalletStatus.$unknown;
  }
}

enum Enum$GeoProvider {
  GOOGLE,
  MAPBOX,
  NOMINATIM,
  $unknown;

  factory Enum$GeoProvider.fromJson(String value) =>
      fromJson$Enum$GeoProvider(value);

  String toJson() => toJson$Enum$GeoProvider(this);
}

String toJson$Enum$GeoProvider(Enum$GeoProvider e) {
  switch (e) {
    case Enum$GeoProvider.GOOGLE:
      return r'GOOGLE';
    case Enum$GeoProvider.MAPBOX:
      return r'MAPBOX';
    case Enum$GeoProvider.NOMINATIM:
      return r'NOMINATIM';
    case Enum$GeoProvider.$unknown:
      return r'$unknown';
  }
}

Enum$GeoProvider fromJson$Enum$GeoProvider(String value) {
  switch (value) {
    case r'GOOGLE':
      return Enum$GeoProvider.GOOGLE;
    case r'MAPBOX':
      return Enum$GeoProvider.MAPBOX;
    case r'NOMINATIM':
      return Enum$GeoProvider.NOMINATIM;
    default:
      return Enum$GeoProvider.$unknown;
  }
}

enum Enum$VersionStatus {
  Latest,
  MandatoryUpdate,
  OptionalUpdate,
  $unknown;

  factory Enum$VersionStatus.fromJson(String value) =>
      fromJson$Enum$VersionStatus(value);

  String toJson() => toJson$Enum$VersionStatus(this);
}

String toJson$Enum$VersionStatus(Enum$VersionStatus e) {
  switch (e) {
    case Enum$VersionStatus.Latest:
      return r'Latest';
    case Enum$VersionStatus.MandatoryUpdate:
      return r'MandatoryUpdate';
    case Enum$VersionStatus.OptionalUpdate:
      return r'OptionalUpdate';
    case Enum$VersionStatus.$unknown:
      return r'$unknown';
  }
}

Enum$VersionStatus fromJson$Enum$VersionStatus(String value) {
  switch (value) {
    case r'Latest':
      return Enum$VersionStatus.Latest;
    case r'MandatoryUpdate':
      return Enum$VersionStatus.MandatoryUpdate;
    case r'OptionalUpdate':
      return Enum$VersionStatus.OptionalUpdate;
    default:
      return Enum$VersionStatus.$unknown;
  }
}

enum Enum$ServiceCategorySortFields {
  id,
  $unknown;

  factory Enum$ServiceCategorySortFields.fromJson(String value) =>
      fromJson$Enum$ServiceCategorySortFields(value);

  String toJson() => toJson$Enum$ServiceCategorySortFields(this);
}

String toJson$Enum$ServiceCategorySortFields(Enum$ServiceCategorySortFields e) {
  switch (e) {
    case Enum$ServiceCategorySortFields.id:
      return r'id';
    case Enum$ServiceCategorySortFields.$unknown:
      return r'$unknown';
  }
}

Enum$ServiceCategorySortFields fromJson$Enum$ServiceCategorySortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$ServiceCategorySortFields.id;
    default:
      return Enum$ServiceCategorySortFields.$unknown;
  }
}

enum Enum$FeedbackParameterSortFields {
  id,
  $unknown;

  factory Enum$FeedbackParameterSortFields.fromJson(String value) =>
      fromJson$Enum$FeedbackParameterSortFields(value);

  String toJson() => toJson$Enum$FeedbackParameterSortFields(this);
}

String toJson$Enum$FeedbackParameterSortFields(
    Enum$FeedbackParameterSortFields e) {
  switch (e) {
    case Enum$FeedbackParameterSortFields.id:
      return r'id';
    case Enum$FeedbackParameterSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$FeedbackParameterSortFields fromJson$Enum$FeedbackParameterSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$FeedbackParameterSortFields.id;
    default:
      return Enum$FeedbackParameterSortFields.$unknown;
  }
}

enum Enum$OrderCancelReasonSortFields {
  id,
  isEnabled,
  userType,
  $unknown;

  factory Enum$OrderCancelReasonSortFields.fromJson(String value) =>
      fromJson$Enum$OrderCancelReasonSortFields(value);

  String toJson() => toJson$Enum$OrderCancelReasonSortFields(this);
}

String toJson$Enum$OrderCancelReasonSortFields(
    Enum$OrderCancelReasonSortFields e) {
  switch (e) {
    case Enum$OrderCancelReasonSortFields.id:
      return r'id';
    case Enum$OrderCancelReasonSortFields.isEnabled:
      return r'isEnabled';
    case Enum$OrderCancelReasonSortFields.userType:
      return r'userType';
    case Enum$OrderCancelReasonSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$OrderCancelReasonSortFields fromJson$Enum$OrderCancelReasonSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$OrderCancelReasonSortFields.id;
    case r'isEnabled':
      return Enum$OrderCancelReasonSortFields.isEnabled;
    case r'userType':
      return Enum$OrderCancelReasonSortFields.userType;
    default:
      return Enum$OrderCancelReasonSortFields.$unknown;
  }
}

enum Enum$RiderAddressSortFields {
  id,
  riderId,
  $unknown;

  factory Enum$RiderAddressSortFields.fromJson(String value) =>
      fromJson$Enum$RiderAddressSortFields(value);

  String toJson() => toJson$Enum$RiderAddressSortFields(this);
}

String toJson$Enum$RiderAddressSortFields(Enum$RiderAddressSortFields e) {
  switch (e) {
    case Enum$RiderAddressSortFields.id:
      return r'id';
    case Enum$RiderAddressSortFields.riderId:
      return r'riderId';
    case Enum$RiderAddressSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$RiderAddressSortFields fromJson$Enum$RiderAddressSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$RiderAddressSortFields.id;
    case r'riderId':
      return Enum$RiderAddressSortFields.riderId;
    default:
      return Enum$RiderAddressSortFields.$unknown;
  }
}

enum Enum$PaymentGatewaySortFields {
  id,
  enabled,
  $unknown;

  factory Enum$PaymentGatewaySortFields.fromJson(String value) =>
      fromJson$Enum$PaymentGatewaySortFields(value);

  String toJson() => toJson$Enum$PaymentGatewaySortFields(this);
}

String toJson$Enum$PaymentGatewaySortFields(Enum$PaymentGatewaySortFields e) {
  switch (e) {
    case Enum$PaymentGatewaySortFields.id:
      return r'id';
    case Enum$PaymentGatewaySortFields.enabled:
      return r'enabled';
    case Enum$PaymentGatewaySortFields.$unknown:
      return r'$unknown';
  }
}

Enum$PaymentGatewaySortFields fromJson$Enum$PaymentGatewaySortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$PaymentGatewaySortFields.id;
    case r'enabled':
      return Enum$PaymentGatewaySortFields.enabled;
    default:
      return Enum$PaymentGatewaySortFields.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
