import 'package:flutter_common/core/graphql/scalars/connection_cursor.dart';
import 'package:flutter_common/core/graphql/scalars/datetime.dart';

class Input$RiderWalletFilter {
  factory Input$RiderWalletFilter({
    List<Input$RiderWalletFilter>? and,
    List<Input$RiderWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? riderId,
  }) =>
      Input$RiderWalletFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
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
    Object? riderId = _undefined,
  }) =>
      _then(Input$RiderWalletFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$RiderWalletFilter>?),
        if (or != _undefined) 'or': (or as List<Input$RiderWalletFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
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

class Input$ServiceOptionAggregateFilter {
  factory Input$ServiceOptionAggregateFilter({
    List<Input$ServiceOptionAggregateFilter>? and,
    List<Input$ServiceOptionAggregateFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$ServiceOptionAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$ServiceOptionAggregateFilter._(this._$data);

  factory Input$ServiceOptionAggregateFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$ServiceOptionAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$ServiceOptionAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$ServiceOptionAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$ServiceOptionAggregateFilter>? get and =>
      (_$data['and'] as List<Input$ServiceOptionAggregateFilter>?);

  List<Input$ServiceOptionAggregateFilter>? get or =>
      (_$data['or'] as List<Input$ServiceOptionAggregateFilter>?);

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

  CopyWith$Input$ServiceOptionAggregateFilter<
          Input$ServiceOptionAggregateFilter>
      get copyWith => CopyWith$Input$ServiceOptionAggregateFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ServiceOptionAggregateFilter ||
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

abstract class CopyWith$Input$ServiceOptionAggregateFilter<TRes> {
  factory CopyWith$Input$ServiceOptionAggregateFilter(
    Input$ServiceOptionAggregateFilter instance,
    TRes Function(Input$ServiceOptionAggregateFilter) then,
  ) = _CopyWithImpl$Input$ServiceOptionAggregateFilter;

  factory CopyWith$Input$ServiceOptionAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$ServiceOptionAggregateFilter;

  TRes call({
    List<Input$ServiceOptionAggregateFilter>? and,
    List<Input$ServiceOptionAggregateFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$ServiceOptionAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionAggregateFilter<
                      Input$ServiceOptionAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$ServiceOptionAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$ServiceOptionAggregateFilter<
                      Input$ServiceOptionAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$ServiceOptionAggregateFilter<TRes>
    implements CopyWith$Input$ServiceOptionAggregateFilter<TRes> {
  _CopyWithImpl$Input$ServiceOptionAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$ServiceOptionAggregateFilter _instance;

  final TRes Function(Input$ServiceOptionAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$ServiceOptionAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$ServiceOptionAggregateFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$ServiceOptionAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$ServiceOptionAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionAggregateFilter<
                          Input$ServiceOptionAggregateFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$ServiceOptionAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$ServiceOptionAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$ServiceOptionAggregateFilter<
                          Input$ServiceOptionAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$ServiceOptionAggregateFilter(
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

class _CopyWithStubImpl$Input$ServiceOptionAggregateFilter<TRes>
    implements CopyWith$Input$ServiceOptionAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$ServiceOptionAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$ServiceOptionAggregateFilter>? and,
    List<Input$ServiceOptionAggregateFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$OrderMessageAggregateFilter {
  factory Input$OrderMessageAggregateFilter({
    List<Input$OrderMessageAggregateFilter>? and,
    List<Input$OrderMessageAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  }) =>
      Input$OrderMessageAggregateFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (requestId != null) r'requestId': requestId,
      });

  Input$OrderMessageAggregateFilter._(this._$data);

  factory Input$OrderMessageAggregateFilter.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$OrderMessageAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$OrderMessageAggregateFilter.fromJson(
              (e as Map<String, dynamic>)))
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
    return Input$OrderMessageAggregateFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$OrderMessageAggregateFilter>? get and =>
      (_$data['and'] as List<Input$OrderMessageAggregateFilter>?);

  List<Input$OrderMessageAggregateFilter>? get or =>
      (_$data['or'] as List<Input$OrderMessageAggregateFilter>?);

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

  CopyWith$Input$OrderMessageAggregateFilter<Input$OrderMessageAggregateFilter>
      get copyWith => CopyWith$Input$OrderMessageAggregateFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OrderMessageAggregateFilter ||
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

abstract class CopyWith$Input$OrderMessageAggregateFilter<TRes> {
  factory CopyWith$Input$OrderMessageAggregateFilter(
    Input$OrderMessageAggregateFilter instance,
    TRes Function(Input$OrderMessageAggregateFilter) then,
  ) = _CopyWithImpl$Input$OrderMessageAggregateFilter;

  factory CopyWith$Input$OrderMessageAggregateFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$OrderMessageAggregateFilter;

  TRes call({
    List<Input$OrderMessageAggregateFilter>? and,
    List<Input$OrderMessageAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? requestId,
  });
  TRes and(
      Iterable<Input$OrderMessageAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageAggregateFilter<
                      Input$OrderMessageAggregateFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$OrderMessageAggregateFilter>? Function(
              Iterable<
                  CopyWith$Input$OrderMessageAggregateFilter<
                      Input$OrderMessageAggregateFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get requestId;
}

class _CopyWithImpl$Input$OrderMessageAggregateFilter<TRes>
    implements CopyWith$Input$OrderMessageAggregateFilter<TRes> {
  _CopyWithImpl$Input$OrderMessageAggregateFilter(
    this._instance,
    this._then,
  );

  final Input$OrderMessageAggregateFilter _instance;

  final TRes Function(Input$OrderMessageAggregateFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? requestId = _undefined,
  }) =>
      _then(Input$OrderMessageAggregateFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$OrderMessageAggregateFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$OrderMessageAggregateFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (requestId != _undefined)
          'requestId': (requestId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$OrderMessageAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageAggregateFilter<
                          Input$OrderMessageAggregateFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and
              ?.map((e) => CopyWith$Input$OrderMessageAggregateFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$OrderMessageAggregateFilter>? Function(
                  Iterable<
                      CopyWith$Input$OrderMessageAggregateFilter<
                          Input$OrderMessageAggregateFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or
              ?.map((e) => CopyWith$Input$OrderMessageAggregateFilter(
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

class _CopyWithStubImpl$Input$OrderMessageAggregateFilter<TRes>
    implements CopyWith$Input$OrderMessageAggregateFilter<TRes> {
  _CopyWithStubImpl$Input$OrderMessageAggregateFilter(this._res);

  TRes _res;

  call({
    List<Input$OrderMessageAggregateFilter>? and,
    List<Input$OrderMessageAggregateFilter>? or,
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

class Input$OrderAggregateFilter {
  factory Input$OrderAggregateFilter({
    List<Input$OrderAggregateFilter>? and,
    List<Input$OrderAggregateFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$FloatFieldComparison? costBest,
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
        if (costBest != null) r'costBest': costBest,
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
    if (data.containsKey('costBest')) {
      final l$costBest = data['costBest'];
      result$data['costBest'] = l$costBest == null
          ? null
          : Input$FloatFieldComparison.fromJson(
              (l$costBest as Map<String, dynamic>));
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

  Input$FloatFieldComparison? get costBest =>
      (_$data['costBest'] as Input$FloatFieldComparison?);

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
    if (_$data.containsKey('costBest')) {
      final l$costBest = costBest;
      result$data['costBest'] = l$costBest?.toJson();
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
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (_$data.containsKey('costBest') !=
        other._$data.containsKey('costBest')) {
      return false;
    }
    if (l$costBest != lOther$costBest) {
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
    final l$costBest = costBest;
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
      _$data.containsKey('costBest') ? l$costBest : const {},
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
    Input$FloatFieldComparison? costBest,
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
  CopyWith$Input$FloatFieldComparison<TRes> get costBest;
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
    Object? costBest = _undefined,
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
        if (costBest != _undefined)
          'costBest': (costBest as Input$FloatFieldComparison?),
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

  CopyWith$Input$FloatFieldComparison<TRes> get costBest {
    final local$costBest = _instance.costBest;
    return local$costBest == null
        ? CopyWith$Input$FloatFieldComparison.stub(_then(_instance))
        : CopyWith$Input$FloatFieldComparison(
            local$costBest, (e) => call(costBest: e));
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
    Input$FloatFieldComparison? costBest,
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

  CopyWith$Input$FloatFieldComparison<TRes> get costBest =>
      CopyWith$Input$FloatFieldComparison.stub(_res);

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

class Input$FloatFieldComparison {
  factory Input$FloatFieldComparison({
    bool? $is,
    bool? isNot,
    double? eq,
    double? neq,
    double? gt,
    double? gte,
    double? lt,
    double? lte,
    List<double>? $in,
    List<double>? notIn,
    Input$FloatFieldComparisonBetween? between,
    Input$FloatFieldComparisonBetween? notBetween,
  }) =>
      Input$FloatFieldComparison._({
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

  Input$FloatFieldComparison._(this._$data);

  factory Input$FloatFieldComparison.fromJson(Map<String, dynamic> data) {
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
      result$data['eq'] = (l$eq as num?)?.toDouble();
    }
    if (data.containsKey('neq')) {
      final l$neq = data['neq'];
      result$data['neq'] = (l$neq as num?)?.toDouble();
    }
    if (data.containsKey('gt')) {
      final l$gt = data['gt'];
      result$data['gt'] = (l$gt as num?)?.toDouble();
    }
    if (data.containsKey('gte')) {
      final l$gte = data['gte'];
      result$data['gte'] = (l$gte as num?)?.toDouble();
    }
    if (data.containsKey('lt')) {
      final l$lt = data['lt'];
      result$data['lt'] = (l$lt as num?)?.toDouble();
    }
    if (data.containsKey('lte')) {
      final l$lte = data['lte'];
      result$data['lte'] = (l$lte as num?)?.toDouble();
    }
    if (data.containsKey('in')) {
      final l$$in = data['in'];
      result$data['in'] =
          (l$$in as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList();
    }
    if (data.containsKey('notIn')) {
      final l$notIn = data['notIn'];
      result$data['notIn'] = (l$notIn as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList();
    }
    if (data.containsKey('between')) {
      final l$between = data['between'];
      result$data['between'] = l$between == null
          ? null
          : Input$FloatFieldComparisonBetween.fromJson(
              (l$between as Map<String, dynamic>));
    }
    if (data.containsKey('notBetween')) {
      final l$notBetween = data['notBetween'];
      result$data['notBetween'] = l$notBetween == null
          ? null
          : Input$FloatFieldComparisonBetween.fromJson(
              (l$notBetween as Map<String, dynamic>));
    }
    return Input$FloatFieldComparison._(result$data);
  }

  Map<String, dynamic> _$data;

  bool? get $is => (_$data['is'] as bool?);

  bool? get isNot => (_$data['isNot'] as bool?);

  double? get eq => (_$data['eq'] as double?);

  double? get neq => (_$data['neq'] as double?);

  double? get gt => (_$data['gt'] as double?);

  double? get gte => (_$data['gte'] as double?);

  double? get lt => (_$data['lt'] as double?);

  double? get lte => (_$data['lte'] as double?);

  List<double>? get $in => (_$data['in'] as List<double>?);

  List<double>? get notIn => (_$data['notIn'] as List<double>?);

  Input$FloatFieldComparisonBetween? get between =>
      (_$data['between'] as Input$FloatFieldComparisonBetween?);

  Input$FloatFieldComparisonBetween? get notBetween =>
      (_$data['notBetween'] as Input$FloatFieldComparisonBetween?);

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

  CopyWith$Input$FloatFieldComparison<Input$FloatFieldComparison>
      get copyWith => CopyWith$Input$FloatFieldComparison(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FloatFieldComparison ||
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

abstract class CopyWith$Input$FloatFieldComparison<TRes> {
  factory CopyWith$Input$FloatFieldComparison(
    Input$FloatFieldComparison instance,
    TRes Function(Input$FloatFieldComparison) then,
  ) = _CopyWithImpl$Input$FloatFieldComparison;

  factory CopyWith$Input$FloatFieldComparison.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatFieldComparison;

  TRes call({
    bool? $is,
    bool? isNot,
    double? eq,
    double? neq,
    double? gt,
    double? gte,
    double? lt,
    double? lte,
    List<double>? $in,
    List<double>? notIn,
    Input$FloatFieldComparisonBetween? between,
    Input$FloatFieldComparisonBetween? notBetween,
  });
  CopyWith$Input$FloatFieldComparisonBetween<TRes> get between;
  CopyWith$Input$FloatFieldComparisonBetween<TRes> get notBetween;
}

class _CopyWithImpl$Input$FloatFieldComparison<TRes>
    implements CopyWith$Input$FloatFieldComparison<TRes> {
  _CopyWithImpl$Input$FloatFieldComparison(
    this._instance,
    this._then,
  );

  final Input$FloatFieldComparison _instance;

  final TRes Function(Input$FloatFieldComparison) _then;

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
      _then(Input$FloatFieldComparison._({
        ..._instance._$data,
        if ($is != _undefined) 'is': ($is as bool?),
        if (isNot != _undefined) 'isNot': (isNot as bool?),
        if (eq != _undefined) 'eq': (eq as double?),
        if (neq != _undefined) 'neq': (neq as double?),
        if (gt != _undefined) 'gt': (gt as double?),
        if (gte != _undefined) 'gte': (gte as double?),
        if (lt != _undefined) 'lt': (lt as double?),
        if (lte != _undefined) 'lte': (lte as double?),
        if ($in != _undefined) 'in': ($in as List<double>?),
        if (notIn != _undefined) 'notIn': (notIn as List<double>?),
        if (between != _undefined)
          'between': (between as Input$FloatFieldComparisonBetween?),
        if (notBetween != _undefined)
          'notBetween': (notBetween as Input$FloatFieldComparisonBetween?),
      }));

  CopyWith$Input$FloatFieldComparisonBetween<TRes> get between {
    final local$between = _instance.between;
    return local$between == null
        ? CopyWith$Input$FloatFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$FloatFieldComparisonBetween(
            local$between, (e) => call(between: e));
  }

  CopyWith$Input$FloatFieldComparisonBetween<TRes> get notBetween {
    final local$notBetween = _instance.notBetween;
    return local$notBetween == null
        ? CopyWith$Input$FloatFieldComparisonBetween.stub(_then(_instance))
        : CopyWith$Input$FloatFieldComparisonBetween(
            local$notBetween, (e) => call(notBetween: e));
  }
}

class _CopyWithStubImpl$Input$FloatFieldComparison<TRes>
    implements CopyWith$Input$FloatFieldComparison<TRes> {
  _CopyWithStubImpl$Input$FloatFieldComparison(this._res);

  TRes _res;

  call({
    bool? $is,
    bool? isNot,
    double? eq,
    double? neq,
    double? gt,
    double? gte,
    double? lt,
    double? lte,
    List<double>? $in,
    List<double>? notIn,
    Input$FloatFieldComparisonBetween? between,
    Input$FloatFieldComparisonBetween? notBetween,
  }) =>
      _res;

  CopyWith$Input$FloatFieldComparisonBetween<TRes> get between =>
      CopyWith$Input$FloatFieldComparisonBetween.stub(_res);

  CopyWith$Input$FloatFieldComparisonBetween<TRes> get notBetween =>
      CopyWith$Input$FloatFieldComparisonBetween.stub(_res);
}

class Input$FloatFieldComparisonBetween {
  factory Input$FloatFieldComparisonBetween({
    required double lower,
    required double upper,
  }) =>
      Input$FloatFieldComparisonBetween._({
        r'lower': lower,
        r'upper': upper,
      });

  Input$FloatFieldComparisonBetween._(this._$data);

  factory Input$FloatFieldComparisonBetween.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lower = data['lower'];
    result$data['lower'] = (l$lower as num).toDouble();
    final l$upper = data['upper'];
    result$data['upper'] = (l$upper as num).toDouble();
    return Input$FloatFieldComparisonBetween._(result$data);
  }

  Map<String, dynamic> _$data;

  double get lower => (_$data['lower'] as double);

  double get upper => (_$data['upper'] as double);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lower = lower;
    result$data['lower'] = l$lower;
    final l$upper = upper;
    result$data['upper'] = l$upper;
    return result$data;
  }

  CopyWith$Input$FloatFieldComparisonBetween<Input$FloatFieldComparisonBetween>
      get copyWith => CopyWith$Input$FloatFieldComparisonBetween(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$FloatFieldComparisonBetween ||
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

abstract class CopyWith$Input$FloatFieldComparisonBetween<TRes> {
  factory CopyWith$Input$FloatFieldComparisonBetween(
    Input$FloatFieldComparisonBetween instance,
    TRes Function(Input$FloatFieldComparisonBetween) then,
  ) = _CopyWithImpl$Input$FloatFieldComparisonBetween;

  factory CopyWith$Input$FloatFieldComparisonBetween.stub(TRes res) =
      _CopyWithStubImpl$Input$FloatFieldComparisonBetween;

  TRes call({
    double? lower,
    double? upper,
  });
}

class _CopyWithImpl$Input$FloatFieldComparisonBetween<TRes>
    implements CopyWith$Input$FloatFieldComparisonBetween<TRes> {
  _CopyWithImpl$Input$FloatFieldComparisonBetween(
    this._instance,
    this._then,
  );

  final Input$FloatFieldComparisonBetween _instance;

  final TRes Function(Input$FloatFieldComparisonBetween) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? lower = _undefined,
    Object? upper = _undefined,
  }) =>
      _then(Input$FloatFieldComparisonBetween._({
        ..._instance._$data,
        if (lower != _undefined && lower != null) 'lower': (lower as double),
        if (upper != _undefined && upper != null) 'upper': (upper as double),
      }));
}

class _CopyWithStubImpl$Input$FloatFieldComparisonBetween<TRes>
    implements CopyWith$Input$FloatFieldComparisonBetween<TRes> {
  _CopyWithStubImpl$Input$FloatFieldComparisonBetween(this._res);

  TRes _res;

  call({
    double? lower,
    double? upper,
  }) =>
      _res;
}

class Input$MediaFilter {
  factory Input$MediaFilter({
    List<Input$MediaFilter>? and,
    List<Input$MediaFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$MediaFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$MediaFilter._(this._$data);

  factory Input$MediaFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$MediaFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$MediaFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$MediaFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$MediaFilter>? get and =>
      (_$data['and'] as List<Input$MediaFilter>?);

  List<Input$MediaFilter>? get or => (_$data['or'] as List<Input$MediaFilter>?);

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

  CopyWith$Input$MediaFilter<Input$MediaFilter> get copyWith =>
      CopyWith$Input$MediaFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaFilter || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$MediaFilter<TRes> {
  factory CopyWith$Input$MediaFilter(
    Input$MediaFilter instance,
    TRes Function(Input$MediaFilter) then,
  ) = _CopyWithImpl$Input$MediaFilter;

  factory CopyWith$Input$MediaFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaFilter;

  TRes call({
    List<Input$MediaFilter>? and,
    List<Input$MediaFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$MediaFilter>? Function(
              Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$MediaFilter>? Function(
              Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$MediaFilter<TRes>
    implements CopyWith$Input$MediaFilter<TRes> {
  _CopyWithImpl$Input$MediaFilter(
    this._instance,
    this._then,
  );

  final Input$MediaFilter _instance;

  final TRes Function(Input$MediaFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$MediaFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$MediaFilter>?),
        if (or != _undefined) 'or': (or as List<Input$MediaFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$MediaFilter>? Function(
                  Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$MediaFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$MediaFilter>? Function(
                  Iterable<CopyWith$Input$MediaFilter<Input$MediaFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$MediaFilter(
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

class _CopyWithStubImpl$Input$MediaFilter<TRes>
    implements CopyWith$Input$MediaFilter<TRes> {
  _CopyWithStubImpl$Input$MediaFilter(this._res);

  TRes _res;

  call({
    List<Input$MediaFilter>? and,
    List<Input$MediaFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$MediaSort {
  factory Input$MediaSort({
    required Enum$MediaSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$MediaSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$MediaSort._(this._$data);

  factory Input$MediaSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] = fromJson$Enum$MediaSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$MediaSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$MediaSortFields get field => (_$data['field'] as Enum$MediaSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$MediaSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$MediaSort<Input$MediaSort> get copyWith =>
      CopyWith$Input$MediaSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$MediaSort || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$MediaSort<TRes> {
  factory CopyWith$Input$MediaSort(
    Input$MediaSort instance,
    TRes Function(Input$MediaSort) then,
  ) = _CopyWithImpl$Input$MediaSort;

  factory CopyWith$Input$MediaSort.stub(TRes res) =
      _CopyWithStubImpl$Input$MediaSort;

  TRes call({
    Enum$MediaSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$MediaSort<TRes>
    implements CopyWith$Input$MediaSort<TRes> {
  _CopyWithImpl$Input$MediaSort(
    this._instance,
    this._then,
  );

  final Input$MediaSort _instance;

  final TRes Function(Input$MediaSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$MediaSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$MediaSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$MediaSort<TRes>
    implements CopyWith$Input$MediaSort<TRes> {
  _CopyWithStubImpl$Input$MediaSort(this._res);

  TRes _res;

  call({
    Enum$MediaSortFields? field,
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

class Input$OrderFilter {
  factory Input$OrderFilter({
    List<Input$OrderFilter>? and,
    List<Input$OrderFilter>? or,
    Input$IDFilterComparison? id,
    Input$OrderStatusFilterComparison? status,
    Input$DateFieldComparison? createdOn,
    Input$IntFieldComparison? distanceBest,
    Input$FloatFieldComparison? costBest,
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
        if (costBest != null) r'costBest': costBest,
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
    if (data.containsKey('costBest')) {
      final l$costBest = data['costBest'];
      result$data['costBest'] = l$costBest == null
          ? null
          : Input$FloatFieldComparison.fromJson(
              (l$costBest as Map<String, dynamic>));
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

  Input$FloatFieldComparison? get costBest =>
      (_$data['costBest'] as Input$FloatFieldComparison?);

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
    if (_$data.containsKey('costBest')) {
      final l$costBest = costBest;
      result$data['costBest'] = l$costBest?.toJson();
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
    final l$costBest = costBest;
    final lOther$costBest = other.costBest;
    if (_$data.containsKey('costBest') !=
        other._$data.containsKey('costBest')) {
      return false;
    }
    if (l$costBest != lOther$costBest) {
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
    final l$costBest = costBest;
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
      _$data.containsKey('costBest') ? l$costBest : const {},
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
    Input$FloatFieldComparison? costBest,
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
  CopyWith$Input$FloatFieldComparison<TRes> get costBest;
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
    Object? costBest = _undefined,
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
        if (costBest != _undefined)
          'costBest': (costBest as Input$FloatFieldComparison?),
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

  CopyWith$Input$FloatFieldComparison<TRes> get costBest {
    final local$costBest = _instance.costBest;
    return local$costBest == null
        ? CopyWith$Input$FloatFieldComparison.stub(_then(_instance))
        : CopyWith$Input$FloatFieldComparison(
            local$costBest, (e) => call(costBest: e));
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
    Input$FloatFieldComparison? costBest,
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

  CopyWith$Input$FloatFieldComparison<TRes> get costBest =>
      CopyWith$Input$FloatFieldComparison.stub(_res);

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

class Input$SavedPaymentMethodFilter {
  factory Input$SavedPaymentMethodFilter({
    List<Input$SavedPaymentMethodFilter>? and,
    List<Input$SavedPaymentMethodFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$SavedPaymentMethodFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (driverId != null) r'driverId': driverId,
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
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
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

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

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
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
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
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$driverId = driverId;
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
      _$data.containsKey('driverId') ? l$driverId : const {},
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
    Input$IDFilterComparison? driverId,
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
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
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
    Object? driverId = _undefined,
  }) =>
      _then(Input$SavedPaymentMethodFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$SavedPaymentMethodFilter>?),
        if (or != _undefined)
          'or': (or as List<Input$SavedPaymentMethodFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
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

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
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
    Input$IDFilterComparison? driverId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
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

class Input$DriverTransacionFilter {
  factory Input$DriverTransacionFilter({
    List<Input$DriverTransacionFilter>? and,
    List<Input$DriverTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$DriverTransacionFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (driverId != null) r'driverId': driverId,
      });

  Input$DriverTransacionFilter._(this._$data);

  factory Input$DriverTransacionFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) => Input$DriverTransacionFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) => Input$DriverTransacionFilter.fromJson(
              (e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$DriverTransacionFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverTransacionFilter>? get and =>
      (_$data['and'] as List<Input$DriverTransacionFilter>?);

  List<Input$DriverTransacionFilter>? get or =>
      (_$data['or'] as List<Input$DriverTransacionFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

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
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverTransacionFilter<Input$DriverTransacionFilter>
      get copyWith => CopyWith$Input$DriverTransacionFilter(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverTransacionFilter ||
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
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$driverId = driverId;
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
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverTransacionFilter<TRes> {
  factory CopyWith$Input$DriverTransacionFilter(
    Input$DriverTransacionFilter instance,
    TRes Function(Input$DriverTransacionFilter) then,
  ) = _CopyWithImpl$Input$DriverTransacionFilter;

  factory CopyWith$Input$DriverTransacionFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverTransacionFilter;

  TRes call({
    List<Input$DriverTransacionFilter>? and,
    List<Input$DriverTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$DriverTransacionFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverTransacionFilter<
                      Input$DriverTransacionFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverTransacionFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverTransacionFilter<
                      Input$DriverTransacionFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$DriverTransacionFilter<TRes>
    implements CopyWith$Input$DriverTransacionFilter<TRes> {
  _CopyWithImpl$Input$DriverTransacionFilter(
    this._instance,
    this._then,
  );

  final Input$DriverTransacionFilter _instance;

  final TRes Function(Input$DriverTransacionFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$DriverTransacionFilter._({
        ..._instance._$data,
        if (and != _undefined)
          'and': (and as List<Input$DriverTransacionFilter>?),
        if (or != _undefined) 'or': (or as List<Input$DriverTransacionFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$DriverTransacionFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverTransacionFilter<
                          Input$DriverTransacionFilter>>?)
              _fn) =>
      call(
          and: _fn(
              _instance.and?.map((e) => CopyWith$Input$DriverTransacionFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  TRes or(
          Iterable<Input$DriverTransacionFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverTransacionFilter<
                          Input$DriverTransacionFilter>>?)
              _fn) =>
      call(
          or: _fn(
              _instance.or?.map((e) => CopyWith$Input$DriverTransacionFilter(
                    e,
                    (i) => i,
                  )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$DriverTransacionFilter<TRes>
    implements CopyWith$Input$DriverTransacionFilter<TRes> {
  _CopyWithStubImpl$Input$DriverTransacionFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverTransacionFilter>? and,
    List<Input$DriverTransacionFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$DriverTransacionSort {
  factory Input$DriverTransacionSort({
    required Enum$DriverTransacionSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$DriverTransacionSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$DriverTransacionSort._(this._$data);

  factory Input$DriverTransacionSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$DriverTransacionSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$DriverTransacionSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverTransacionSortFields get field =>
      (_$data['field'] as Enum$DriverTransacionSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$DriverTransacionSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$DriverTransacionSort<Input$DriverTransacionSort>
      get copyWith => CopyWith$Input$DriverTransacionSort(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverTransacionSort ||
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

abstract class CopyWith$Input$DriverTransacionSort<TRes> {
  factory CopyWith$Input$DriverTransacionSort(
    Input$DriverTransacionSort instance,
    TRes Function(Input$DriverTransacionSort) then,
  ) = _CopyWithImpl$Input$DriverTransacionSort;

  factory CopyWith$Input$DriverTransacionSort.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverTransacionSort;

  TRes call({
    Enum$DriverTransacionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$DriverTransacionSort<TRes>
    implements CopyWith$Input$DriverTransacionSort<TRes> {
  _CopyWithImpl$Input$DriverTransacionSort(
    this._instance,
    this._then,
  );

  final Input$DriverTransacionSort _instance;

  final TRes Function(Input$DriverTransacionSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$DriverTransacionSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$DriverTransacionSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$DriverTransacionSort<TRes>
    implements CopyWith$Input$DriverTransacionSort<TRes> {
  _CopyWithStubImpl$Input$DriverTransacionSort(this._res);

  TRes _res;

  call({
    Enum$DriverTransacionSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$DriverWalletFilter {
  factory Input$DriverWalletFilter({
    List<Input$DriverWalletFilter>? and,
    List<Input$DriverWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$DriverWalletFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (driverId != null) r'driverId': driverId,
      });

  Input$DriverWalletFilter._(this._$data);

  factory Input$DriverWalletFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$DriverWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$DriverWalletFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$DriverWalletFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$DriverWalletFilter>? get and =>
      (_$data['and'] as List<Input$DriverWalletFilter>?);

  List<Input$DriverWalletFilter>? get or =>
      (_$data['or'] as List<Input$DriverWalletFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

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
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$DriverWalletFilter<Input$DriverWalletFilter> get copyWith =>
      CopyWith$Input$DriverWalletFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverWalletFilter ||
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
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$driverId = driverId;
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
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$DriverWalletFilter<TRes> {
  factory CopyWith$Input$DriverWalletFilter(
    Input$DriverWalletFilter instance,
    TRes Function(Input$DriverWalletFilter) then,
  ) = _CopyWithImpl$Input$DriverWalletFilter;

  factory CopyWith$Input$DriverWalletFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverWalletFilter;

  TRes call({
    List<Input$DriverWalletFilter>? and,
    List<Input$DriverWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$DriverWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverWalletFilter<Input$DriverWalletFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$DriverWalletFilter>? Function(
              Iterable<
                  CopyWith$Input$DriverWalletFilter<Input$DriverWalletFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$DriverWalletFilter<TRes>
    implements CopyWith$Input$DriverWalletFilter<TRes> {
  _CopyWithImpl$Input$DriverWalletFilter(
    this._instance,
    this._then,
  );

  final Input$DriverWalletFilter _instance;

  final TRes Function(Input$DriverWalletFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$DriverWalletFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$DriverWalletFilter>?),
        if (or != _undefined) 'or': (or as List<Input$DriverWalletFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$DriverWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverWalletFilter<
                          Input$DriverWalletFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$DriverWalletFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$DriverWalletFilter>? Function(
                  Iterable<
                      CopyWith$Input$DriverWalletFilter<
                          Input$DriverWalletFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$DriverWalletFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$DriverWalletFilter<TRes>
    implements CopyWith$Input$DriverWalletFilter<TRes> {
  _CopyWithStubImpl$Input$DriverWalletFilter(this._res);

  TRes _res;

  call({
    List<Input$DriverWalletFilter>? and,
    List<Input$DriverWalletFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$DriverWalletSort {
  factory Input$DriverWalletSort({
    required Enum$DriverWalletSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$DriverWalletSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$DriverWalletSort._(this._$data);

  factory Input$DriverWalletSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$DriverWalletSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$DriverWalletSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$DriverWalletSortFields get field =>
      (_$data['field'] as Enum$DriverWalletSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$DriverWalletSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$DriverWalletSort<Input$DriverWalletSort> get copyWith =>
      CopyWith$Input$DriverWalletSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DriverWalletSort || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$DriverWalletSort<TRes> {
  factory CopyWith$Input$DriverWalletSort(
    Input$DriverWalletSort instance,
    TRes Function(Input$DriverWalletSort) then,
  ) = _CopyWithImpl$Input$DriverWalletSort;

  factory CopyWith$Input$DriverWalletSort.stub(TRes res) =
      _CopyWithStubImpl$Input$DriverWalletSort;

  TRes call({
    Enum$DriverWalletSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$DriverWalletSort<TRes>
    implements CopyWith$Input$DriverWalletSort<TRes> {
  _CopyWithImpl$Input$DriverWalletSort(
    this._instance,
    this._then,
  );

  final Input$DriverWalletSort _instance;

  final TRes Function(Input$DriverWalletSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$DriverWalletSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$DriverWalletSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$DriverWalletSort<TRes>
    implements CopyWith$Input$DriverWalletSort<TRes> {
  _CopyWithStubImpl$Input$DriverWalletSort(this._res);

  TRes _res;

  call({
    Enum$DriverWalletSortFields? field,
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

class Input$AppConfigInfoInput {
  factory Input$AppConfigInfoInput({
    String? logo,
    String? name,
    Enum$AppColorScheme? color,
  }) =>
      Input$AppConfigInfoInput._({
        if (logo != null) r'logo': logo,
        if (name != null) r'name': name,
        if (color != null) r'color': color,
      });

  Input$AppConfigInfoInput._(this._$data);

  factory Input$AppConfigInfoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('logo')) {
      final l$logo = data['logo'];
      result$data['logo'] = (l$logo as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('color')) {
      final l$color = data['color'];
      result$data['color'] = l$color == null
          ? null
          : fromJson$Enum$AppColorScheme((l$color as String));
    }
    return Input$AppConfigInfoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get logo => (_$data['logo'] as String?);

  String? get name => (_$data['name'] as String?);

  Enum$AppColorScheme? get color => (_$data['color'] as Enum$AppColorScheme?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('logo')) {
      final l$logo = logo;
      result$data['logo'] = l$logo;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('color')) {
      final l$color = color;
      result$data['color'] =
          l$color == null ? null : toJson$Enum$AppColorScheme(l$color);
    }
    return result$data;
  }

  CopyWith$Input$AppConfigInfoInput<Input$AppConfigInfoInput> get copyWith =>
      CopyWith$Input$AppConfigInfoInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AppConfigInfoInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$logo = logo;
    final lOther$logo = other.logo;
    if (_$data.containsKey('logo') != other._$data.containsKey('logo')) {
      return false;
    }
    if (l$logo != lOther$logo) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$color = color;
    final lOther$color = other.color;
    if (_$data.containsKey('color') != other._$data.containsKey('color')) {
      return false;
    }
    if (l$color != lOther$color) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$logo = logo;
    final l$name = name;
    final l$color = color;
    return Object.hashAll([
      _$data.containsKey('logo') ? l$logo : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('color') ? l$color : const {},
    ]);
  }
}

abstract class CopyWith$Input$AppConfigInfoInput<TRes> {
  factory CopyWith$Input$AppConfigInfoInput(
    Input$AppConfigInfoInput instance,
    TRes Function(Input$AppConfigInfoInput) then,
  ) = _CopyWithImpl$Input$AppConfigInfoInput;

  factory CopyWith$Input$AppConfigInfoInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AppConfigInfoInput;

  TRes call({
    String? logo,
    String? name,
    Enum$AppColorScheme? color,
  });
}

class _CopyWithImpl$Input$AppConfigInfoInput<TRes>
    implements CopyWith$Input$AppConfigInfoInput<TRes> {
  _CopyWithImpl$Input$AppConfigInfoInput(
    this._instance,
    this._then,
  );

  final Input$AppConfigInfoInput _instance;

  final TRes Function(Input$AppConfigInfoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? logo = _undefined,
    Object? name = _undefined,
    Object? color = _undefined,
  }) =>
      _then(Input$AppConfigInfoInput._({
        ..._instance._$data,
        if (logo != _undefined) 'logo': (logo as String?),
        if (name != _undefined) 'name': (name as String?),
        if (color != _undefined) 'color': (color as Enum$AppColorScheme?),
      }));
}

class _CopyWithStubImpl$Input$AppConfigInfoInput<TRes>
    implements CopyWith$Input$AppConfigInfoInput<TRes> {
  _CopyWithStubImpl$Input$AppConfigInfoInput(this._res);

  TRes _res;

  call({
    String? logo,
    String? name,
    Enum$AppColorScheme? color,
  }) =>
      _res;
}

class Input$OpeningHoursInput {
  factory Input$OpeningHoursInput({
    required String open,
    required String close,
  }) =>
      Input$OpeningHoursInput._({
        r'open': open,
        r'close': close,
      });

  Input$OpeningHoursInput._(this._$data);

  factory Input$OpeningHoursInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$open = data['open'];
    result$data['open'] = (l$open as String);
    final l$close = data['close'];
    result$data['close'] = (l$close as String);
    return Input$OpeningHoursInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get open => (_$data['open'] as String);

  String get close => (_$data['close'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$open = open;
    result$data['open'] = l$open;
    final l$close = close;
    result$data['close'] = l$close;
    return result$data;
  }

  CopyWith$Input$OpeningHoursInput<Input$OpeningHoursInput> get copyWith =>
      CopyWith$Input$OpeningHoursInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$OpeningHoursInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$open = open;
    final lOther$open = other.open;
    if (l$open != lOther$open) {
      return false;
    }
    final l$close = close;
    final lOther$close = other.close;
    if (l$close != lOther$close) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$open = open;
    final l$close = close;
    return Object.hashAll([
      l$open,
      l$close,
    ]);
  }
}

abstract class CopyWith$Input$OpeningHoursInput<TRes> {
  factory CopyWith$Input$OpeningHoursInput(
    Input$OpeningHoursInput instance,
    TRes Function(Input$OpeningHoursInput) then,
  ) = _CopyWithImpl$Input$OpeningHoursInput;

  factory CopyWith$Input$OpeningHoursInput.stub(TRes res) =
      _CopyWithStubImpl$Input$OpeningHoursInput;

  TRes call({
    String? open,
    String? close,
  });
}

class _CopyWithImpl$Input$OpeningHoursInput<TRes>
    implements CopyWith$Input$OpeningHoursInput<TRes> {
  _CopyWithImpl$Input$OpeningHoursInput(
    this._instance,
    this._then,
  );

  final Input$OpeningHoursInput _instance;

  final TRes Function(Input$OpeningHoursInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? open = _undefined,
    Object? close = _undefined,
  }) =>
      _then(Input$OpeningHoursInput._({
        ..._instance._$data,
        if (open != _undefined && open != null) 'open': (open as String),
        if (close != _undefined && close != null) 'close': (close as String),
      }));
}

class _CopyWithStubImpl$Input$OpeningHoursInput<TRes>
    implements CopyWith$Input$OpeningHoursInput<TRes> {
  _CopyWithStubImpl$Input$OpeningHoursInput(this._res);

  TRes _res;

  call({
    String? open,
    String? close,
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

class Input$GetPayoutLinkUrlInput {
  factory Input$GetPayoutLinkUrlInput({required String gatewayId}) =>
      Input$GetPayoutLinkUrlInput._({
        r'gatewayId': gatewayId,
      });

  Input$GetPayoutLinkUrlInput._(this._$data);

  factory Input$GetPayoutLinkUrlInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
    return Input$GetPayoutLinkUrlInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
    return result$data;
  }

  CopyWith$Input$GetPayoutLinkUrlInput<Input$GetPayoutLinkUrlInput>
      get copyWith => CopyWith$Input$GetPayoutLinkUrlInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$GetPayoutLinkUrlInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gatewayId = gatewayId;
    final lOther$gatewayId = other.gatewayId;
    if (l$gatewayId != lOther$gatewayId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$gatewayId = gatewayId;
    return Object.hashAll([l$gatewayId]);
  }
}

abstract class CopyWith$Input$GetPayoutLinkUrlInput<TRes> {
  factory CopyWith$Input$GetPayoutLinkUrlInput(
    Input$GetPayoutLinkUrlInput instance,
    TRes Function(Input$GetPayoutLinkUrlInput) then,
  ) = _CopyWithImpl$Input$GetPayoutLinkUrlInput;

  factory CopyWith$Input$GetPayoutLinkUrlInput.stub(TRes res) =
      _CopyWithStubImpl$Input$GetPayoutLinkUrlInput;

  TRes call({String? gatewayId});
}

class _CopyWithImpl$Input$GetPayoutLinkUrlInput<TRes>
    implements CopyWith$Input$GetPayoutLinkUrlInput<TRes> {
  _CopyWithImpl$Input$GetPayoutLinkUrlInput(
    this._instance,
    this._then,
  );

  final Input$GetPayoutLinkUrlInput _instance;

  final TRes Function(Input$GetPayoutLinkUrlInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? gatewayId = _undefined}) =>
      _then(Input$GetPayoutLinkUrlInput._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
      }));
}

class _CopyWithStubImpl$Input$GetPayoutLinkUrlInput<TRes>
    implements CopyWith$Input$GetPayoutLinkUrlInput<TRes> {
  _CopyWithStubImpl$Input$GetPayoutLinkUrlInput(this._res);

  TRes _res;

  call({String? gatewayId}) => _res;
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

class Input$PayoutAccountFilter {
  factory Input$PayoutAccountFilter({
    List<Input$PayoutAccountFilter>? and,
    List<Input$PayoutAccountFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      Input$PayoutAccountFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
        if (driverId != null) r'driverId': driverId,
      });

  Input$PayoutAccountFilter._(this._$data);

  factory Input$PayoutAccountFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$PayoutAccountFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$PayoutAccountFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = l$driverId == null
          ? null
          : Input$IDFilterComparison.fromJson(
              (l$driverId as Map<String, dynamic>));
    }
    return Input$PayoutAccountFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayoutAccountFilter>? get and =>
      (_$data['and'] as List<Input$PayoutAccountFilter>?);

  List<Input$PayoutAccountFilter>? get or =>
      (_$data['or'] as List<Input$PayoutAccountFilter>?);

  Input$IDFilterComparison? get id =>
      (_$data['id'] as Input$IDFilterComparison?);

  Input$IDFilterComparison? get driverId =>
      (_$data['driverId'] as Input$IDFilterComparison?);

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
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId?.toJson();
    }
    return result$data;
  }

  CopyWith$Input$PayoutAccountFilter<Input$PayoutAccountFilter> get copyWith =>
      CopyWith$Input$PayoutAccountFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PayoutAccountFilter ||
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
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (_$data.containsKey('driverId') !=
        other._$data.containsKey('driverId')) {
      return false;
    }
    if (l$driverId != lOther$driverId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$and = and;
    final l$or = or;
    final l$id = id;
    final l$driverId = driverId;
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
      _$data.containsKey('driverId') ? l$driverId : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayoutAccountFilter<TRes> {
  factory CopyWith$Input$PayoutAccountFilter(
    Input$PayoutAccountFilter instance,
    TRes Function(Input$PayoutAccountFilter) then,
  ) = _CopyWithImpl$Input$PayoutAccountFilter;

  factory CopyWith$Input$PayoutAccountFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PayoutAccountFilter;

  TRes call({
    List<Input$PayoutAccountFilter>? and,
    List<Input$PayoutAccountFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  });
  TRes and(
      Iterable<Input$PayoutAccountFilter>? Function(
              Iterable<
                  CopyWith$Input$PayoutAccountFilter<
                      Input$PayoutAccountFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$PayoutAccountFilter>? Function(
              Iterable<
                  CopyWith$Input$PayoutAccountFilter<
                      Input$PayoutAccountFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
  CopyWith$Input$IDFilterComparison<TRes> get driverId;
}

class _CopyWithImpl$Input$PayoutAccountFilter<TRes>
    implements CopyWith$Input$PayoutAccountFilter<TRes> {
  _CopyWithImpl$Input$PayoutAccountFilter(
    this._instance,
    this._then,
  );

  final Input$PayoutAccountFilter _instance;

  final TRes Function(Input$PayoutAccountFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
    Object? driverId = _undefined,
  }) =>
      _then(Input$PayoutAccountFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$PayoutAccountFilter>?),
        if (or != _undefined) 'or': (or as List<Input$PayoutAccountFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
        if (driverId != _undefined)
          'driverId': (driverId as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$PayoutAccountFilter>? Function(
                  Iterable<
                      CopyWith$Input$PayoutAccountFilter<
                          Input$PayoutAccountFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$PayoutAccountFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$PayoutAccountFilter>? Function(
                  Iterable<
                      CopyWith$Input$PayoutAccountFilter<
                          Input$PayoutAccountFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$PayoutAccountFilter(
                e,
                (i) => i,
              )))?.toList());

  CopyWith$Input$IDFilterComparison<TRes> get id {
    final local$id = _instance.id;
    return local$id == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(local$id, (e) => call(id: e));
  }

  CopyWith$Input$IDFilterComparison<TRes> get driverId {
    final local$driverId = _instance.driverId;
    return local$driverId == null
        ? CopyWith$Input$IDFilterComparison.stub(_then(_instance))
        : CopyWith$Input$IDFilterComparison(
            local$driverId, (e) => call(driverId: e));
  }
}

class _CopyWithStubImpl$Input$PayoutAccountFilter<TRes>
    implements CopyWith$Input$PayoutAccountFilter<TRes> {
  _CopyWithStubImpl$Input$PayoutAccountFilter(this._res);

  TRes _res;

  call({
    List<Input$PayoutAccountFilter>? and,
    List<Input$PayoutAccountFilter>? or,
    Input$IDFilterComparison? id,
    Input$IDFilterComparison? driverId,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);

  CopyWith$Input$IDFilterComparison<TRes> get driverId =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$PayoutAccountSort {
  factory Input$PayoutAccountSort({
    required Enum$PayoutAccountSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$PayoutAccountSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$PayoutAccountSort._(this._$data);

  factory Input$PayoutAccountSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$PayoutAccountSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$PayoutAccountSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PayoutAccountSortFields get field =>
      (_$data['field'] as Enum$PayoutAccountSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$PayoutAccountSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$PayoutAccountSort<Input$PayoutAccountSort> get copyWith =>
      CopyWith$Input$PayoutAccountSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PayoutAccountSort || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$PayoutAccountSort<TRes> {
  factory CopyWith$Input$PayoutAccountSort(
    Input$PayoutAccountSort instance,
    TRes Function(Input$PayoutAccountSort) then,
  ) = _CopyWithImpl$Input$PayoutAccountSort;

  factory CopyWith$Input$PayoutAccountSort.stub(TRes res) =
      _CopyWithStubImpl$Input$PayoutAccountSort;

  TRes call({
    Enum$PayoutAccountSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$PayoutAccountSort<TRes>
    implements CopyWith$Input$PayoutAccountSort<TRes> {
  _CopyWithImpl$Input$PayoutAccountSort(
    this._instance,
    this._then,
  );

  final Input$PayoutAccountSort _instance;

  final TRes Function(Input$PayoutAccountSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$PayoutAccountSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$PayoutAccountSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$PayoutAccountSort<TRes>
    implements CopyWith$Input$PayoutAccountSort<TRes> {
  _CopyWithStubImpl$Input$PayoutAccountSort(this._res);

  TRes _res;

  call({
    Enum$PayoutAccountSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$PayoutMethodFilter {
  factory Input$PayoutMethodFilter({
    List<Input$PayoutMethodFilter>? and,
    List<Input$PayoutMethodFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$PayoutMethodFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$PayoutMethodFilter._(this._$data);

  factory Input$PayoutMethodFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map((e) =>
              Input$PayoutMethodFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map((e) =>
              Input$PayoutMethodFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$PayoutMethodFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$PayoutMethodFilter>? get and =>
      (_$data['and'] as List<Input$PayoutMethodFilter>?);

  List<Input$PayoutMethodFilter>? get or =>
      (_$data['or'] as List<Input$PayoutMethodFilter>?);

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

  CopyWith$Input$PayoutMethodFilter<Input$PayoutMethodFilter> get copyWith =>
      CopyWith$Input$PayoutMethodFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PayoutMethodFilter ||
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

abstract class CopyWith$Input$PayoutMethodFilter<TRes> {
  factory CopyWith$Input$PayoutMethodFilter(
    Input$PayoutMethodFilter instance,
    TRes Function(Input$PayoutMethodFilter) then,
  ) = _CopyWithImpl$Input$PayoutMethodFilter;

  factory CopyWith$Input$PayoutMethodFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$PayoutMethodFilter;

  TRes call({
    List<Input$PayoutMethodFilter>? and,
    List<Input$PayoutMethodFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$PayoutMethodFilter>? Function(
              Iterable<
                  CopyWith$Input$PayoutMethodFilter<Input$PayoutMethodFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$PayoutMethodFilter>? Function(
              Iterable<
                  CopyWith$Input$PayoutMethodFilter<Input$PayoutMethodFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$PayoutMethodFilter<TRes>
    implements CopyWith$Input$PayoutMethodFilter<TRes> {
  _CopyWithImpl$Input$PayoutMethodFilter(
    this._instance,
    this._then,
  );

  final Input$PayoutMethodFilter _instance;

  final TRes Function(Input$PayoutMethodFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$PayoutMethodFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$PayoutMethodFilter>?),
        if (or != _undefined) 'or': (or as List<Input$PayoutMethodFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$PayoutMethodFilter>? Function(
                  Iterable<
                      CopyWith$Input$PayoutMethodFilter<
                          Input$PayoutMethodFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$PayoutMethodFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$PayoutMethodFilter>? Function(
                  Iterable<
                      CopyWith$Input$PayoutMethodFilter<
                          Input$PayoutMethodFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$PayoutMethodFilter(
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

class _CopyWithStubImpl$Input$PayoutMethodFilter<TRes>
    implements CopyWith$Input$PayoutMethodFilter<TRes> {
  _CopyWithStubImpl$Input$PayoutMethodFilter(this._res);

  TRes _res;

  call({
    List<Input$PayoutMethodFilter>? and,
    List<Input$PayoutMethodFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$PayoutMethodSort {
  factory Input$PayoutMethodSort({
    required Enum$PayoutMethodSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$PayoutMethodSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$PayoutMethodSort._(this._$data);

  factory Input$PayoutMethodSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$PayoutMethodSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$PayoutMethodSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$PayoutMethodSortFields get field =>
      (_$data['field'] as Enum$PayoutMethodSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$PayoutMethodSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$PayoutMethodSort<Input$PayoutMethodSort> get copyWith =>
      CopyWith$Input$PayoutMethodSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PayoutMethodSort || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$PayoutMethodSort<TRes> {
  factory CopyWith$Input$PayoutMethodSort(
    Input$PayoutMethodSort instance,
    TRes Function(Input$PayoutMethodSort) then,
  ) = _CopyWithImpl$Input$PayoutMethodSort;

  factory CopyWith$Input$PayoutMethodSort.stub(TRes res) =
      _CopyWithStubImpl$Input$PayoutMethodSort;

  TRes call({
    Enum$PayoutMethodSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$PayoutMethodSort<TRes>
    implements CopyWith$Input$PayoutMethodSort<TRes> {
  _CopyWithImpl$Input$PayoutMethodSort(
    this._instance,
    this._then,
  );

  final Input$PayoutMethodSort _instance;

  final TRes Function(Input$PayoutMethodSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$PayoutMethodSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$PayoutMethodSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$PayoutMethodSort<TRes>
    implements CopyWith$Input$PayoutMethodSort<TRes> {
  _CopyWithStubImpl$Input$PayoutMethodSort(this._res);

  TRes _res;

  call({
    Enum$PayoutMethodSortFields? field,
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

class Input$CarModelFilter {
  factory Input$CarModelFilter({
    List<Input$CarModelFilter>? and,
    List<Input$CarModelFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$CarModelFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$CarModelFilter._(this._$data);

  factory Input$CarModelFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$CarModelFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$CarModelFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$CarModelFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CarModelFilter>? get and =>
      (_$data['and'] as List<Input$CarModelFilter>?);

  List<Input$CarModelFilter>? get or =>
      (_$data['or'] as List<Input$CarModelFilter>?);

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

  CopyWith$Input$CarModelFilter<Input$CarModelFilter> get copyWith =>
      CopyWith$Input$CarModelFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CarModelFilter || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$CarModelFilter<TRes> {
  factory CopyWith$Input$CarModelFilter(
    Input$CarModelFilter instance,
    TRes Function(Input$CarModelFilter) then,
  ) = _CopyWithImpl$Input$CarModelFilter;

  factory CopyWith$Input$CarModelFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CarModelFilter;

  TRes call({
    List<Input$CarModelFilter>? and,
    List<Input$CarModelFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$CarModelFilter>? Function(
              Iterable<CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$CarModelFilter>? Function(
              Iterable<CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$CarModelFilter<TRes>
    implements CopyWith$Input$CarModelFilter<TRes> {
  _CopyWithImpl$Input$CarModelFilter(
    this._instance,
    this._then,
  );

  final Input$CarModelFilter _instance;

  final TRes Function(Input$CarModelFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$CarModelFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$CarModelFilter>?),
        if (or != _undefined) 'or': (or as List<Input$CarModelFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$CarModelFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$CarModelFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$CarModelFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarModelFilter<Input$CarModelFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$CarModelFilter(
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

class _CopyWithStubImpl$Input$CarModelFilter<TRes>
    implements CopyWith$Input$CarModelFilter<TRes> {
  _CopyWithStubImpl$Input$CarModelFilter(this._res);

  TRes _res;

  call({
    List<Input$CarModelFilter>? and,
    List<Input$CarModelFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$CarModelSort {
  factory Input$CarModelSort({
    required Enum$CarModelSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$CarModelSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$CarModelSort._(this._$data);

  factory Input$CarModelSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$CarModelSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$CarModelSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CarModelSortFields get field =>
      (_$data['field'] as Enum$CarModelSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$CarModelSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$CarModelSort<Input$CarModelSort> get copyWith =>
      CopyWith$Input$CarModelSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CarModelSort || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$CarModelSort<TRes> {
  factory CopyWith$Input$CarModelSort(
    Input$CarModelSort instance,
    TRes Function(Input$CarModelSort) then,
  ) = _CopyWithImpl$Input$CarModelSort;

  factory CopyWith$Input$CarModelSort.stub(TRes res) =
      _CopyWithStubImpl$Input$CarModelSort;

  TRes call({
    Enum$CarModelSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$CarModelSort<TRes>
    implements CopyWith$Input$CarModelSort<TRes> {
  _CopyWithImpl$Input$CarModelSort(
    this._instance,
    this._then,
  );

  final Input$CarModelSort _instance;

  final TRes Function(Input$CarModelSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$CarModelSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$CarModelSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$CarModelSort<TRes>
    implements CopyWith$Input$CarModelSort<TRes> {
  _CopyWithStubImpl$Input$CarModelSort(this._res);

  TRes _res;

  call({
    Enum$CarModelSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  }) =>
      _res;
}

class Input$CarColorFilter {
  factory Input$CarColorFilter({
    List<Input$CarColorFilter>? and,
    List<Input$CarColorFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      Input$CarColorFilter._({
        if (and != null) r'and': and,
        if (or != null) r'or': or,
        if (id != null) r'id': id,
      });

  Input$CarColorFilter._(this._$data);

  factory Input$CarColorFilter.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('and')) {
      final l$and = data['and'];
      result$data['and'] = (l$and as List<dynamic>?)
          ?.map(
              (e) => Input$CarColorFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('or')) {
      final l$or = data['or'];
      result$data['or'] = (l$or as List<dynamic>?)
          ?.map(
              (e) => Input$CarColorFilter.fromJson((e as Map<String, dynamic>)))
          .toList();
    }
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = l$id == null
          ? null
          : Input$IDFilterComparison.fromJson((l$id as Map<String, dynamic>));
    }
    return Input$CarColorFilter._(result$data);
  }

  Map<String, dynamic> _$data;

  List<Input$CarColorFilter>? get and =>
      (_$data['and'] as List<Input$CarColorFilter>?);

  List<Input$CarColorFilter>? get or =>
      (_$data['or'] as List<Input$CarColorFilter>?);

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

  CopyWith$Input$CarColorFilter<Input$CarColorFilter> get copyWith =>
      CopyWith$Input$CarColorFilter(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CarColorFilter || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$CarColorFilter<TRes> {
  factory CopyWith$Input$CarColorFilter(
    Input$CarColorFilter instance,
    TRes Function(Input$CarColorFilter) then,
  ) = _CopyWithImpl$Input$CarColorFilter;

  factory CopyWith$Input$CarColorFilter.stub(TRes res) =
      _CopyWithStubImpl$Input$CarColorFilter;

  TRes call({
    List<Input$CarColorFilter>? and,
    List<Input$CarColorFilter>? or,
    Input$IDFilterComparison? id,
  });
  TRes and(
      Iterable<Input$CarColorFilter>? Function(
              Iterable<CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
          _fn);
  TRes or(
      Iterable<Input$CarColorFilter>? Function(
              Iterable<CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
          _fn);
  CopyWith$Input$IDFilterComparison<TRes> get id;
}

class _CopyWithImpl$Input$CarColorFilter<TRes>
    implements CopyWith$Input$CarColorFilter<TRes> {
  _CopyWithImpl$Input$CarColorFilter(
    this._instance,
    this._then,
  );

  final Input$CarColorFilter _instance;

  final TRes Function(Input$CarColorFilter) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? and = _undefined,
    Object? or = _undefined,
    Object? id = _undefined,
  }) =>
      _then(Input$CarColorFilter._({
        ..._instance._$data,
        if (and != _undefined) 'and': (and as List<Input$CarColorFilter>?),
        if (or != _undefined) 'or': (or as List<Input$CarColorFilter>?),
        if (id != _undefined) 'id': (id as Input$IDFilterComparison?),
      }));

  TRes and(
          Iterable<Input$CarColorFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
              _fn) =>
      call(
          and: _fn(_instance.and?.map((e) => CopyWith$Input$CarColorFilter(
                e,
                (i) => i,
              )))?.toList());

  TRes or(
          Iterable<Input$CarColorFilter>? Function(
                  Iterable<
                      CopyWith$Input$CarColorFilter<Input$CarColorFilter>>?)
              _fn) =>
      call(
          or: _fn(_instance.or?.map((e) => CopyWith$Input$CarColorFilter(
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

class _CopyWithStubImpl$Input$CarColorFilter<TRes>
    implements CopyWith$Input$CarColorFilter<TRes> {
  _CopyWithStubImpl$Input$CarColorFilter(this._res);

  TRes _res;

  call({
    List<Input$CarColorFilter>? and,
    List<Input$CarColorFilter>? or,
    Input$IDFilterComparison? id,
  }) =>
      _res;

  and(_fn) => _res;

  or(_fn) => _res;

  CopyWith$Input$IDFilterComparison<TRes> get id =>
      CopyWith$Input$IDFilterComparison.stub(_res);
}

class Input$CarColorSort {
  factory Input$CarColorSort({
    required Enum$CarColorSortFields field,
    required Enum$SortDirection direction,
    Enum$SortNulls? nulls,
  }) =>
      Input$CarColorSort._({
        r'field': field,
        r'direction': direction,
        if (nulls != null) r'nulls': nulls,
      });

  Input$CarColorSort._(this._$data);

  factory Input$CarColorSort.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$field = data['field'];
    result$data['field'] =
        fromJson$Enum$CarColorSortFields((l$field as String));
    final l$direction = data['direction'];
    result$data['direction'] =
        fromJson$Enum$SortDirection((l$direction as String));
    if (data.containsKey('nulls')) {
      final l$nulls = data['nulls'];
      result$data['nulls'] =
          l$nulls == null ? null : fromJson$Enum$SortNulls((l$nulls as String));
    }
    return Input$CarColorSort._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$CarColorSortFields get field =>
      (_$data['field'] as Enum$CarColorSortFields);

  Enum$SortDirection get direction =>
      (_$data['direction'] as Enum$SortDirection);

  Enum$SortNulls? get nulls => (_$data['nulls'] as Enum$SortNulls?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$field = field;
    result$data['field'] = toJson$Enum$CarColorSortFields(l$field);
    final l$direction = direction;
    result$data['direction'] = toJson$Enum$SortDirection(l$direction);
    if (_$data.containsKey('nulls')) {
      final l$nulls = nulls;
      result$data['nulls'] =
          l$nulls == null ? null : toJson$Enum$SortNulls(l$nulls);
    }
    return result$data;
  }

  CopyWith$Input$CarColorSort<Input$CarColorSort> get copyWith =>
      CopyWith$Input$CarColorSort(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CarColorSort || runtimeType != other.runtimeType) {
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

abstract class CopyWith$Input$CarColorSort<TRes> {
  factory CopyWith$Input$CarColorSort(
    Input$CarColorSort instance,
    TRes Function(Input$CarColorSort) then,
  ) = _CopyWithImpl$Input$CarColorSort;

  factory CopyWith$Input$CarColorSort.stub(TRes res) =
      _CopyWithStubImpl$Input$CarColorSort;

  TRes call({
    Enum$CarColorSortFields? field,
    Enum$SortDirection? direction,
    Enum$SortNulls? nulls,
  });
}

class _CopyWithImpl$Input$CarColorSort<TRes>
    implements CopyWith$Input$CarColorSort<TRes> {
  _CopyWithImpl$Input$CarColorSort(
    this._instance,
    this._then,
  );

  final Input$CarColorSort _instance;

  final TRes Function(Input$CarColorSort) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? field = _undefined,
    Object? direction = _undefined,
    Object? nulls = _undefined,
  }) =>
      _then(Input$CarColorSort._({
        ..._instance._$data,
        if (field != _undefined && field != null)
          'field': (field as Enum$CarColorSortFields),
        if (direction != _undefined && direction != null)
          'direction': (direction as Enum$SortDirection),
        if (nulls != _undefined) 'nulls': (nulls as Enum$SortNulls?),
      }));
}

class _CopyWithStubImpl$Input$CarColorSort<TRes>
    implements CopyWith$Input$CarColorSort<TRes> {
  _CopyWithStubImpl$Input$CarColorSort(this._res);

  TRes _res;

  call({
    Enum$CarColorSortFields? field,
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

class Input$UpdatePayoutMethodInput {
  factory Input$UpdatePayoutMethodInput({
    required String id,
    required bool isDefault,
  }) =>
      Input$UpdatePayoutMethodInput._({
        r'id': id,
        r'isDefault': isDefault,
      });

  Input$UpdatePayoutMethodInput._(this._$data);

  factory Input$UpdatePayoutMethodInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    return Input$UpdatePayoutMethodInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  bool get isDefault => (_$data['isDefault'] as bool);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$isDefault = isDefault;
    result$data['isDefault'] = l$isDefault;
    return result$data;
  }

  CopyWith$Input$UpdatePayoutMethodInput<Input$UpdatePayoutMethodInput>
      get copyWith => CopyWith$Input$UpdatePayoutMethodInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdatePayoutMethodInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$isDefault = isDefault;
    return Object.hashAll([
      l$id,
      l$isDefault,
    ]);
  }
}

abstract class CopyWith$Input$UpdatePayoutMethodInput<TRes> {
  factory CopyWith$Input$UpdatePayoutMethodInput(
    Input$UpdatePayoutMethodInput instance,
    TRes Function(Input$UpdatePayoutMethodInput) then,
  ) = _CopyWithImpl$Input$UpdatePayoutMethodInput;

  factory CopyWith$Input$UpdatePayoutMethodInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdatePayoutMethodInput;

  TRes call({
    String? id,
    bool? isDefault,
  });
}

class _CopyWithImpl$Input$UpdatePayoutMethodInput<TRes>
    implements CopyWith$Input$UpdatePayoutMethodInput<TRes> {
  _CopyWithImpl$Input$UpdatePayoutMethodInput(
    this._instance,
    this._then,
  );

  final Input$UpdatePayoutMethodInput _instance;

  final TRes Function(Input$UpdatePayoutMethodInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? isDefault = _undefined,
  }) =>
      _then(Input$UpdatePayoutMethodInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
      }));
}

class _CopyWithStubImpl$Input$UpdatePayoutMethodInput<TRes>
    implements CopyWith$Input$UpdatePayoutMethodInput<TRes> {
  _CopyWithStubImpl$Input$UpdatePayoutMethodInput(this._res);

  TRes _res;

  call({
    String? id,
    bool? isDefault,
  }) =>
      _res;
}

class Input$PayoutAccountInput {
  factory Input$PayoutAccountInput({
    required String name,
    required String payoutMethodId,
    required String accountNumber,
    String? routingNumber,
    required String bankName,
    String? accountHolderName,
    String? branchName,
    required bool isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
  }) =>
      Input$PayoutAccountInput._({
        r'name': name,
        r'payoutMethodId': payoutMethodId,
        r'accountNumber': accountNumber,
        if (routingNumber != null) r'routingNumber': routingNumber,
        r'bankName': bankName,
        if (accountHolderName != null) r'accountHolderName': accountHolderName,
        if (branchName != null) r'branchName': branchName,
        r'isDefault': isDefault,
        if (accountHolderAddress != null)
          r'accountHolderAddress': accountHolderAddress,
        if (accountHolderCity != null) r'accountHolderCity': accountHolderCity,
        if (accountHolderState != null)
          r'accountHolderState': accountHolderState,
        if (accountHolderZip != null) r'accountHolderZip': accountHolderZip,
        if (accountHolderCountry != null)
          r'accountHolderCountry': accountHolderCountry,
        if (accountHolderPhone != null)
          r'accountHolderPhone': accountHolderPhone,
        if (accountHolderDateOfBirth != null)
          r'accountHolderDateOfBirth': accountHolderDateOfBirth,
      });

  Input$PayoutAccountInput._(this._$data);

  factory Input$PayoutAccountInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$payoutMethodId = data['payoutMethodId'];
    result$data['payoutMethodId'] = (l$payoutMethodId as String);
    final l$accountNumber = data['accountNumber'];
    result$data['accountNumber'] = (l$accountNumber as String);
    if (data.containsKey('routingNumber')) {
      final l$routingNumber = data['routingNumber'];
      result$data['routingNumber'] = (l$routingNumber as String?);
    }
    final l$bankName = data['bankName'];
    result$data['bankName'] = (l$bankName as String);
    if (data.containsKey('accountHolderName')) {
      final l$accountHolderName = data['accountHolderName'];
      result$data['accountHolderName'] = (l$accountHolderName as String?);
    }
    if (data.containsKey('branchName')) {
      final l$branchName = data['branchName'];
      result$data['branchName'] = (l$branchName as String?);
    }
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    if (data.containsKey('accountHolderAddress')) {
      final l$accountHolderAddress = data['accountHolderAddress'];
      result$data['accountHolderAddress'] = (l$accountHolderAddress as String?);
    }
    if (data.containsKey('accountHolderCity')) {
      final l$accountHolderCity = data['accountHolderCity'];
      result$data['accountHolderCity'] = (l$accountHolderCity as String?);
    }
    if (data.containsKey('accountHolderState')) {
      final l$accountHolderState = data['accountHolderState'];
      result$data['accountHolderState'] = (l$accountHolderState as String?);
    }
    if (data.containsKey('accountHolderZip')) {
      final l$accountHolderZip = data['accountHolderZip'];
      result$data['accountHolderZip'] = (l$accountHolderZip as String?);
    }
    if (data.containsKey('accountHolderCountry')) {
      final l$accountHolderCountry = data['accountHolderCountry'];
      result$data['accountHolderCountry'] = (l$accountHolderCountry as String?);
    }
    if (data.containsKey('accountHolderPhone')) {
      final l$accountHolderPhone = data['accountHolderPhone'];
      result$data['accountHolderPhone'] = (l$accountHolderPhone as String?);
    }
    if (data.containsKey('accountHolderDateOfBirth')) {
      final l$accountHolderDateOfBirth = data['accountHolderDateOfBirth'];
      result$data['accountHolderDateOfBirth'] =
          l$accountHolderDateOfBirth == null
              ? null
              : fromGraphQLDateTimeToDartDateTime(l$accountHolderDateOfBirth);
    }
    return Input$PayoutAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get payoutMethodId => (_$data['payoutMethodId'] as String);

  String get accountNumber => (_$data['accountNumber'] as String);

  String? get routingNumber => (_$data['routingNumber'] as String?);

  String get bankName => (_$data['bankName'] as String);

  String? get accountHolderName => (_$data['accountHolderName'] as String?);

  String? get branchName => (_$data['branchName'] as String?);

  bool get isDefault => (_$data['isDefault'] as bool);

  String? get accountHolderAddress =>
      (_$data['accountHolderAddress'] as String?);

  String? get accountHolderCity => (_$data['accountHolderCity'] as String?);

  String? get accountHolderState => (_$data['accountHolderState'] as String?);

  String? get accountHolderZip => (_$data['accountHolderZip'] as String?);

  String? get accountHolderCountry =>
      (_$data['accountHolderCountry'] as String?);

  String? get accountHolderPhone => (_$data['accountHolderPhone'] as String?);

  DateTime? get accountHolderDateOfBirth =>
      (_$data['accountHolderDateOfBirth'] as DateTime?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$payoutMethodId = payoutMethodId;
    result$data['payoutMethodId'] = l$payoutMethodId;
    final l$accountNumber = accountNumber;
    result$data['accountNumber'] = l$accountNumber;
    if (_$data.containsKey('routingNumber')) {
      final l$routingNumber = routingNumber;
      result$data['routingNumber'] = l$routingNumber;
    }
    final l$bankName = bankName;
    result$data['bankName'] = l$bankName;
    if (_$data.containsKey('accountHolderName')) {
      final l$accountHolderName = accountHolderName;
      result$data['accountHolderName'] = l$accountHolderName;
    }
    if (_$data.containsKey('branchName')) {
      final l$branchName = branchName;
      result$data['branchName'] = l$branchName;
    }
    final l$isDefault = isDefault;
    result$data['isDefault'] = l$isDefault;
    if (_$data.containsKey('accountHolderAddress')) {
      final l$accountHolderAddress = accountHolderAddress;
      result$data['accountHolderAddress'] = l$accountHolderAddress;
    }
    if (_$data.containsKey('accountHolderCity')) {
      final l$accountHolderCity = accountHolderCity;
      result$data['accountHolderCity'] = l$accountHolderCity;
    }
    if (_$data.containsKey('accountHolderState')) {
      final l$accountHolderState = accountHolderState;
      result$data['accountHolderState'] = l$accountHolderState;
    }
    if (_$data.containsKey('accountHolderZip')) {
      final l$accountHolderZip = accountHolderZip;
      result$data['accountHolderZip'] = l$accountHolderZip;
    }
    if (_$data.containsKey('accountHolderCountry')) {
      final l$accountHolderCountry = accountHolderCountry;
      result$data['accountHolderCountry'] = l$accountHolderCountry;
    }
    if (_$data.containsKey('accountHolderPhone')) {
      final l$accountHolderPhone = accountHolderPhone;
      result$data['accountHolderPhone'] = l$accountHolderPhone;
    }
    if (_$data.containsKey('accountHolderDateOfBirth')) {
      final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
      result$data['accountHolderDateOfBirth'] =
          l$accountHolderDateOfBirth == null
              ? null
              : fromDartDateTimeToGraphQLDateTime(l$accountHolderDateOfBirth);
    }
    return result$data;
  }

  CopyWith$Input$PayoutAccountInput<Input$PayoutAccountInput> get copyWith =>
      CopyWith$Input$PayoutAccountInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$PayoutAccountInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$payoutMethodId = payoutMethodId;
    final lOther$payoutMethodId = other.payoutMethodId;
    if (l$payoutMethodId != lOther$payoutMethodId) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$routingNumber = routingNumber;
    final lOther$routingNumber = other.routingNumber;
    if (_$data.containsKey('routingNumber') !=
        other._$data.containsKey('routingNumber')) {
      return false;
    }
    if (l$routingNumber != lOther$routingNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (_$data.containsKey('accountHolderName') !=
        other._$data.containsKey('accountHolderName')) {
      return false;
    }
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$branchName = branchName;
    final lOther$branchName = other.branchName;
    if (_$data.containsKey('branchName') !=
        other._$data.containsKey('branchName')) {
      return false;
    }
    if (l$branchName != lOther$branchName) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$accountHolderAddress = accountHolderAddress;
    final lOther$accountHolderAddress = other.accountHolderAddress;
    if (_$data.containsKey('accountHolderAddress') !=
        other._$data.containsKey('accountHolderAddress')) {
      return false;
    }
    if (l$accountHolderAddress != lOther$accountHolderAddress) {
      return false;
    }
    final l$accountHolderCity = accountHolderCity;
    final lOther$accountHolderCity = other.accountHolderCity;
    if (_$data.containsKey('accountHolderCity') !=
        other._$data.containsKey('accountHolderCity')) {
      return false;
    }
    if (l$accountHolderCity != lOther$accountHolderCity) {
      return false;
    }
    final l$accountHolderState = accountHolderState;
    final lOther$accountHolderState = other.accountHolderState;
    if (_$data.containsKey('accountHolderState') !=
        other._$data.containsKey('accountHolderState')) {
      return false;
    }
    if (l$accountHolderState != lOther$accountHolderState) {
      return false;
    }
    final l$accountHolderZip = accountHolderZip;
    final lOther$accountHolderZip = other.accountHolderZip;
    if (_$data.containsKey('accountHolderZip') !=
        other._$data.containsKey('accountHolderZip')) {
      return false;
    }
    if (l$accountHolderZip != lOther$accountHolderZip) {
      return false;
    }
    final l$accountHolderCountry = accountHolderCountry;
    final lOther$accountHolderCountry = other.accountHolderCountry;
    if (_$data.containsKey('accountHolderCountry') !=
        other._$data.containsKey('accountHolderCountry')) {
      return false;
    }
    if (l$accountHolderCountry != lOther$accountHolderCountry) {
      return false;
    }
    final l$accountHolderPhone = accountHolderPhone;
    final lOther$accountHolderPhone = other.accountHolderPhone;
    if (_$data.containsKey('accountHolderPhone') !=
        other._$data.containsKey('accountHolderPhone')) {
      return false;
    }
    if (l$accountHolderPhone != lOther$accountHolderPhone) {
      return false;
    }
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final lOther$accountHolderDateOfBirth = other.accountHolderDateOfBirth;
    if (_$data.containsKey('accountHolderDateOfBirth') !=
        other._$data.containsKey('accountHolderDateOfBirth')) {
      return false;
    }
    if (l$accountHolderDateOfBirth != lOther$accountHolderDateOfBirth) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$payoutMethodId = payoutMethodId;
    final l$accountNumber = accountNumber;
    final l$routingNumber = routingNumber;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$branchName = branchName;
    final l$isDefault = isDefault;
    final l$accountHolderAddress = accountHolderAddress;
    final l$accountHolderCity = accountHolderCity;
    final l$accountHolderState = accountHolderState;
    final l$accountHolderZip = accountHolderZip;
    final l$accountHolderCountry = accountHolderCountry;
    final l$accountHolderPhone = accountHolderPhone;
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    return Object.hashAll([
      l$name,
      l$payoutMethodId,
      l$accountNumber,
      _$data.containsKey('routingNumber') ? l$routingNumber : const {},
      l$bankName,
      _$data.containsKey('accountHolderName') ? l$accountHolderName : const {},
      _$data.containsKey('branchName') ? l$branchName : const {},
      l$isDefault,
      _$data.containsKey('accountHolderAddress')
          ? l$accountHolderAddress
          : const {},
      _$data.containsKey('accountHolderCity') ? l$accountHolderCity : const {},
      _$data.containsKey('accountHolderState')
          ? l$accountHolderState
          : const {},
      _$data.containsKey('accountHolderZip') ? l$accountHolderZip : const {},
      _$data.containsKey('accountHolderCountry')
          ? l$accountHolderCountry
          : const {},
      _$data.containsKey('accountHolderPhone')
          ? l$accountHolderPhone
          : const {},
      _$data.containsKey('accountHolderDateOfBirth')
          ? l$accountHolderDateOfBirth
          : const {},
    ]);
  }
}

abstract class CopyWith$Input$PayoutAccountInput<TRes> {
  factory CopyWith$Input$PayoutAccountInput(
    Input$PayoutAccountInput instance,
    TRes Function(Input$PayoutAccountInput) then,
  ) = _CopyWithImpl$Input$PayoutAccountInput;

  factory CopyWith$Input$PayoutAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$PayoutAccountInput;

  TRes call({
    String? name,
    String? payoutMethodId,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
  });
}

class _CopyWithImpl$Input$PayoutAccountInput<TRes>
    implements CopyWith$Input$PayoutAccountInput<TRes> {
  _CopyWithImpl$Input$PayoutAccountInput(
    this._instance,
    this._then,
  );

  final Input$PayoutAccountInput _instance;

  final TRes Function(Input$PayoutAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? payoutMethodId = _undefined,
    Object? accountNumber = _undefined,
    Object? routingNumber = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? branchName = _undefined,
    Object? isDefault = _undefined,
    Object? accountHolderAddress = _undefined,
    Object? accountHolderCity = _undefined,
    Object? accountHolderState = _undefined,
    Object? accountHolderZip = _undefined,
    Object? accountHolderCountry = _undefined,
    Object? accountHolderPhone = _undefined,
    Object? accountHolderDateOfBirth = _undefined,
  }) =>
      _then(Input$PayoutAccountInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (payoutMethodId != _undefined && payoutMethodId != null)
          'payoutMethodId': (payoutMethodId as String),
        if (accountNumber != _undefined && accountNumber != null)
          'accountNumber': (accountNumber as String),
        if (routingNumber != _undefined)
          'routingNumber': (routingNumber as String?),
        if (bankName != _undefined && bankName != null)
          'bankName': (bankName as String),
        if (accountHolderName != _undefined)
          'accountHolderName': (accountHolderName as String?),
        if (branchName != _undefined) 'branchName': (branchName as String?),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
        if (accountHolderAddress != _undefined)
          'accountHolderAddress': (accountHolderAddress as String?),
        if (accountHolderCity != _undefined)
          'accountHolderCity': (accountHolderCity as String?),
        if (accountHolderState != _undefined)
          'accountHolderState': (accountHolderState as String?),
        if (accountHolderZip != _undefined)
          'accountHolderZip': (accountHolderZip as String?),
        if (accountHolderCountry != _undefined)
          'accountHolderCountry': (accountHolderCountry as String?),
        if (accountHolderPhone != _undefined)
          'accountHolderPhone': (accountHolderPhone as String?),
        if (accountHolderDateOfBirth != _undefined)
          'accountHolderDateOfBirth': (accountHolderDateOfBirth as DateTime?),
      }));
}

class _CopyWithStubImpl$Input$PayoutAccountInput<TRes>
    implements CopyWith$Input$PayoutAccountInput<TRes> {
  _CopyWithStubImpl$Input$PayoutAccountInput(this._res);

  TRes _res;

  call({
    String? name,
    String? payoutMethodId,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
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
    Enum$OrderStatus? status,
    double? paidAmount,
    int? destinationArrivedTo,
  }) =>
      Input$UpdateOrderInput._({
        if (status != null) r'status': status,
        if (paidAmount != null) r'paidAmount': paidAmount,
        if (destinationArrivedTo != null)
          r'destinationArrivedTo': destinationArrivedTo,
      });

  Input$UpdateOrderInput._(this._$data);

  factory Input$UpdateOrderInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$OrderStatus((l$status as String));
    }
    if (data.containsKey('paidAmount')) {
      final l$paidAmount = data['paidAmount'];
      result$data['paidAmount'] = (l$paidAmount as num?)?.toDouble();
    }
    if (data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = data['destinationArrivedTo'];
      result$data['destinationArrivedTo'] = (l$destinationArrivedTo as int?);
    }
    return Input$UpdateOrderInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Enum$OrderStatus? get status => (_$data['status'] as Enum$OrderStatus?);

  double? get paidAmount => (_$data['paidAmount'] as double?);

  int? get destinationArrivedTo => (_$data['destinationArrivedTo'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$OrderStatus(l$status);
    }
    if (_$data.containsKey('paidAmount')) {
      final l$paidAmount = paidAmount;
      result$data['paidAmount'] = l$paidAmount;
    }
    if (_$data.containsKey('destinationArrivedTo')) {
      final l$destinationArrivedTo = destinationArrivedTo;
      result$data['destinationArrivedTo'] = l$destinationArrivedTo;
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$paidAmount = paidAmount;
    final lOther$paidAmount = other.paidAmount;
    if (_$data.containsKey('paidAmount') !=
        other._$data.containsKey('paidAmount')) {
      return false;
    }
    if (l$paidAmount != lOther$paidAmount) {
      return false;
    }
    final l$destinationArrivedTo = destinationArrivedTo;
    final lOther$destinationArrivedTo = other.destinationArrivedTo;
    if (_$data.containsKey('destinationArrivedTo') !=
        other._$data.containsKey('destinationArrivedTo')) {
      return false;
    }
    if (l$destinationArrivedTo != lOther$destinationArrivedTo) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$status = status;
    final l$paidAmount = paidAmount;
    final l$destinationArrivedTo = destinationArrivedTo;
    return Object.hashAll([
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('paidAmount') ? l$paidAmount : const {},
      _$data.containsKey('destinationArrivedTo')
          ? l$destinationArrivedTo
          : const {},
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
    Enum$OrderStatus? status,
    double? paidAmount,
    int? destinationArrivedTo,
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
    Object? status = _undefined,
    Object? paidAmount = _undefined,
    Object? destinationArrivedTo = _undefined,
  }) =>
      _then(Input$UpdateOrderInput._({
        ..._instance._$data,
        if (status != _undefined) 'status': (status as Enum$OrderStatus?),
        if (paidAmount != _undefined) 'paidAmount': (paidAmount as double?),
        if (destinationArrivedTo != _undefined)
          'destinationArrivedTo': (destinationArrivedTo as int?),
      }));
}

class _CopyWithStubImpl$Input$UpdateOrderInput<TRes>
    implements CopyWith$Input$UpdateOrderInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOrderInput(this._res);

  TRes _res;

  call({
    Enum$OrderStatus? status,
    double? paidAmount,
    int? destinationArrivedTo,
  }) =>
      _res;
}

class Input$RiderReviewInput {
  factory Input$RiderReviewInput({
    required int score,
    String? description,
    required String orderId,
  }) =>
      Input$RiderReviewInput._({
        r'score': score,
        if (description != null) r'description': description,
        r'orderId': orderId,
      });

  Input$RiderReviewInput._(this._$data);

  factory Input$RiderReviewInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$score = data['score'];
    result$data['score'] = (l$score as int);
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    final l$orderId = data['orderId'];
    result$data['orderId'] = (l$orderId as String);
    return Input$RiderReviewInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get score => (_$data['score'] as int);

  String? get description => (_$data['description'] as String?);

  String get orderId => (_$data['orderId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$score = score;
    result$data['score'] = l$score;
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    final l$orderId = orderId;
    result$data['orderId'] = l$orderId;
    return result$data;
  }

  CopyWith$Input$RiderReviewInput<Input$RiderReviewInput> get copyWith =>
      CopyWith$Input$RiderReviewInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$RiderReviewInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$score = score;
    final lOther$score = other.score;
    if (l$score != lOther$score) {
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
    final l$orderId = orderId;
    final lOther$orderId = other.orderId;
    if (l$orderId != lOther$orderId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$score = score;
    final l$description = description;
    final l$orderId = orderId;
    return Object.hashAll([
      l$score,
      _$data.containsKey('description') ? l$description : const {},
      l$orderId,
    ]);
  }
}

abstract class CopyWith$Input$RiderReviewInput<TRes> {
  factory CopyWith$Input$RiderReviewInput(
    Input$RiderReviewInput instance,
    TRes Function(Input$RiderReviewInput) then,
  ) = _CopyWithImpl$Input$RiderReviewInput;

  factory CopyWith$Input$RiderReviewInput.stub(TRes res) =
      _CopyWithStubImpl$Input$RiderReviewInput;

  TRes call({
    int? score,
    String? description,
    String? orderId,
  });
}

class _CopyWithImpl$Input$RiderReviewInput<TRes>
    implements CopyWith$Input$RiderReviewInput<TRes> {
  _CopyWithImpl$Input$RiderReviewInput(
    this._instance,
    this._then,
  );

  final Input$RiderReviewInput _instance;

  final TRes Function(Input$RiderReviewInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? score = _undefined,
    Object? description = _undefined,
    Object? orderId = _undefined,
  }) =>
      _then(Input$RiderReviewInput._({
        ..._instance._$data,
        if (score != _undefined && score != null) 'score': (score as int),
        if (description != _undefined) 'description': (description as String?),
        if (orderId != _undefined && orderId != null)
          'orderId': (orderId as String),
      }));
}

class _CopyWithStubImpl$Input$RiderReviewInput<TRes>
    implements CopyWith$Input$RiderReviewInput<TRes> {
  _CopyWithStubImpl$Input$RiderReviewInput(this._res);

  TRes _res;

  call({
    int? score,
    String? description,
    String? orderId,
  }) =>
      _res;
}

class Input$TopUpWalletInput {
  factory Input$TopUpWalletInput({
    required String gatewayId,
    required double amount,
    required String currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
    Enum$PaymentMode? paymentMode,
  }) =>
      Input$TopUpWalletInput._({
        r'gatewayId': gatewayId,
        r'amount': amount,
        r'currency': currency,
        if (token != null) r'token': token,
        if (pin != null) r'pin': pin,
        if (otp != null) r'otp': otp,
        if (transactionId != null) r'transactionId': transactionId,
        if (paymentMode != null) r'paymentMode': paymentMode,
      });

  Input$TopUpWalletInput._(this._$data);

  factory Input$TopUpWalletInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$gatewayId = data['gatewayId'];
    result$data['gatewayId'] = (l$gatewayId as String);
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
    if (data.containsKey('paymentMode')) {
      final l$paymentMode = data['paymentMode'];
      result$data['paymentMode'] =
          fromJson$Enum$PaymentMode((l$paymentMode as String));
    }
    return Input$TopUpWalletInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get gatewayId => (_$data['gatewayId'] as String);

  double get amount => (_$data['amount'] as double);

  String get currency => (_$data['currency'] as String);

  String? get token => (_$data['token'] as String?);

  double? get pin => (_$data['pin'] as double?);

  double? get otp => (_$data['otp'] as double?);

  String? get transactionId => (_$data['transactionId'] as String?);

  Enum$PaymentMode? get paymentMode =>
      (_$data['paymentMode'] as Enum$PaymentMode?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$gatewayId = gatewayId;
    result$data['gatewayId'] = l$gatewayId;
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
    if (_$data.containsKey('paymentMode')) {
      final l$paymentMode = paymentMode;
      result$data['paymentMode'] =
          toJson$Enum$PaymentMode((l$paymentMode as Enum$PaymentMode));
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
    final l$gatewayId = gatewayId;
    final l$amount = amount;
    final l$currency = currency;
    final l$token = token;
    final l$pin = pin;
    final l$otp = otp;
    final l$transactionId = transactionId;
    final l$paymentMode = paymentMode;
    return Object.hashAll([
      l$gatewayId,
      l$amount,
      l$currency,
      _$data.containsKey('token') ? l$token : const {},
      _$data.containsKey('pin') ? l$pin : const {},
      _$data.containsKey('otp') ? l$otp : const {},
      _$data.containsKey('transactionId') ? l$transactionId : const {},
      _$data.containsKey('paymentMode') ? l$paymentMode : const {},
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
    double? amount,
    String? currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
    Enum$PaymentMode? paymentMode,
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
    Object? amount = _undefined,
    Object? currency = _undefined,
    Object? token = _undefined,
    Object? pin = _undefined,
    Object? otp = _undefined,
    Object? transactionId = _undefined,
    Object? paymentMode = _undefined,
  }) =>
      _then(Input$TopUpWalletInput._({
        ..._instance._$data,
        if (gatewayId != _undefined && gatewayId != null)
          'gatewayId': (gatewayId as String),
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (currency != _undefined && currency != null)
          'currency': (currency as String),
        if (token != _undefined) 'token': (token as String?),
        if (pin != _undefined) 'pin': (pin as double?),
        if (otp != _undefined) 'otp': (otp as double?),
        if (transactionId != _undefined)
          'transactionId': (transactionId as String?),
        if (paymentMode != _undefined && paymentMode != null)
          'paymentMode': (paymentMode as Enum$PaymentMode),
      }));
}

class _CopyWithStubImpl$Input$TopUpWalletInput<TRes>
    implements CopyWith$Input$TopUpWalletInput<TRes> {
  _CopyWithStubImpl$Input$TopUpWalletInput(this._res);

  TRes _res;

  call({
    String? gatewayId,
    double? amount,
    String? currency,
    String? token,
    double? pin,
    double? otp,
    String? transactionId,
    Enum$PaymentMode? paymentMode,
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

class Input$AddOptionsToServiceInput {
  factory Input$AddOptionsToServiceInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$AddOptionsToServiceInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$AddOptionsToServiceInput._(this._$data);

  factory Input$AddOptionsToServiceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$AddOptionsToServiceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<String> get relationIds => (_$data['relationIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$AddOptionsToServiceInput<Input$AddOptionsToServiceInput>
      get copyWith => CopyWith$Input$AddOptionsToServiceInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddOptionsToServiceInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$relationIds = relationIds;
    final lOther$relationIds = other.relationIds;
    if (l$relationIds.length != lOther$relationIds.length) {
      return false;
    }
    for (int i = 0; i < l$relationIds.length; i++) {
      final l$relationIds$entry = l$relationIds[i];
      final lOther$relationIds$entry = lOther$relationIds[i];
      if (l$relationIds$entry != lOther$relationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$AddOptionsToServiceInput<TRes> {
  factory CopyWith$Input$AddOptionsToServiceInput(
    Input$AddOptionsToServiceInput instance,
    TRes Function(Input$AddOptionsToServiceInput) then,
  ) = _CopyWithImpl$Input$AddOptionsToServiceInput;

  factory CopyWith$Input$AddOptionsToServiceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddOptionsToServiceInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$AddOptionsToServiceInput<TRes>
    implements CopyWith$Input$AddOptionsToServiceInput<TRes> {
  _CopyWithImpl$Input$AddOptionsToServiceInput(
    this._instance,
    this._then,
  );

  final Input$AddOptionsToServiceInput _instance;

  final TRes Function(Input$AddOptionsToServiceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$AddOptionsToServiceInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$AddOptionsToServiceInput<TRes>
    implements CopyWith$Input$AddOptionsToServiceInput<TRes> {
  _CopyWithStubImpl$Input$AddOptionsToServiceInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$SetOptionsOnServiceInput {
  factory Input$SetOptionsOnServiceInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$SetOptionsOnServiceInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$SetOptionsOnServiceInput._(this._$data);

  factory Input$SetOptionsOnServiceInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$SetOptionsOnServiceInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<String> get relationIds => (_$data['relationIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$SetOptionsOnServiceInput<Input$SetOptionsOnServiceInput>
      get copyWith => CopyWith$Input$SetOptionsOnServiceInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SetOptionsOnServiceInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$relationIds = relationIds;
    final lOther$relationIds = other.relationIds;
    if (l$relationIds.length != lOther$relationIds.length) {
      return false;
    }
    for (int i = 0; i < l$relationIds.length; i++) {
      final l$relationIds$entry = l$relationIds[i];
      final lOther$relationIds$entry = lOther$relationIds[i];
      if (l$relationIds$entry != lOther$relationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SetOptionsOnServiceInput<TRes> {
  factory CopyWith$Input$SetOptionsOnServiceInput(
    Input$SetOptionsOnServiceInput instance,
    TRes Function(Input$SetOptionsOnServiceInput) then,
  ) = _CopyWithImpl$Input$SetOptionsOnServiceInput;

  factory CopyWith$Input$SetOptionsOnServiceInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SetOptionsOnServiceInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$SetOptionsOnServiceInput<TRes>
    implements CopyWith$Input$SetOptionsOnServiceInput<TRes> {
  _CopyWithImpl$Input$SetOptionsOnServiceInput(
    this._instance,
    this._then,
  );

  final Input$SetOptionsOnServiceInput _instance;

  final TRes Function(Input$SetOptionsOnServiceInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$SetOptionsOnServiceInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$SetOptionsOnServiceInput<TRes>
    implements CopyWith$Input$SetOptionsOnServiceInput<TRes> {
  _CopyWithStubImpl$Input$SetOptionsOnServiceInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$CreateOnePayoutAccountInput {
  factory Input$CreateOnePayoutAccountInput(
          {required Input$CreatePayoutAccount payoutAccount}) =>
      Input$CreateOnePayoutAccountInput._({
        r'payoutAccount': payoutAccount,
      });

  Input$CreateOnePayoutAccountInput._(this._$data);

  factory Input$CreateOnePayoutAccountInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$payoutAccount = data['payoutAccount'];
    result$data['payoutAccount'] = Input$CreatePayoutAccount.fromJson(
        (l$payoutAccount as Map<String, dynamic>));
    return Input$CreateOnePayoutAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  Input$CreatePayoutAccount get payoutAccount =>
      (_$data['payoutAccount'] as Input$CreatePayoutAccount);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$payoutAccount = payoutAccount;
    result$data['payoutAccount'] = l$payoutAccount.toJson();
    return result$data;
  }

  CopyWith$Input$CreateOnePayoutAccountInput<Input$CreateOnePayoutAccountInput>
      get copyWith => CopyWith$Input$CreateOnePayoutAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreateOnePayoutAccountInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$payoutAccount = payoutAccount;
    final lOther$payoutAccount = other.payoutAccount;
    if (l$payoutAccount != lOther$payoutAccount) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$payoutAccount = payoutAccount;
    return Object.hashAll([l$payoutAccount]);
  }
}

abstract class CopyWith$Input$CreateOnePayoutAccountInput<TRes> {
  factory CopyWith$Input$CreateOnePayoutAccountInput(
    Input$CreateOnePayoutAccountInput instance,
    TRes Function(Input$CreateOnePayoutAccountInput) then,
  ) = _CopyWithImpl$Input$CreateOnePayoutAccountInput;

  factory CopyWith$Input$CreateOnePayoutAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$CreateOnePayoutAccountInput;

  TRes call({Input$CreatePayoutAccount? payoutAccount});
  CopyWith$Input$CreatePayoutAccount<TRes> get payoutAccount;
}

class _CopyWithImpl$Input$CreateOnePayoutAccountInput<TRes>
    implements CopyWith$Input$CreateOnePayoutAccountInput<TRes> {
  _CopyWithImpl$Input$CreateOnePayoutAccountInput(
    this._instance,
    this._then,
  );

  final Input$CreateOnePayoutAccountInput _instance;

  final TRes Function(Input$CreateOnePayoutAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? payoutAccount = _undefined}) =>
      _then(Input$CreateOnePayoutAccountInput._({
        ..._instance._$data,
        if (payoutAccount != _undefined && payoutAccount != null)
          'payoutAccount': (payoutAccount as Input$CreatePayoutAccount),
      }));

  CopyWith$Input$CreatePayoutAccount<TRes> get payoutAccount {
    final local$payoutAccount = _instance.payoutAccount;
    return CopyWith$Input$CreatePayoutAccount(
        local$payoutAccount, (e) => call(payoutAccount: e));
  }
}

class _CopyWithStubImpl$Input$CreateOnePayoutAccountInput<TRes>
    implements CopyWith$Input$CreateOnePayoutAccountInput<TRes> {
  _CopyWithStubImpl$Input$CreateOnePayoutAccountInput(this._res);

  TRes _res;

  call({Input$CreatePayoutAccount? payoutAccount}) => _res;

  CopyWith$Input$CreatePayoutAccount<TRes> get payoutAccount =>
      CopyWith$Input$CreatePayoutAccount.stub(_res);
}

class Input$CreatePayoutAccount {
  factory Input$CreatePayoutAccount({
    required String id,
    String? name,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    required bool isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    required String driverId,
    Enum$GatewayLinkMethod? linkType,
  }) =>
      Input$CreatePayoutAccount._({
        r'id': id,
        if (name != null) r'name': name,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (routingNumber != null) r'routingNumber': routingNumber,
        if (bankName != null) r'bankName': bankName,
        if (accountHolderName != null) r'accountHolderName': accountHolderName,
        if (branchName != null) r'branchName': branchName,
        r'isDefault': isDefault,
        if (accountHolderAddress != null)
          r'accountHolderAddress': accountHolderAddress,
        if (accountHolderCity != null) r'accountHolderCity': accountHolderCity,
        if (accountHolderState != null)
          r'accountHolderState': accountHolderState,
        if (accountHolderZip != null) r'accountHolderZip': accountHolderZip,
        if (accountHolderCountry != null)
          r'accountHolderCountry': accountHolderCountry,
        if (accountHolderPhone != null)
          r'accountHolderPhone': accountHolderPhone,
        if (accountHolderDateOfBirth != null)
          r'accountHolderDateOfBirth': accountHolderDateOfBirth,
        r'driverId': driverId,
        if (linkType != null) r'linkType': linkType,
      });

  Input$CreatePayoutAccount._(this._$data);

  factory Input$CreatePayoutAccount.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('routingNumber')) {
      final l$routingNumber = data['routingNumber'];
      result$data['routingNumber'] = (l$routingNumber as String?);
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = (l$bankName as String?);
    }
    if (data.containsKey('accountHolderName')) {
      final l$accountHolderName = data['accountHolderName'];
      result$data['accountHolderName'] = (l$accountHolderName as String?);
    }
    if (data.containsKey('branchName')) {
      final l$branchName = data['branchName'];
      result$data['branchName'] = (l$branchName as String?);
    }
    final l$isDefault = data['isDefault'];
    result$data['isDefault'] = (l$isDefault as bool);
    if (data.containsKey('accountHolderAddress')) {
      final l$accountHolderAddress = data['accountHolderAddress'];
      result$data['accountHolderAddress'] = (l$accountHolderAddress as String?);
    }
    if (data.containsKey('accountHolderCity')) {
      final l$accountHolderCity = data['accountHolderCity'];
      result$data['accountHolderCity'] = (l$accountHolderCity as String?);
    }
    if (data.containsKey('accountHolderState')) {
      final l$accountHolderState = data['accountHolderState'];
      result$data['accountHolderState'] = (l$accountHolderState as String?);
    }
    if (data.containsKey('accountHolderZip')) {
      final l$accountHolderZip = data['accountHolderZip'];
      result$data['accountHolderZip'] = (l$accountHolderZip as String?);
    }
    if (data.containsKey('accountHolderCountry')) {
      final l$accountHolderCountry = data['accountHolderCountry'];
      result$data['accountHolderCountry'] = (l$accountHolderCountry as String?);
    }
    if (data.containsKey('accountHolderPhone')) {
      final l$accountHolderPhone = data['accountHolderPhone'];
      result$data['accountHolderPhone'] = (l$accountHolderPhone as String?);
    }
    if (data.containsKey('accountHolderDateOfBirth')) {
      final l$accountHolderDateOfBirth = data['accountHolderDateOfBirth'];
      result$data['accountHolderDateOfBirth'] =
          l$accountHolderDateOfBirth == null
              ? null
              : fromGraphQLDateTimeToDartDateTime(l$accountHolderDateOfBirth);
    }
    final l$driverId = data['driverId'];
    result$data['driverId'] = (l$driverId as String);
    if (data.containsKey('linkType')) {
      final l$linkType = data['linkType'];
      result$data['linkType'] = l$linkType == null
          ? null
          : fromJson$Enum$GatewayLinkMethod((l$linkType as String));
    }
    return Input$CreatePayoutAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  String? get name => (_$data['name'] as String?);

  String? get accountNumber => (_$data['accountNumber'] as String?);

  String? get routingNumber => (_$data['routingNumber'] as String?);

  String? get bankName => (_$data['bankName'] as String?);

  String? get accountHolderName => (_$data['accountHolderName'] as String?);

  String? get branchName => (_$data['branchName'] as String?);

  bool get isDefault => (_$data['isDefault'] as bool);

  String? get accountHolderAddress =>
      (_$data['accountHolderAddress'] as String?);

  String? get accountHolderCity => (_$data['accountHolderCity'] as String?);

  String? get accountHolderState => (_$data['accountHolderState'] as String?);

  String? get accountHolderZip => (_$data['accountHolderZip'] as String?);

  String? get accountHolderCountry =>
      (_$data['accountHolderCountry'] as String?);

  String? get accountHolderPhone => (_$data['accountHolderPhone'] as String?);

  DateTime? get accountHolderDateOfBirth =>
      (_$data['accountHolderDateOfBirth'] as DateTime?);

  String get driverId => (_$data['driverId'] as String);

  Enum$GatewayLinkMethod? get linkType =>
      (_$data['linkType'] as Enum$GatewayLinkMethod?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('routingNumber')) {
      final l$routingNumber = routingNumber;
      result$data['routingNumber'] = l$routingNumber;
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] = l$bankName;
    }
    if (_$data.containsKey('accountHolderName')) {
      final l$accountHolderName = accountHolderName;
      result$data['accountHolderName'] = l$accountHolderName;
    }
    if (_$data.containsKey('branchName')) {
      final l$branchName = branchName;
      result$data['branchName'] = l$branchName;
    }
    final l$isDefault = isDefault;
    result$data['isDefault'] = l$isDefault;
    if (_$data.containsKey('accountHolderAddress')) {
      final l$accountHolderAddress = accountHolderAddress;
      result$data['accountHolderAddress'] = l$accountHolderAddress;
    }
    if (_$data.containsKey('accountHolderCity')) {
      final l$accountHolderCity = accountHolderCity;
      result$data['accountHolderCity'] = l$accountHolderCity;
    }
    if (_$data.containsKey('accountHolderState')) {
      final l$accountHolderState = accountHolderState;
      result$data['accountHolderState'] = l$accountHolderState;
    }
    if (_$data.containsKey('accountHolderZip')) {
      final l$accountHolderZip = accountHolderZip;
      result$data['accountHolderZip'] = l$accountHolderZip;
    }
    if (_$data.containsKey('accountHolderCountry')) {
      final l$accountHolderCountry = accountHolderCountry;
      result$data['accountHolderCountry'] = l$accountHolderCountry;
    }
    if (_$data.containsKey('accountHolderPhone')) {
      final l$accountHolderPhone = accountHolderPhone;
      result$data['accountHolderPhone'] = l$accountHolderPhone;
    }
    if (_$data.containsKey('accountHolderDateOfBirth')) {
      final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
      result$data['accountHolderDateOfBirth'] =
          l$accountHolderDateOfBirth == null
              ? null
              : fromDartDateTimeToGraphQLDateTime(l$accountHolderDateOfBirth);
    }
    final l$driverId = driverId;
    result$data['driverId'] = l$driverId;
    if (_$data.containsKey('linkType')) {
      final l$linkType = linkType;
      result$data['linkType'] =
          l$linkType == null ? null : toJson$Enum$GatewayLinkMethod(l$linkType);
    }
    return result$data;
  }

  CopyWith$Input$CreatePayoutAccount<Input$CreatePayoutAccount> get copyWith =>
      CopyWith$Input$CreatePayoutAccount(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$CreatePayoutAccount ||
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
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$routingNumber = routingNumber;
    final lOther$routingNumber = other.routingNumber;
    if (_$data.containsKey('routingNumber') !=
        other._$data.containsKey('routingNumber')) {
      return false;
    }
    if (l$routingNumber != lOther$routingNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (_$data.containsKey('accountHolderName') !=
        other._$data.containsKey('accountHolderName')) {
      return false;
    }
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$branchName = branchName;
    final lOther$branchName = other.branchName;
    if (_$data.containsKey('branchName') !=
        other._$data.containsKey('branchName')) {
      return false;
    }
    if (l$branchName != lOther$branchName) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$accountHolderAddress = accountHolderAddress;
    final lOther$accountHolderAddress = other.accountHolderAddress;
    if (_$data.containsKey('accountHolderAddress') !=
        other._$data.containsKey('accountHolderAddress')) {
      return false;
    }
    if (l$accountHolderAddress != lOther$accountHolderAddress) {
      return false;
    }
    final l$accountHolderCity = accountHolderCity;
    final lOther$accountHolderCity = other.accountHolderCity;
    if (_$data.containsKey('accountHolderCity') !=
        other._$data.containsKey('accountHolderCity')) {
      return false;
    }
    if (l$accountHolderCity != lOther$accountHolderCity) {
      return false;
    }
    final l$accountHolderState = accountHolderState;
    final lOther$accountHolderState = other.accountHolderState;
    if (_$data.containsKey('accountHolderState') !=
        other._$data.containsKey('accountHolderState')) {
      return false;
    }
    if (l$accountHolderState != lOther$accountHolderState) {
      return false;
    }
    final l$accountHolderZip = accountHolderZip;
    final lOther$accountHolderZip = other.accountHolderZip;
    if (_$data.containsKey('accountHolderZip') !=
        other._$data.containsKey('accountHolderZip')) {
      return false;
    }
    if (l$accountHolderZip != lOther$accountHolderZip) {
      return false;
    }
    final l$accountHolderCountry = accountHolderCountry;
    final lOther$accountHolderCountry = other.accountHolderCountry;
    if (_$data.containsKey('accountHolderCountry') !=
        other._$data.containsKey('accountHolderCountry')) {
      return false;
    }
    if (l$accountHolderCountry != lOther$accountHolderCountry) {
      return false;
    }
    final l$accountHolderPhone = accountHolderPhone;
    final lOther$accountHolderPhone = other.accountHolderPhone;
    if (_$data.containsKey('accountHolderPhone') !=
        other._$data.containsKey('accountHolderPhone')) {
      return false;
    }
    if (l$accountHolderPhone != lOther$accountHolderPhone) {
      return false;
    }
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final lOther$accountHolderDateOfBirth = other.accountHolderDateOfBirth;
    if (_$data.containsKey('accountHolderDateOfBirth') !=
        other._$data.containsKey('accountHolderDateOfBirth')) {
      return false;
    }
    if (l$accountHolderDateOfBirth != lOther$accountHolderDateOfBirth) {
      return false;
    }
    final l$driverId = driverId;
    final lOther$driverId = other.driverId;
    if (l$driverId != lOther$driverId) {
      return false;
    }
    final l$linkType = linkType;
    final lOther$linkType = other.linkType;
    if (_$data.containsKey('linkType') !=
        other._$data.containsKey('linkType')) {
      return false;
    }
    if (l$linkType != lOther$linkType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$accountNumber = accountNumber;
    final l$routingNumber = routingNumber;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$branchName = branchName;
    final l$isDefault = isDefault;
    final l$accountHolderAddress = accountHolderAddress;
    final l$accountHolderCity = accountHolderCity;
    final l$accountHolderState = accountHolderState;
    final l$accountHolderZip = accountHolderZip;
    final l$accountHolderCountry = accountHolderCountry;
    final l$accountHolderPhone = accountHolderPhone;
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final l$driverId = driverId;
    final l$linkType = linkType;
    return Object.hashAll([
      l$id,
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('routingNumber') ? l$routingNumber : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('accountHolderName') ? l$accountHolderName : const {},
      _$data.containsKey('branchName') ? l$branchName : const {},
      l$isDefault,
      _$data.containsKey('accountHolderAddress')
          ? l$accountHolderAddress
          : const {},
      _$data.containsKey('accountHolderCity') ? l$accountHolderCity : const {},
      _$data.containsKey('accountHolderState')
          ? l$accountHolderState
          : const {},
      _$data.containsKey('accountHolderZip') ? l$accountHolderZip : const {},
      _$data.containsKey('accountHolderCountry')
          ? l$accountHolderCountry
          : const {},
      _$data.containsKey('accountHolderPhone')
          ? l$accountHolderPhone
          : const {},
      _$data.containsKey('accountHolderDateOfBirth')
          ? l$accountHolderDateOfBirth
          : const {},
      l$driverId,
      _$data.containsKey('linkType') ? l$linkType : const {},
    ]);
  }
}

abstract class CopyWith$Input$CreatePayoutAccount<TRes> {
  factory CopyWith$Input$CreatePayoutAccount(
    Input$CreatePayoutAccount instance,
    TRes Function(Input$CreatePayoutAccount) then,
  ) = _CopyWithImpl$Input$CreatePayoutAccount;

  factory CopyWith$Input$CreatePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Input$CreatePayoutAccount;

  TRes call({
    String? id,
    String? name,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    String? driverId,
    Enum$GatewayLinkMethod? linkType,
  });
}

class _CopyWithImpl$Input$CreatePayoutAccount<TRes>
    implements CopyWith$Input$CreatePayoutAccount<TRes> {
  _CopyWithImpl$Input$CreatePayoutAccount(
    this._instance,
    this._then,
  );

  final Input$CreatePayoutAccount _instance;

  final TRes Function(Input$CreatePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? accountNumber = _undefined,
    Object? routingNumber = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? branchName = _undefined,
    Object? isDefault = _undefined,
    Object? accountHolderAddress = _undefined,
    Object? accountHolderCity = _undefined,
    Object? accountHolderState = _undefined,
    Object? accountHolderZip = _undefined,
    Object? accountHolderCountry = _undefined,
    Object? accountHolderPhone = _undefined,
    Object? accountHolderDateOfBirth = _undefined,
    Object? driverId = _undefined,
    Object? linkType = _undefined,
  }) =>
      _then(Input$CreatePayoutAccount._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (name != _undefined) 'name': (name as String?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as String?),
        if (routingNumber != _undefined)
          'routingNumber': (routingNumber as String?),
        if (bankName != _undefined) 'bankName': (bankName as String?),
        if (accountHolderName != _undefined)
          'accountHolderName': (accountHolderName as String?),
        if (branchName != _undefined) 'branchName': (branchName as String?),
        if (isDefault != _undefined && isDefault != null)
          'isDefault': (isDefault as bool),
        if (accountHolderAddress != _undefined)
          'accountHolderAddress': (accountHolderAddress as String?),
        if (accountHolderCity != _undefined)
          'accountHolderCity': (accountHolderCity as String?),
        if (accountHolderState != _undefined)
          'accountHolderState': (accountHolderState as String?),
        if (accountHolderZip != _undefined)
          'accountHolderZip': (accountHolderZip as String?),
        if (accountHolderCountry != _undefined)
          'accountHolderCountry': (accountHolderCountry as String?),
        if (accountHolderPhone != _undefined)
          'accountHolderPhone': (accountHolderPhone as String?),
        if (accountHolderDateOfBirth != _undefined)
          'accountHolderDateOfBirth': (accountHolderDateOfBirth as DateTime?),
        if (driverId != _undefined && driverId != null)
          'driverId': (driverId as String),
        if (linkType != _undefined)
          'linkType': (linkType as Enum$GatewayLinkMethod?),
      }));
}

class _CopyWithStubImpl$Input$CreatePayoutAccount<TRes>
    implements CopyWith$Input$CreatePayoutAccount<TRes> {
  _CopyWithStubImpl$Input$CreatePayoutAccount(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    String? driverId,
    Enum$GatewayLinkMethod? linkType,
  }) =>
      _res;
}

class Input$UpdateOnePayoutAccountInput {
  factory Input$UpdateOnePayoutAccountInput({
    required String id,
    required Input$UpdatePayoutAccount update,
  }) =>
      Input$UpdateOnePayoutAccountInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOnePayoutAccountInput._(this._$data);

  factory Input$UpdateOnePayoutAccountInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdatePayoutAccount.fromJson((l$update as Map<String, dynamic>));
    return Input$UpdateOnePayoutAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UpdatePayoutAccount get update =>
      (_$data['update'] as Input$UpdatePayoutAccount);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOnePayoutAccountInput<Input$UpdateOnePayoutAccountInput>
      get copyWith => CopyWith$Input$UpdateOnePayoutAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOnePayoutAccountInput ||
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

abstract class CopyWith$Input$UpdateOnePayoutAccountInput<TRes> {
  factory CopyWith$Input$UpdateOnePayoutAccountInput(
    Input$UpdateOnePayoutAccountInput instance,
    TRes Function(Input$UpdateOnePayoutAccountInput) then,
  ) = _CopyWithImpl$Input$UpdateOnePayoutAccountInput;

  factory CopyWith$Input$UpdateOnePayoutAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOnePayoutAccountInput;

  TRes call({
    String? id,
    Input$UpdatePayoutAccount? update,
  });
  CopyWith$Input$UpdatePayoutAccount<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOnePayoutAccountInput<TRes>
    implements CopyWith$Input$UpdateOnePayoutAccountInput<TRes> {
  _CopyWithImpl$Input$UpdateOnePayoutAccountInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOnePayoutAccountInput _instance;

  final TRes Function(Input$UpdateOnePayoutAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOnePayoutAccountInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdatePayoutAccount),
      }));

  CopyWith$Input$UpdatePayoutAccount<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$UpdatePayoutAccount(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOnePayoutAccountInput<TRes>
    implements CopyWith$Input$UpdateOnePayoutAccountInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOnePayoutAccountInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdatePayoutAccount? update,
  }) =>
      _res;

  CopyWith$Input$UpdatePayoutAccount<TRes> get update =>
      CopyWith$Input$UpdatePayoutAccount.stub(_res);
}

class Input$UpdatePayoutAccount {
  factory Input$UpdatePayoutAccount({
    String? id,
    String? name,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    String? driverId,
    Enum$GatewayLinkMethod? linkType,
  }) =>
      Input$UpdatePayoutAccount._({
        if (id != null) r'id': id,
        if (name != null) r'name': name,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (routingNumber != null) r'routingNumber': routingNumber,
        if (bankName != null) r'bankName': bankName,
        if (accountHolderName != null) r'accountHolderName': accountHolderName,
        if (branchName != null) r'branchName': branchName,
        if (isDefault != null) r'isDefault': isDefault,
        if (accountHolderAddress != null)
          r'accountHolderAddress': accountHolderAddress,
        if (accountHolderCity != null) r'accountHolderCity': accountHolderCity,
        if (accountHolderState != null)
          r'accountHolderState': accountHolderState,
        if (accountHolderZip != null) r'accountHolderZip': accountHolderZip,
        if (accountHolderCountry != null)
          r'accountHolderCountry': accountHolderCountry,
        if (accountHolderPhone != null)
          r'accountHolderPhone': accountHolderPhone,
        if (accountHolderDateOfBirth != null)
          r'accountHolderDateOfBirth': accountHolderDateOfBirth,
        if (driverId != null) r'driverId': driverId,
        if (linkType != null) r'linkType': linkType,
      });

  Input$UpdatePayoutAccount._(this._$data);

  factory Input$UpdatePayoutAccount.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('id')) {
      final l$id = data['id'];
      result$data['id'] = (l$id as String?);
    }
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('routingNumber')) {
      final l$routingNumber = data['routingNumber'];
      result$data['routingNumber'] = (l$routingNumber as String?);
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = (l$bankName as String?);
    }
    if (data.containsKey('accountHolderName')) {
      final l$accountHolderName = data['accountHolderName'];
      result$data['accountHolderName'] = (l$accountHolderName as String?);
    }
    if (data.containsKey('branchName')) {
      final l$branchName = data['branchName'];
      result$data['branchName'] = (l$branchName as String?);
    }
    if (data.containsKey('isDefault')) {
      final l$isDefault = data['isDefault'];
      result$data['isDefault'] = (l$isDefault as bool?);
    }
    if (data.containsKey('accountHolderAddress')) {
      final l$accountHolderAddress = data['accountHolderAddress'];
      result$data['accountHolderAddress'] = (l$accountHolderAddress as String?);
    }
    if (data.containsKey('accountHolderCity')) {
      final l$accountHolderCity = data['accountHolderCity'];
      result$data['accountHolderCity'] = (l$accountHolderCity as String?);
    }
    if (data.containsKey('accountHolderState')) {
      final l$accountHolderState = data['accountHolderState'];
      result$data['accountHolderState'] = (l$accountHolderState as String?);
    }
    if (data.containsKey('accountHolderZip')) {
      final l$accountHolderZip = data['accountHolderZip'];
      result$data['accountHolderZip'] = (l$accountHolderZip as String?);
    }
    if (data.containsKey('accountHolderCountry')) {
      final l$accountHolderCountry = data['accountHolderCountry'];
      result$data['accountHolderCountry'] = (l$accountHolderCountry as String?);
    }
    if (data.containsKey('accountHolderPhone')) {
      final l$accountHolderPhone = data['accountHolderPhone'];
      result$data['accountHolderPhone'] = (l$accountHolderPhone as String?);
    }
    if (data.containsKey('accountHolderDateOfBirth')) {
      final l$accountHolderDateOfBirth = data['accountHolderDateOfBirth'];
      result$data['accountHolderDateOfBirth'] =
          l$accountHolderDateOfBirth == null
              ? null
              : fromGraphQLDateTimeToDartDateTime(l$accountHolderDateOfBirth);
    }
    if (data.containsKey('driverId')) {
      final l$driverId = data['driverId'];
      result$data['driverId'] = (l$driverId as String?);
    }
    if (data.containsKey('linkType')) {
      final l$linkType = data['linkType'];
      result$data['linkType'] = l$linkType == null
          ? null
          : fromJson$Enum$GatewayLinkMethod((l$linkType as String));
    }
    return Input$UpdatePayoutAccount._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get id => (_$data['id'] as String?);

  String? get name => (_$data['name'] as String?);

  String? get accountNumber => (_$data['accountNumber'] as String?);

  String? get routingNumber => (_$data['routingNumber'] as String?);

  String? get bankName => (_$data['bankName'] as String?);

  String? get accountHolderName => (_$data['accountHolderName'] as String?);

  String? get branchName => (_$data['branchName'] as String?);

  bool? get isDefault => (_$data['isDefault'] as bool?);

  String? get accountHolderAddress =>
      (_$data['accountHolderAddress'] as String?);

  String? get accountHolderCity => (_$data['accountHolderCity'] as String?);

  String? get accountHolderState => (_$data['accountHolderState'] as String?);

  String? get accountHolderZip => (_$data['accountHolderZip'] as String?);

  String? get accountHolderCountry =>
      (_$data['accountHolderCountry'] as String?);

  String? get accountHolderPhone => (_$data['accountHolderPhone'] as String?);

  DateTime? get accountHolderDateOfBirth =>
      (_$data['accountHolderDateOfBirth'] as DateTime?);

  String? get driverId => (_$data['driverId'] as String?);

  Enum$GatewayLinkMethod? get linkType =>
      (_$data['linkType'] as Enum$GatewayLinkMethod?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('id')) {
      final l$id = id;
      result$data['id'] = l$id;
    }
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('routingNumber')) {
      final l$routingNumber = routingNumber;
      result$data['routingNumber'] = l$routingNumber;
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] = l$bankName;
    }
    if (_$data.containsKey('accountHolderName')) {
      final l$accountHolderName = accountHolderName;
      result$data['accountHolderName'] = l$accountHolderName;
    }
    if (_$data.containsKey('branchName')) {
      final l$branchName = branchName;
      result$data['branchName'] = l$branchName;
    }
    if (_$data.containsKey('isDefault')) {
      final l$isDefault = isDefault;
      result$data['isDefault'] = l$isDefault;
    }
    if (_$data.containsKey('accountHolderAddress')) {
      final l$accountHolderAddress = accountHolderAddress;
      result$data['accountHolderAddress'] = l$accountHolderAddress;
    }
    if (_$data.containsKey('accountHolderCity')) {
      final l$accountHolderCity = accountHolderCity;
      result$data['accountHolderCity'] = l$accountHolderCity;
    }
    if (_$data.containsKey('accountHolderState')) {
      final l$accountHolderState = accountHolderState;
      result$data['accountHolderState'] = l$accountHolderState;
    }
    if (_$data.containsKey('accountHolderZip')) {
      final l$accountHolderZip = accountHolderZip;
      result$data['accountHolderZip'] = l$accountHolderZip;
    }
    if (_$data.containsKey('accountHolderCountry')) {
      final l$accountHolderCountry = accountHolderCountry;
      result$data['accountHolderCountry'] = l$accountHolderCountry;
    }
    if (_$data.containsKey('accountHolderPhone')) {
      final l$accountHolderPhone = accountHolderPhone;
      result$data['accountHolderPhone'] = l$accountHolderPhone;
    }
    if (_$data.containsKey('accountHolderDateOfBirth')) {
      final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
      result$data['accountHolderDateOfBirth'] =
          l$accountHolderDateOfBirth == null
              ? null
              : fromDartDateTimeToGraphQLDateTime(l$accountHolderDateOfBirth);
    }
    if (_$data.containsKey('driverId')) {
      final l$driverId = driverId;
      result$data['driverId'] = l$driverId;
    }
    if (_$data.containsKey('linkType')) {
      final l$linkType = linkType;
      result$data['linkType'] =
          l$linkType == null ? null : toJson$Enum$GatewayLinkMethod(l$linkType);
    }
    return result$data;
  }

  CopyWith$Input$UpdatePayoutAccount<Input$UpdatePayoutAccount> get copyWith =>
      CopyWith$Input$UpdatePayoutAccount(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdatePayoutAccount ||
        runtimeType != other.runtimeType) {
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
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$routingNumber = routingNumber;
    final lOther$routingNumber = other.routingNumber;
    if (_$data.containsKey('routingNumber') !=
        other._$data.containsKey('routingNumber')) {
      return false;
    }
    if (l$routingNumber != lOther$routingNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$accountHolderName = accountHolderName;
    final lOther$accountHolderName = other.accountHolderName;
    if (_$data.containsKey('accountHolderName') !=
        other._$data.containsKey('accountHolderName')) {
      return false;
    }
    if (l$accountHolderName != lOther$accountHolderName) {
      return false;
    }
    final l$branchName = branchName;
    final lOther$branchName = other.branchName;
    if (_$data.containsKey('branchName') !=
        other._$data.containsKey('branchName')) {
      return false;
    }
    if (l$branchName != lOther$branchName) {
      return false;
    }
    final l$isDefault = isDefault;
    final lOther$isDefault = other.isDefault;
    if (_$data.containsKey('isDefault') !=
        other._$data.containsKey('isDefault')) {
      return false;
    }
    if (l$isDefault != lOther$isDefault) {
      return false;
    }
    final l$accountHolderAddress = accountHolderAddress;
    final lOther$accountHolderAddress = other.accountHolderAddress;
    if (_$data.containsKey('accountHolderAddress') !=
        other._$data.containsKey('accountHolderAddress')) {
      return false;
    }
    if (l$accountHolderAddress != lOther$accountHolderAddress) {
      return false;
    }
    final l$accountHolderCity = accountHolderCity;
    final lOther$accountHolderCity = other.accountHolderCity;
    if (_$data.containsKey('accountHolderCity') !=
        other._$data.containsKey('accountHolderCity')) {
      return false;
    }
    if (l$accountHolderCity != lOther$accountHolderCity) {
      return false;
    }
    final l$accountHolderState = accountHolderState;
    final lOther$accountHolderState = other.accountHolderState;
    if (_$data.containsKey('accountHolderState') !=
        other._$data.containsKey('accountHolderState')) {
      return false;
    }
    if (l$accountHolderState != lOther$accountHolderState) {
      return false;
    }
    final l$accountHolderZip = accountHolderZip;
    final lOther$accountHolderZip = other.accountHolderZip;
    if (_$data.containsKey('accountHolderZip') !=
        other._$data.containsKey('accountHolderZip')) {
      return false;
    }
    if (l$accountHolderZip != lOther$accountHolderZip) {
      return false;
    }
    final l$accountHolderCountry = accountHolderCountry;
    final lOther$accountHolderCountry = other.accountHolderCountry;
    if (_$data.containsKey('accountHolderCountry') !=
        other._$data.containsKey('accountHolderCountry')) {
      return false;
    }
    if (l$accountHolderCountry != lOther$accountHolderCountry) {
      return false;
    }
    final l$accountHolderPhone = accountHolderPhone;
    final lOther$accountHolderPhone = other.accountHolderPhone;
    if (_$data.containsKey('accountHolderPhone') !=
        other._$data.containsKey('accountHolderPhone')) {
      return false;
    }
    if (l$accountHolderPhone != lOther$accountHolderPhone) {
      return false;
    }
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final lOther$accountHolderDateOfBirth = other.accountHolderDateOfBirth;
    if (_$data.containsKey('accountHolderDateOfBirth') !=
        other._$data.containsKey('accountHolderDateOfBirth')) {
      return false;
    }
    if (l$accountHolderDateOfBirth != lOther$accountHolderDateOfBirth) {
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
    final l$linkType = linkType;
    final lOther$linkType = other.linkType;
    if (_$data.containsKey('linkType') !=
        other._$data.containsKey('linkType')) {
      return false;
    }
    if (l$linkType != lOther$linkType) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$accountNumber = accountNumber;
    final l$routingNumber = routingNumber;
    final l$bankName = bankName;
    final l$accountHolderName = accountHolderName;
    final l$branchName = branchName;
    final l$isDefault = isDefault;
    final l$accountHolderAddress = accountHolderAddress;
    final l$accountHolderCity = accountHolderCity;
    final l$accountHolderState = accountHolderState;
    final l$accountHolderZip = accountHolderZip;
    final l$accountHolderCountry = accountHolderCountry;
    final l$accountHolderPhone = accountHolderPhone;
    final l$accountHolderDateOfBirth = accountHolderDateOfBirth;
    final l$driverId = driverId;
    final l$linkType = linkType;
    return Object.hashAll([
      _$data.containsKey('id') ? l$id : const {},
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('routingNumber') ? l$routingNumber : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('accountHolderName') ? l$accountHolderName : const {},
      _$data.containsKey('branchName') ? l$branchName : const {},
      _$data.containsKey('isDefault') ? l$isDefault : const {},
      _$data.containsKey('accountHolderAddress')
          ? l$accountHolderAddress
          : const {},
      _$data.containsKey('accountHolderCity') ? l$accountHolderCity : const {},
      _$data.containsKey('accountHolderState')
          ? l$accountHolderState
          : const {},
      _$data.containsKey('accountHolderZip') ? l$accountHolderZip : const {},
      _$data.containsKey('accountHolderCountry')
          ? l$accountHolderCountry
          : const {},
      _$data.containsKey('accountHolderPhone')
          ? l$accountHolderPhone
          : const {},
      _$data.containsKey('accountHolderDateOfBirth')
          ? l$accountHolderDateOfBirth
          : const {},
      _$data.containsKey('driverId') ? l$driverId : const {},
      _$data.containsKey('linkType') ? l$linkType : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdatePayoutAccount<TRes> {
  factory CopyWith$Input$UpdatePayoutAccount(
    Input$UpdatePayoutAccount instance,
    TRes Function(Input$UpdatePayoutAccount) then,
  ) = _CopyWithImpl$Input$UpdatePayoutAccount;

  factory CopyWith$Input$UpdatePayoutAccount.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdatePayoutAccount;

  TRes call({
    String? id,
    String? name,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    String? driverId,
    Enum$GatewayLinkMethod? linkType,
  });
}

class _CopyWithImpl$Input$UpdatePayoutAccount<TRes>
    implements CopyWith$Input$UpdatePayoutAccount<TRes> {
  _CopyWithImpl$Input$UpdatePayoutAccount(
    this._instance,
    this._then,
  );

  final Input$UpdatePayoutAccount _instance;

  final TRes Function(Input$UpdatePayoutAccount) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? accountNumber = _undefined,
    Object? routingNumber = _undefined,
    Object? bankName = _undefined,
    Object? accountHolderName = _undefined,
    Object? branchName = _undefined,
    Object? isDefault = _undefined,
    Object? accountHolderAddress = _undefined,
    Object? accountHolderCity = _undefined,
    Object? accountHolderState = _undefined,
    Object? accountHolderZip = _undefined,
    Object? accountHolderCountry = _undefined,
    Object? accountHolderPhone = _undefined,
    Object? accountHolderDateOfBirth = _undefined,
    Object? driverId = _undefined,
    Object? linkType = _undefined,
  }) =>
      _then(Input$UpdatePayoutAccount._({
        ..._instance._$data,
        if (id != _undefined) 'id': (id as String?),
        if (name != _undefined) 'name': (name as String?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as String?),
        if (routingNumber != _undefined)
          'routingNumber': (routingNumber as String?),
        if (bankName != _undefined) 'bankName': (bankName as String?),
        if (accountHolderName != _undefined)
          'accountHolderName': (accountHolderName as String?),
        if (branchName != _undefined) 'branchName': (branchName as String?),
        if (isDefault != _undefined) 'isDefault': (isDefault as bool?),
        if (accountHolderAddress != _undefined)
          'accountHolderAddress': (accountHolderAddress as String?),
        if (accountHolderCity != _undefined)
          'accountHolderCity': (accountHolderCity as String?),
        if (accountHolderState != _undefined)
          'accountHolderState': (accountHolderState as String?),
        if (accountHolderZip != _undefined)
          'accountHolderZip': (accountHolderZip as String?),
        if (accountHolderCountry != _undefined)
          'accountHolderCountry': (accountHolderCountry as String?),
        if (accountHolderPhone != _undefined)
          'accountHolderPhone': (accountHolderPhone as String?),
        if (accountHolderDateOfBirth != _undefined)
          'accountHolderDateOfBirth': (accountHolderDateOfBirth as DateTime?),
        if (driverId != _undefined) 'driverId': (driverId as String?),
        if (linkType != _undefined)
          'linkType': (linkType as Enum$GatewayLinkMethod?),
      }));
}

class _CopyWithStubImpl$Input$UpdatePayoutAccount<TRes>
    implements CopyWith$Input$UpdatePayoutAccount<TRes> {
  _CopyWithStubImpl$Input$UpdatePayoutAccount(this._res);

  TRes _res;

  call({
    String? id,
    String? name,
    String? accountNumber,
    String? routingNumber,
    String? bankName,
    String? accountHolderName,
    String? branchName,
    bool? isDefault,
    String? accountHolderAddress,
    String? accountHolderCity,
    String? accountHolderState,
    String? accountHolderZip,
    String? accountHolderCountry,
    String? accountHolderPhone,
    DateTime? accountHolderDateOfBirth,
    String? driverId,
    Enum$GatewayLinkMethod? linkType,
  }) =>
      _res;
}

class Input$DeleteOnePayoutAccountInput {
  factory Input$DeleteOnePayoutAccountInput({required String id}) =>
      Input$DeleteOnePayoutAccountInput._({
        r'id': id,
      });

  Input$DeleteOnePayoutAccountInput._(this._$data);

  factory Input$DeleteOnePayoutAccountInput.fromJson(
      Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Input$DeleteOnePayoutAccountInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Input$DeleteOnePayoutAccountInput<Input$DeleteOnePayoutAccountInput>
      get copyWith => CopyWith$Input$DeleteOnePayoutAccountInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$DeleteOnePayoutAccountInput ||
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

abstract class CopyWith$Input$DeleteOnePayoutAccountInput<TRes> {
  factory CopyWith$Input$DeleteOnePayoutAccountInput(
    Input$DeleteOnePayoutAccountInput instance,
    TRes Function(Input$DeleteOnePayoutAccountInput) then,
  ) = _CopyWithImpl$Input$DeleteOnePayoutAccountInput;

  factory CopyWith$Input$DeleteOnePayoutAccountInput.stub(TRes res) =
      _CopyWithStubImpl$Input$DeleteOnePayoutAccountInput;

  TRes call({String? id});
}

class _CopyWithImpl$Input$DeleteOnePayoutAccountInput<TRes>
    implements CopyWith$Input$DeleteOnePayoutAccountInput<TRes> {
  _CopyWithImpl$Input$DeleteOnePayoutAccountInput(
    this._instance,
    this._then,
  );

  final Input$DeleteOnePayoutAccountInput _instance;

  final TRes Function(Input$DeleteOnePayoutAccountInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) =>
      _then(Input$DeleteOnePayoutAccountInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Input$DeleteOnePayoutAccountInput<TRes>
    implements CopyWith$Input$DeleteOnePayoutAccountInput<TRes> {
  _CopyWithStubImpl$Input$DeleteOnePayoutAccountInput(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Input$AddDocumentsToDriverInput {
  factory Input$AddDocumentsToDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$AddDocumentsToDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$AddDocumentsToDriverInput._(this._$data);

  factory Input$AddDocumentsToDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$AddDocumentsToDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<String> get relationIds => (_$data['relationIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$AddDocumentsToDriverInput<Input$AddDocumentsToDriverInput>
      get copyWith => CopyWith$Input$AddDocumentsToDriverInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$AddDocumentsToDriverInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$relationIds = relationIds;
    final lOther$relationIds = other.relationIds;
    if (l$relationIds.length != lOther$relationIds.length) {
      return false;
    }
    for (int i = 0; i < l$relationIds.length; i++) {
      final l$relationIds$entry = l$relationIds[i];
      final lOther$relationIds$entry = lOther$relationIds[i];
      if (l$relationIds$entry != lOther$relationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$AddDocumentsToDriverInput<TRes> {
  factory CopyWith$Input$AddDocumentsToDriverInput(
    Input$AddDocumentsToDriverInput instance,
    TRes Function(Input$AddDocumentsToDriverInput) then,
  ) = _CopyWithImpl$Input$AddDocumentsToDriverInput;

  factory CopyWith$Input$AddDocumentsToDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$AddDocumentsToDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$AddDocumentsToDriverInput<TRes>
    implements CopyWith$Input$AddDocumentsToDriverInput<TRes> {
  _CopyWithImpl$Input$AddDocumentsToDriverInput(
    this._instance,
    this._then,
  );

  final Input$AddDocumentsToDriverInput _instance;

  final TRes Function(Input$AddDocumentsToDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$AddDocumentsToDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$AddDocumentsToDriverInput<TRes>
    implements CopyWith$Input$AddDocumentsToDriverInput<TRes> {
  _CopyWithStubImpl$Input$AddDocumentsToDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$SetDocumentsOnDriverInput {
  factory Input$SetDocumentsOnDriverInput({
    required String id,
    required List<String> relationIds,
  }) =>
      Input$SetDocumentsOnDriverInput._({
        r'id': id,
        r'relationIds': relationIds,
      });

  Input$SetDocumentsOnDriverInput._(this._$data);

  factory Input$SetDocumentsOnDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$relationIds = data['relationIds'];
    result$data['relationIds'] =
        (l$relationIds as List<dynamic>).map((e) => (e as String)).toList();
    return Input$SetDocumentsOnDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  List<String> get relationIds => (_$data['relationIds'] as List<String>);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$relationIds = relationIds;
    result$data['relationIds'] = l$relationIds.map((e) => e).toList();
    return result$data;
  }

  CopyWith$Input$SetDocumentsOnDriverInput<Input$SetDocumentsOnDriverInput>
      get copyWith => CopyWith$Input$SetDocumentsOnDriverInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$SetDocumentsOnDriverInput ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$relationIds = relationIds;
    final lOther$relationIds = other.relationIds;
    if (l$relationIds.length != lOther$relationIds.length) {
      return false;
    }
    for (int i = 0; i < l$relationIds.length; i++) {
      final l$relationIds$entry = l$relationIds[i];
      final lOther$relationIds$entry = lOther$relationIds[i];
      if (l$relationIds$entry != lOther$relationIds$entry) {
        return false;
      }
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$relationIds = relationIds;
    return Object.hashAll([
      l$id,
      Object.hashAll(l$relationIds.map((v) => v)),
    ]);
  }
}

abstract class CopyWith$Input$SetDocumentsOnDriverInput<TRes> {
  factory CopyWith$Input$SetDocumentsOnDriverInput(
    Input$SetDocumentsOnDriverInput instance,
    TRes Function(Input$SetDocumentsOnDriverInput) then,
  ) = _CopyWithImpl$Input$SetDocumentsOnDriverInput;

  factory CopyWith$Input$SetDocumentsOnDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$SetDocumentsOnDriverInput;

  TRes call({
    String? id,
    List<String>? relationIds,
  });
}

class _CopyWithImpl$Input$SetDocumentsOnDriverInput<TRes>
    implements CopyWith$Input$SetDocumentsOnDriverInput<TRes> {
  _CopyWithImpl$Input$SetDocumentsOnDriverInput(
    this._instance,
    this._then,
  );

  final Input$SetDocumentsOnDriverInput _instance;

  final TRes Function(Input$SetDocumentsOnDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? relationIds = _undefined,
  }) =>
      _then(Input$SetDocumentsOnDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (relationIds != _undefined && relationIds != null)
          'relationIds': (relationIds as List<String>),
      }));
}

class _CopyWithStubImpl$Input$SetDocumentsOnDriverInput<TRes>
    implements CopyWith$Input$SetDocumentsOnDriverInput<TRes> {
  _CopyWithStubImpl$Input$SetDocumentsOnDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    List<String>? relationIds,
  }) =>
      _res;
}

class Input$UpdateOneDriverInput {
  factory Input$UpdateOneDriverInput({
    required String id,
    required Input$UpdateDriverInput update,
  }) =>
      Input$UpdateOneDriverInput._({
        r'id': id,
        r'update': update,
      });

  Input$UpdateOneDriverInput._(this._$data);

  factory Input$UpdateOneDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    final l$update = data['update'];
    result$data['update'] =
        Input$UpdateDriverInput.fromJson((l$update as Map<String, dynamic>));
    return Input$UpdateOneDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Input$UpdateDriverInput get update =>
      (_$data['update'] as Input$UpdateDriverInput);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$update = update;
    result$data['update'] = l$update.toJson();
    return result$data;
  }

  CopyWith$Input$UpdateOneDriverInput<Input$UpdateOneDriverInput>
      get copyWith => CopyWith$Input$UpdateOneDriverInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateOneDriverInput ||
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

abstract class CopyWith$Input$UpdateOneDriverInput<TRes> {
  factory CopyWith$Input$UpdateOneDriverInput(
    Input$UpdateOneDriverInput instance,
    TRes Function(Input$UpdateOneDriverInput) then,
  ) = _CopyWithImpl$Input$UpdateOneDriverInput;

  factory CopyWith$Input$UpdateOneDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateOneDriverInput;

  TRes call({
    String? id,
    Input$UpdateDriverInput? update,
  });
  CopyWith$Input$UpdateDriverInput<TRes> get update;
}

class _CopyWithImpl$Input$UpdateOneDriverInput<TRes>
    implements CopyWith$Input$UpdateOneDriverInput<TRes> {
  _CopyWithImpl$Input$UpdateOneDriverInput(
    this._instance,
    this._then,
  );

  final Input$UpdateOneDriverInput _instance;

  final TRes Function(Input$UpdateOneDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? update = _undefined,
  }) =>
      _then(Input$UpdateOneDriverInput._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
        if (update != _undefined && update != null)
          'update': (update as Input$UpdateDriverInput),
      }));

  CopyWith$Input$UpdateDriverInput<TRes> get update {
    final local$update = _instance.update;
    return CopyWith$Input$UpdateDriverInput(
        local$update, (e) => call(update: e));
  }
}

class _CopyWithStubImpl$Input$UpdateOneDriverInput<TRes>
    implements CopyWith$Input$UpdateOneDriverInput<TRes> {
  _CopyWithStubImpl$Input$UpdateOneDriverInput(this._res);

  TRes _res;

  call({
    String? id,
    Input$UpdateDriverInput? update,
  }) =>
      _res;

  CopyWith$Input$UpdateDriverInput<TRes> get update =>
      CopyWith$Input$UpdateDriverInput.stub(_res);
}

class Input$UpdateDriverInput {
  factory Input$UpdateDriverInput({
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? certificateNumber,
    String? email,
    int? carProductionYear,
    String? carPlate,
    String? mediaId,
    Enum$Gender? gender,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? password,
    String? bankSwift,
    int? presetAvatarNumber,
    String? address,
    String? carModelId,
    String? carId,
    String? carColorId,
    String? notificationPlayerId,
    int? searchDistance,
  }) =>
      Input$UpdateDriverInput._({
        if (firstName != null) r'firstName': firstName,
        if (lastName != null) r'lastName': lastName,
        if (status != null) r'status': status,
        if (certificateNumber != null) r'certificateNumber': certificateNumber,
        if (email != null) r'email': email,
        if (carProductionYear != null) r'carProductionYear': carProductionYear,
        if (carPlate != null) r'carPlate': carPlate,
        if (mediaId != null) r'mediaId': mediaId,
        if (gender != null) r'gender': gender,
        if (accountNumber != null) r'accountNumber': accountNumber,
        if (bankName != null) r'bankName': bankName,
        if (bankRoutingNumber != null) r'bankRoutingNumber': bankRoutingNumber,
        if (password != null) r'password': password,
        if (bankSwift != null) r'bankSwift': bankSwift,
        if (presetAvatarNumber != null)
          r'presetAvatarNumber': presetAvatarNumber,
        if (address != null) r'address': address,
        if (carModelId != null) r'carModelId': carModelId,
        if (carId != null) r'carId': carId,
        if (carColorId != null) r'carColorId': carColorId,
        if (notificationPlayerId != null)
          r'notificationPlayerId': notificationPlayerId,
        if (searchDistance != null) r'searchDistance': searchDistance,
      });

  Input$UpdateDriverInput._(this._$data);

  factory Input$UpdateDriverInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('firstName')) {
      final l$firstName = data['firstName'];
      result$data['firstName'] = (l$firstName as String?);
    }
    if (data.containsKey('lastName')) {
      final l$lastName = data['lastName'];
      result$data['lastName'] = (l$lastName as String?);
    }
    if (data.containsKey('status')) {
      final l$status = data['status'];
      result$data['status'] = l$status == null
          ? null
          : fromJson$Enum$DriverStatus((l$status as String));
    }
    if (data.containsKey('certificateNumber')) {
      final l$certificateNumber = data['certificateNumber'];
      result$data['certificateNumber'] = (l$certificateNumber as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('carProductionYear')) {
      final l$carProductionYear = data['carProductionYear'];
      result$data['carProductionYear'] = (l$carProductionYear as int?);
    }
    if (data.containsKey('carPlate')) {
      final l$carPlate = data['carPlate'];
      result$data['carPlate'] = (l$carPlate as String?);
    }
    if (data.containsKey('mediaId')) {
      final l$mediaId = data['mediaId'];
      result$data['mediaId'] = (l$mediaId as String?);
    }
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] =
          l$gender == null ? null : fromJson$Enum$Gender((l$gender as String));
    }
    if (data.containsKey('accountNumber')) {
      final l$accountNumber = data['accountNumber'];
      result$data['accountNumber'] = (l$accountNumber as String?);
    }
    if (data.containsKey('bankName')) {
      final l$bankName = data['bankName'];
      result$data['bankName'] = (l$bankName as String?);
    }
    if (data.containsKey('bankRoutingNumber')) {
      final l$bankRoutingNumber = data['bankRoutingNumber'];
      result$data['bankRoutingNumber'] = (l$bankRoutingNumber as String?);
    }
    if (data.containsKey('password')) {
      final l$password = data['password'];
      result$data['password'] = (l$password as String?);
    }
    if (data.containsKey('bankSwift')) {
      final l$bankSwift = data['bankSwift'];
      result$data['bankSwift'] = (l$bankSwift as String?);
    }
    if (data.containsKey('presetAvatarNumber')) {
      final l$presetAvatarNumber = data['presetAvatarNumber'];
      result$data['presetAvatarNumber'] = (l$presetAvatarNumber as int?);
    }
    if (data.containsKey('address')) {
      final l$address = data['address'];
      result$data['address'] = (l$address as String?);
    }
    if (data.containsKey('carModelId')) {
      final l$carModelId = data['carModelId'];
      result$data['carModelId'] = (l$carModelId as String?);
    }
    if (data.containsKey('carId')) {
      final l$carId = data['carId'];
      result$data['carId'] = (l$carId as String?);
    }
    if (data.containsKey('carColorId')) {
      final l$carColorId = data['carColorId'];
      result$data['carColorId'] = (l$carColorId as String?);
    }
    if (data.containsKey('notificationPlayerId')) {
      final l$notificationPlayerId = data['notificationPlayerId'];
      result$data['notificationPlayerId'] = (l$notificationPlayerId as String?);
    }
    if (data.containsKey('searchDistance')) {
      final l$searchDistance = data['searchDistance'];
      result$data['searchDistance'] = (l$searchDistance as int?);
    }
    return Input$UpdateDriverInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get firstName => (_$data['firstName'] as String?);

  String? get lastName => (_$data['lastName'] as String?);

  Enum$DriverStatus? get status => (_$data['status'] as Enum$DriverStatus?);

  String? get certificateNumber => (_$data['certificateNumber'] as String?);

  String? get email => (_$data['email'] as String?);

  int? get carProductionYear => (_$data['carProductionYear'] as int?);

  String? get carPlate => (_$data['carPlate'] as String?);

  String? get mediaId => (_$data['mediaId'] as String?);

  Enum$Gender? get gender => (_$data['gender'] as Enum$Gender?);

  String? get accountNumber => (_$data['accountNumber'] as String?);

  String? get bankName => (_$data['bankName'] as String?);

  String? get bankRoutingNumber => (_$data['bankRoutingNumber'] as String?);

  String? get password => (_$data['password'] as String?);

  String? get bankSwift => (_$data['bankSwift'] as String?);

  int? get presetAvatarNumber => (_$data['presetAvatarNumber'] as int?);

  String? get address => (_$data['address'] as String?);

  String? get carModelId => (_$data['carModelId'] as String?);

  String? get carId => (_$data['carId'] as String?);

  String? get carColorId => (_$data['carColorId'] as String?);

  String? get notificationPlayerId =>
      (_$data['notificationPlayerId'] as String?);

  int? get searchDistance => (_$data['searchDistance'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('firstName')) {
      final l$firstName = firstName;
      result$data['firstName'] = l$firstName;
    }
    if (_$data.containsKey('lastName')) {
      final l$lastName = lastName;
      result$data['lastName'] = l$lastName;
    }
    if (_$data.containsKey('status')) {
      final l$status = status;
      result$data['status'] =
          l$status == null ? null : toJson$Enum$DriverStatus(l$status);
    }
    if (_$data.containsKey('certificateNumber')) {
      final l$certificateNumber = certificateNumber;
      result$data['certificateNumber'] = l$certificateNumber;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('carProductionYear')) {
      final l$carProductionYear = carProductionYear;
      result$data['carProductionYear'] = l$carProductionYear;
    }
    if (_$data.containsKey('carPlate')) {
      final l$carPlate = carPlate;
      result$data['carPlate'] = l$carPlate;
    }
    if (_$data.containsKey('mediaId')) {
      final l$mediaId = mediaId;
      result$data['mediaId'] = l$mediaId;
    }
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] =
          l$gender == null ? null : toJson$Enum$Gender(l$gender);
    }
    if (_$data.containsKey('accountNumber')) {
      final l$accountNumber = accountNumber;
      result$data['accountNumber'] = l$accountNumber;
    }
    if (_$data.containsKey('bankName')) {
      final l$bankName = bankName;
      result$data['bankName'] = l$bankName;
    }
    if (_$data.containsKey('bankRoutingNumber')) {
      final l$bankRoutingNumber = bankRoutingNumber;
      result$data['bankRoutingNumber'] = l$bankRoutingNumber;
    }
    if (_$data.containsKey('password')) {
      final l$password = password;
      result$data['password'] = l$password;
    }
    if (_$data.containsKey('bankSwift')) {
      final l$bankSwift = bankSwift;
      result$data['bankSwift'] = l$bankSwift;
    }
    if (_$data.containsKey('presetAvatarNumber')) {
      final l$presetAvatarNumber = presetAvatarNumber;
      result$data['presetAvatarNumber'] = l$presetAvatarNumber;
    }
    if (_$data.containsKey('address')) {
      final l$address = address;
      result$data['address'] = l$address;
    }
    if (_$data.containsKey('carModelId')) {
      final l$carModelId = carModelId;
      result$data['carModelId'] = l$carModelId;
    }
    if (_$data.containsKey('carId')) {
      final l$carId = carId;
      result$data['carId'] = l$carId;
    }
    if (_$data.containsKey('carColorId')) {
      final l$carColorId = carColorId;
      result$data['carColorId'] = l$carColorId;
    }
    if (_$data.containsKey('notificationPlayerId')) {
      final l$notificationPlayerId = notificationPlayerId;
      result$data['notificationPlayerId'] = l$notificationPlayerId;
    }
    if (_$data.containsKey('searchDistance')) {
      final l$searchDistance = searchDistance;
      result$data['searchDistance'] = l$searchDistance;
    }
    return result$data;
  }

  CopyWith$Input$UpdateDriverInput<Input$UpdateDriverInput> get copyWith =>
      CopyWith$Input$UpdateDriverInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$UpdateDriverInput || runtimeType != other.runtimeType) {
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
    final l$status = status;
    final lOther$status = other.status;
    if (_$data.containsKey('status') != other._$data.containsKey('status')) {
      return false;
    }
    if (l$status != lOther$status) {
      return false;
    }
    final l$certificateNumber = certificateNumber;
    final lOther$certificateNumber = other.certificateNumber;
    if (_$data.containsKey('certificateNumber') !=
        other._$data.containsKey('certificateNumber')) {
      return false;
    }
    if (l$certificateNumber != lOther$certificateNumber) {
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
    final l$carProductionYear = carProductionYear;
    final lOther$carProductionYear = other.carProductionYear;
    if (_$data.containsKey('carProductionYear') !=
        other._$data.containsKey('carProductionYear')) {
      return false;
    }
    if (l$carProductionYear != lOther$carProductionYear) {
      return false;
    }
    final l$carPlate = carPlate;
    final lOther$carPlate = other.carPlate;
    if (_$data.containsKey('carPlate') !=
        other._$data.containsKey('carPlate')) {
      return false;
    }
    if (l$carPlate != lOther$carPlate) {
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
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$accountNumber = accountNumber;
    final lOther$accountNumber = other.accountNumber;
    if (_$data.containsKey('accountNumber') !=
        other._$data.containsKey('accountNumber')) {
      return false;
    }
    if (l$accountNumber != lOther$accountNumber) {
      return false;
    }
    final l$bankName = bankName;
    final lOther$bankName = other.bankName;
    if (_$data.containsKey('bankName') !=
        other._$data.containsKey('bankName')) {
      return false;
    }
    if (l$bankName != lOther$bankName) {
      return false;
    }
    final l$bankRoutingNumber = bankRoutingNumber;
    final lOther$bankRoutingNumber = other.bankRoutingNumber;
    if (_$data.containsKey('bankRoutingNumber') !=
        other._$data.containsKey('bankRoutingNumber')) {
      return false;
    }
    if (l$bankRoutingNumber != lOther$bankRoutingNumber) {
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
    final l$bankSwift = bankSwift;
    final lOther$bankSwift = other.bankSwift;
    if (_$data.containsKey('bankSwift') !=
        other._$data.containsKey('bankSwift')) {
      return false;
    }
    if (l$bankSwift != lOther$bankSwift) {
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
    final l$address = address;
    final lOther$address = other.address;
    if (_$data.containsKey('address') != other._$data.containsKey('address')) {
      return false;
    }
    if (l$address != lOther$address) {
      return false;
    }
    final l$carModelId = carModelId;
    final lOther$carModelId = other.carModelId;
    if (_$data.containsKey('carModelId') !=
        other._$data.containsKey('carModelId')) {
      return false;
    }
    if (l$carModelId != lOther$carModelId) {
      return false;
    }
    final l$carId = carId;
    final lOther$carId = other.carId;
    if (_$data.containsKey('carId') != other._$data.containsKey('carId')) {
      return false;
    }
    if (l$carId != lOther$carId) {
      return false;
    }
    final l$carColorId = carColorId;
    final lOther$carColorId = other.carColorId;
    if (_$data.containsKey('carColorId') !=
        other._$data.containsKey('carColorId')) {
      return false;
    }
    if (l$carColorId != lOther$carColorId) {
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
    final l$searchDistance = searchDistance;
    final lOther$searchDistance = other.searchDistance;
    if (_$data.containsKey('searchDistance') !=
        other._$data.containsKey('searchDistance')) {
      return false;
    }
    if (l$searchDistance != lOther$searchDistance) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$firstName = firstName;
    final l$lastName = lastName;
    final l$status = status;
    final l$certificateNumber = certificateNumber;
    final l$email = email;
    final l$carProductionYear = carProductionYear;
    final l$carPlate = carPlate;
    final l$mediaId = mediaId;
    final l$gender = gender;
    final l$accountNumber = accountNumber;
    final l$bankName = bankName;
    final l$bankRoutingNumber = bankRoutingNumber;
    final l$password = password;
    final l$bankSwift = bankSwift;
    final l$presetAvatarNumber = presetAvatarNumber;
    final l$address = address;
    final l$carModelId = carModelId;
    final l$carId = carId;
    final l$carColorId = carColorId;
    final l$notificationPlayerId = notificationPlayerId;
    final l$searchDistance = searchDistance;
    return Object.hashAll([
      _$data.containsKey('firstName') ? l$firstName : const {},
      _$data.containsKey('lastName') ? l$lastName : const {},
      _$data.containsKey('status') ? l$status : const {},
      _$data.containsKey('certificateNumber') ? l$certificateNumber : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('carProductionYear') ? l$carProductionYear : const {},
      _$data.containsKey('carPlate') ? l$carPlate : const {},
      _$data.containsKey('mediaId') ? l$mediaId : const {},
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('accountNumber') ? l$accountNumber : const {},
      _$data.containsKey('bankName') ? l$bankName : const {},
      _$data.containsKey('bankRoutingNumber') ? l$bankRoutingNumber : const {},
      _$data.containsKey('password') ? l$password : const {},
      _$data.containsKey('bankSwift') ? l$bankSwift : const {},
      _$data.containsKey('presetAvatarNumber')
          ? l$presetAvatarNumber
          : const {},
      _$data.containsKey('address') ? l$address : const {},
      _$data.containsKey('carModelId') ? l$carModelId : const {},
      _$data.containsKey('carId') ? l$carId : const {},
      _$data.containsKey('carColorId') ? l$carColorId : const {},
      _$data.containsKey('notificationPlayerId')
          ? l$notificationPlayerId
          : const {},
      _$data.containsKey('searchDistance') ? l$searchDistance : const {},
    ]);
  }
}

abstract class CopyWith$Input$UpdateDriverInput<TRes> {
  factory CopyWith$Input$UpdateDriverInput(
    Input$UpdateDriverInput instance,
    TRes Function(Input$UpdateDriverInput) then,
  ) = _CopyWithImpl$Input$UpdateDriverInput;

  factory CopyWith$Input$UpdateDriverInput.stub(TRes res) =
      _CopyWithStubImpl$Input$UpdateDriverInput;

  TRes call({
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? certificateNumber,
    String? email,
    int? carProductionYear,
    String? carPlate,
    String? mediaId,
    Enum$Gender? gender,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? password,
    String? bankSwift,
    int? presetAvatarNumber,
    String? address,
    String? carModelId,
    String? carId,
    String? carColorId,
    String? notificationPlayerId,
    int? searchDistance,
  });
}

class _CopyWithImpl$Input$UpdateDriverInput<TRes>
    implements CopyWith$Input$UpdateDriverInput<TRes> {
  _CopyWithImpl$Input$UpdateDriverInput(
    this._instance,
    this._then,
  );

  final Input$UpdateDriverInput _instance;

  final TRes Function(Input$UpdateDriverInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? firstName = _undefined,
    Object? lastName = _undefined,
    Object? status = _undefined,
    Object? certificateNumber = _undefined,
    Object? email = _undefined,
    Object? carProductionYear = _undefined,
    Object? carPlate = _undefined,
    Object? mediaId = _undefined,
    Object? gender = _undefined,
    Object? accountNumber = _undefined,
    Object? bankName = _undefined,
    Object? bankRoutingNumber = _undefined,
    Object? password = _undefined,
    Object? bankSwift = _undefined,
    Object? presetAvatarNumber = _undefined,
    Object? address = _undefined,
    Object? carModelId = _undefined,
    Object? carId = _undefined,
    Object? carColorId = _undefined,
    Object? notificationPlayerId = _undefined,
    Object? searchDistance = _undefined,
  }) =>
      _then(Input$UpdateDriverInput._({
        ..._instance._$data,
        if (firstName != _undefined) 'firstName': (firstName as String?),
        if (lastName != _undefined) 'lastName': (lastName as String?),
        if (status != _undefined) 'status': (status as Enum$DriverStatus?),
        if (certificateNumber != _undefined)
          'certificateNumber': (certificateNumber as String?),
        if (email != _undefined) 'email': (email as String?),
        if (carProductionYear != _undefined)
          'carProductionYear': (carProductionYear as int?),
        if (carPlate != _undefined) 'carPlate': (carPlate as String?),
        if (mediaId != _undefined) 'mediaId': (mediaId as String?),
        if (gender != _undefined) 'gender': (gender as Enum$Gender?),
        if (accountNumber != _undefined)
          'accountNumber': (accountNumber as String?),
        if (bankName != _undefined) 'bankName': (bankName as String?),
        if (bankRoutingNumber != _undefined)
          'bankRoutingNumber': (bankRoutingNumber as String?),
        if (password != _undefined) 'password': (password as String?),
        if (bankSwift != _undefined) 'bankSwift': (bankSwift as String?),
        if (presetAvatarNumber != _undefined)
          'presetAvatarNumber': (presetAvatarNumber as int?),
        if (address != _undefined) 'address': (address as String?),
        if (carModelId != _undefined) 'carModelId': (carModelId as String?),
        if (carId != _undefined) 'carId': (carId as String?),
        if (carColorId != _undefined) 'carColorId': (carColorId as String?),
        if (notificationPlayerId != _undefined)
          'notificationPlayerId': (notificationPlayerId as String?),
        if (searchDistance != _undefined)
          'searchDistance': (searchDistance as int?),
      }));
}

class _CopyWithStubImpl$Input$UpdateDriverInput<TRes>
    implements CopyWith$Input$UpdateDriverInput<TRes> {
  _CopyWithStubImpl$Input$UpdateDriverInput(this._res);

  TRes _res;

  call({
    String? firstName,
    String? lastName,
    Enum$DriverStatus? status,
    String? certificateNumber,
    String? email,
    int? carProductionYear,
    String? carPlate,
    String? mediaId,
    Enum$Gender? gender,
    String? accountNumber,
    String? bankName,
    String? bankRoutingNumber,
    String? password,
    String? bankSwift,
    int? presetAvatarNumber,
    String? address,
    String? carModelId,
    String? carId,
    String? carColorId,
    String? notificationPlayerId,
    int? searchDistance,
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

enum Enum$AppColorScheme {
  Cobalt,
  CoralRed,
  EarthyGreen,
  SunburstYellow,
  HyperPink,
  ElectricIndigo,
  AutumnOrange,
  Noir,
  $unknown;

  factory Enum$AppColorScheme.fromJson(String value) =>
      fromJson$Enum$AppColorScheme(value);

  String toJson() => toJson$Enum$AppColorScheme(this);
}

String toJson$Enum$AppColorScheme(Enum$AppColorScheme e) {
  switch (e) {
    case Enum$AppColorScheme.Cobalt:
      return r'Cobalt';
    case Enum$AppColorScheme.CoralRed:
      return r'CoralRed';
    case Enum$AppColorScheme.EarthyGreen:
      return r'EarthyGreen';
    case Enum$AppColorScheme.SunburstYellow:
      return r'SunburstYellow';
    case Enum$AppColorScheme.HyperPink:
      return r'HyperPink';
    case Enum$AppColorScheme.ElectricIndigo:
      return r'ElectricIndigo';
    case Enum$AppColorScheme.AutumnOrange:
      return r'AutumnOrange';
    case Enum$AppColorScheme.Noir:
      return r'Noir';
    case Enum$AppColorScheme.$unknown:
      return r'$unknown';
  }
}

Enum$AppColorScheme fromJson$Enum$AppColorScheme(String value) {
  switch (value) {
    case r'Cobalt':
      return Enum$AppColorScheme.Cobalt;
    case r'CoralRed':
      return Enum$AppColorScheme.CoralRed;
    case r'EarthyGreen':
      return Enum$AppColorScheme.EarthyGreen;
    case r'SunburstYellow':
      return Enum$AppColorScheme.SunburstYellow;
    case r'HyperPink':
      return Enum$AppColorScheme.HyperPink;
    case r'ElectricIndigo':
      return Enum$AppColorScheme.ElectricIndigo;
    case r'AutumnOrange':
      return Enum$AppColorScheme.AutumnOrange;
    case r'Noir':
      return Enum$AppColorScheme.Noir;
    default:
      return Enum$AppColorScheme.$unknown;
  }
}

enum Enum$LicenseType {
  Regular,
  Extended,
  Bronze,
  Silver,
  Gold,
  $unknown;

  factory Enum$LicenseType.fromJson(String value) =>
      fromJson$Enum$LicenseType(value);

  String toJson() => toJson$Enum$LicenseType(this);
}

String toJson$Enum$LicenseType(Enum$LicenseType e) {
  switch (e) {
    case Enum$LicenseType.Regular:
      return r'Regular';
    case Enum$LicenseType.Extended:
      return r'Extended';
    case Enum$LicenseType.Bronze:
      return r'Bronze';
    case Enum$LicenseType.Silver:
      return r'Silver';
    case Enum$LicenseType.Gold:
      return r'Gold';
    case Enum$LicenseType.$unknown:
      return r'$unknown';
  }
}

Enum$LicenseType fromJson$Enum$LicenseType(String value) {
  switch (value) {
    case r'Regular':
      return Enum$LicenseType.Regular;
    case r'Extended':
      return Enum$LicenseType.Extended;
    case r'Bronze':
      return Enum$LicenseType.Bronze;
    case r'Silver':
      return Enum$LicenseType.Silver;
    case r'Gold':
      return Enum$LicenseType.Gold;
    default:
      return Enum$LicenseType.$unknown;
  }
}

enum Enum$AppType {
  Taxi,
  Shop,
  Parking,
  $unknown;

  factory Enum$AppType.fromJson(String value) => fromJson$Enum$AppType(value);

  String toJson() => toJson$Enum$AppType(this);
}

String toJson$Enum$AppType(Enum$AppType e) {
  switch (e) {
    case Enum$AppType.Taxi:
      return r'Taxi';
    case Enum$AppType.Shop:
      return r'Shop';
    case Enum$AppType.Parking:
      return r'Parking';
    case Enum$AppType.$unknown:
      return r'$unknown';
  }
}

Enum$AppType fromJson$Enum$AppType(String value) {
  switch (value) {
    case r'Taxi':
      return Enum$AppType.Taxi;
    case r'Shop':
      return Enum$AppType.Shop;
    case r'Parking':
      return Enum$AppType.Parking;
    default:
      return Enum$AppType.$unknown;
  }
}

enum Enum$PlatformAddOn {
  FleetAddOn,
  $unknown;

  factory Enum$PlatformAddOn.fromJson(String value) =>
      fromJson$Enum$PlatformAddOn(value);

  String toJson() => toJson$Enum$PlatformAddOn(this);
}

String toJson$Enum$PlatformAddOn(Enum$PlatformAddOn e) {
  switch (e) {
    case Enum$PlatformAddOn.FleetAddOn:
      return r'FleetAddOn';
    case Enum$PlatformAddOn.$unknown:
      return r'$unknown';
  }
}

Enum$PlatformAddOn fromJson$Enum$PlatformAddOn(String value) {
  switch (value) {
    case r'FleetAddOn':
      return Enum$PlatformAddOn.FleetAddOn;
    default:
      return Enum$PlatformAddOn.$unknown;
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

enum Enum$RiderWalletSortFields {
  id,
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
    case r'riderId':
      return Enum$RiderWalletSortFields.riderId;
    default:
      return Enum$RiderWalletSortFields.$unknown;
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

enum Enum$DriverDeductTransactionType {
  Withdraw,
  Commission,
  Correction,
  $unknown;

  factory Enum$DriverDeductTransactionType.fromJson(String value) =>
      fromJson$Enum$DriverDeductTransactionType(value);

  String toJson() => toJson$Enum$DriverDeductTransactionType(this);
}

String toJson$Enum$DriverDeductTransactionType(
    Enum$DriverDeductTransactionType e) {
  switch (e) {
    case Enum$DriverDeductTransactionType.Withdraw:
      return r'Withdraw';
    case Enum$DriverDeductTransactionType.Commission:
      return r'Commission';
    case Enum$DriverDeductTransactionType.Correction:
      return r'Correction';
    case Enum$DriverDeductTransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$DriverDeductTransactionType fromJson$Enum$DriverDeductTransactionType(
    String value) {
  switch (value) {
    case r'Withdraw':
      return Enum$DriverDeductTransactionType.Withdraw;
    case r'Commission':
      return Enum$DriverDeductTransactionType.Commission;
    case r'Correction':
      return Enum$DriverDeductTransactionType.Correction;
    default:
      return Enum$DriverDeductTransactionType.$unknown;
  }
}

enum Enum$DriverRechargeTransactionType {
  OrderFee,
  BankTransfer,
  InAppPayment,
  Gift,
  $unknown;

  factory Enum$DriverRechargeTransactionType.fromJson(String value) =>
      fromJson$Enum$DriverRechargeTransactionType(value);

  String toJson() => toJson$Enum$DriverRechargeTransactionType(this);
}

String toJson$Enum$DriverRechargeTransactionType(
    Enum$DriverRechargeTransactionType e) {
  switch (e) {
    case Enum$DriverRechargeTransactionType.OrderFee:
      return r'OrderFee';
    case Enum$DriverRechargeTransactionType.BankTransfer:
      return r'BankTransfer';
    case Enum$DriverRechargeTransactionType.InAppPayment:
      return r'InAppPayment';
    case Enum$DriverRechargeTransactionType.Gift:
      return r'Gift';
    case Enum$DriverRechargeTransactionType.$unknown:
      return r'$unknown';
  }
}

Enum$DriverRechargeTransactionType fromJson$Enum$DriverRechargeTransactionType(
    String value) {
  switch (value) {
    case r'OrderFee':
      return Enum$DriverRechargeTransactionType.OrderFee;
    case r'BankTransfer':
      return Enum$DriverRechargeTransactionType.BankTransfer;
    case r'InAppPayment':
      return Enum$DriverRechargeTransactionType.InAppPayment;
    case r'Gift':
      return Enum$DriverRechargeTransactionType.Gift;
    default:
      return Enum$DriverRechargeTransactionType.$unknown;
  }
}

enum Enum$DriverStatus {
  Online,
  Offline,
  Blocked,
  InService,
  WaitingDocuments,
  PendingApproval,
  SoftReject,
  HardReject,
  $unknown;

  factory Enum$DriverStatus.fromJson(String value) =>
      fromJson$Enum$DriverStatus(value);

  String toJson() => toJson$Enum$DriverStatus(this);
}

String toJson$Enum$DriverStatus(Enum$DriverStatus e) {
  switch (e) {
    case Enum$DriverStatus.Online:
      return r'Online';
    case Enum$DriverStatus.Offline:
      return r'Offline';
    case Enum$DriverStatus.Blocked:
      return r'Blocked';
    case Enum$DriverStatus.InService:
      return r'InService';
    case Enum$DriverStatus.WaitingDocuments:
      return r'WaitingDocuments';
    case Enum$DriverStatus.PendingApproval:
      return r'PendingApproval';
    case Enum$DriverStatus.SoftReject:
      return r'SoftReject';
    case Enum$DriverStatus.HardReject:
      return r'HardReject';
    case Enum$DriverStatus.$unknown:
      return r'$unknown';
  }
}

Enum$DriverStatus fromJson$Enum$DriverStatus(String value) {
  switch (value) {
    case r'Online':
      return Enum$DriverStatus.Online;
    case r'Offline':
      return Enum$DriverStatus.Offline;
    case r'Blocked':
      return Enum$DriverStatus.Blocked;
    case r'InService':
      return Enum$DriverStatus.InService;
    case r'WaitingDocuments':
      return Enum$DriverStatus.WaitingDocuments;
    case r'PendingApproval':
      return Enum$DriverStatus.PendingApproval;
    case r'SoftReject':
      return Enum$DriverStatus.SoftReject;
    case r'HardReject':
      return Enum$DriverStatus.HardReject;
    default:
      return Enum$DriverStatus.$unknown;
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

enum Enum$MediaSortFields {
  id,
  $unknown;

  factory Enum$MediaSortFields.fromJson(String value) =>
      fromJson$Enum$MediaSortFields(value);

  String toJson() => toJson$Enum$MediaSortFields(this);
}

String toJson$Enum$MediaSortFields(Enum$MediaSortFields e) {
  switch (e) {
    case Enum$MediaSortFields.id:
      return r'id';
    case Enum$MediaSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$MediaSortFields fromJson$Enum$MediaSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$MediaSortFields.id;
    default:
      return Enum$MediaSortFields.$unknown;
  }
}

enum Enum$OrderSortFields {
  id,
  status,
  createdOn,
  distanceBest,
  costBest,
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
    case Enum$OrderSortFields.costBest:
      return r'costBest';
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
    case r'costBest':
      return Enum$OrderSortFields.costBest;
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

enum Enum$SavedPaymentMethodSortFields {
  id,
  driverId,
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
    case Enum$SavedPaymentMethodSortFields.driverId:
      return r'driverId';
    case Enum$SavedPaymentMethodSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$SavedPaymentMethodSortFields fromJson$Enum$SavedPaymentMethodSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$SavedPaymentMethodSortFields.id;
    case r'driverId':
      return Enum$SavedPaymentMethodSortFields.driverId;
    default:
      return Enum$SavedPaymentMethodSortFields.$unknown;
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

enum Enum$DriverTransacionSortFields {
  id,
  driverId,
  $unknown;

  factory Enum$DriverTransacionSortFields.fromJson(String value) =>
      fromJson$Enum$DriverTransacionSortFields(value);

  String toJson() => toJson$Enum$DriverTransacionSortFields(this);
}

String toJson$Enum$DriverTransacionSortFields(
    Enum$DriverTransacionSortFields e) {
  switch (e) {
    case Enum$DriverTransacionSortFields.id:
      return r'id';
    case Enum$DriverTransacionSortFields.driverId:
      return r'driverId';
    case Enum$DriverTransacionSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$DriverTransacionSortFields fromJson$Enum$DriverTransacionSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$DriverTransacionSortFields.id;
    case r'driverId':
      return Enum$DriverTransacionSortFields.driverId;
    default:
      return Enum$DriverTransacionSortFields.$unknown;
  }
}

enum Enum$DriverWalletSortFields {
  id,
  driverId,
  $unknown;

  factory Enum$DriverWalletSortFields.fromJson(String value) =>
      fromJson$Enum$DriverWalletSortFields(value);

  String toJson() => toJson$Enum$DriverWalletSortFields(this);
}

String toJson$Enum$DriverWalletSortFields(Enum$DriverWalletSortFields e) {
  switch (e) {
    case Enum$DriverWalletSortFields.id:
      return r'id';
    case Enum$DriverWalletSortFields.driverId:
      return r'driverId';
    case Enum$DriverWalletSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$DriverWalletSortFields fromJson$Enum$DriverWalletSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$DriverWalletSortFields.id;
    case r'driverId':
      return Enum$DriverWalletSortFields.driverId;
    default:
      return Enum$DriverWalletSortFields.$unknown;
  }
}

enum Enum$GroupBy {
  DAY,
  WEEK,
  MONTH,
  YEAR,
  $unknown;

  factory Enum$GroupBy.fromJson(String value) => fromJson$Enum$GroupBy(value);

  String toJson() => toJson$Enum$GroupBy(this);
}

String toJson$Enum$GroupBy(Enum$GroupBy e) {
  switch (e) {
    case Enum$GroupBy.DAY:
      return r'DAY';
    case Enum$GroupBy.WEEK:
      return r'WEEK';
    case Enum$GroupBy.MONTH:
      return r'MONTH';
    case Enum$GroupBy.YEAR:
      return r'YEAR';
    case Enum$GroupBy.$unknown:
      return r'$unknown';
  }
}

Enum$GroupBy fromJson$Enum$GroupBy(String value) {
  switch (value) {
    case r'DAY':
      return Enum$GroupBy.DAY;
    case r'WEEK':
      return Enum$GroupBy.WEEK;
    case r'MONTH':
      return Enum$GroupBy.MONTH;
    case r'YEAR':
      return Enum$GroupBy.YEAR;
    default:
      return Enum$GroupBy.$unknown;
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

enum Enum$PayoutMethodType {
  Stripe,
  BankTransfer,
  $unknown;

  factory Enum$PayoutMethodType.fromJson(String value) =>
      fromJson$Enum$PayoutMethodType(value);

  String toJson() => toJson$Enum$PayoutMethodType(this);
}

String toJson$Enum$PayoutMethodType(Enum$PayoutMethodType e) {
  switch (e) {
    case Enum$PayoutMethodType.Stripe:
      return r'Stripe';
    case Enum$PayoutMethodType.BankTransfer:
      return r'BankTransfer';
    case Enum$PayoutMethodType.$unknown:
      return r'$unknown';
  }
}

Enum$PayoutMethodType fromJson$Enum$PayoutMethodType(String value) {
  switch (value) {
    case r'Stripe':
      return Enum$PayoutMethodType.Stripe;
    case r'BankTransfer':
      return Enum$PayoutMethodType.BankTransfer;
    default:
      return Enum$PayoutMethodType.$unknown;
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

enum Enum$TimeQuery {
  Daily,
  Weekly,
  Monthly,
  $unknown;

  factory Enum$TimeQuery.fromJson(String value) =>
      fromJson$Enum$TimeQuery(value);

  String toJson() => toJson$Enum$TimeQuery(this);
}

String toJson$Enum$TimeQuery(Enum$TimeQuery e) {
  switch (e) {
    case Enum$TimeQuery.Daily:
      return r'Daily';
    case Enum$TimeQuery.Weekly:
      return r'Weekly';
    case Enum$TimeQuery.Monthly:
      return r'Monthly';
    case Enum$TimeQuery.$unknown:
      return r'$unknown';
  }
}

Enum$TimeQuery fromJson$Enum$TimeQuery(String value) {
  switch (value) {
    case r'Daily':
      return Enum$TimeQuery.Daily;
    case r'Weekly':
      return Enum$TimeQuery.Weekly;
    case r'Monthly':
      return Enum$TimeQuery.Monthly;
    default:
      return Enum$TimeQuery.$unknown;
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

enum Enum$PayoutAccountSortFields {
  id,
  driverId,
  $unknown;

  factory Enum$PayoutAccountSortFields.fromJson(String value) =>
      fromJson$Enum$PayoutAccountSortFields(value);

  String toJson() => toJson$Enum$PayoutAccountSortFields(this);
}

String toJson$Enum$PayoutAccountSortFields(Enum$PayoutAccountSortFields e) {
  switch (e) {
    case Enum$PayoutAccountSortFields.id:
      return r'id';
    case Enum$PayoutAccountSortFields.driverId:
      return r'driverId';
    case Enum$PayoutAccountSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$PayoutAccountSortFields fromJson$Enum$PayoutAccountSortFields(
    String value) {
  switch (value) {
    case r'id':
      return Enum$PayoutAccountSortFields.id;
    case r'driverId':
      return Enum$PayoutAccountSortFields.driverId;
    default:
      return Enum$PayoutAccountSortFields.$unknown;
  }
}

enum Enum$PayoutMethodSortFields {
  id,
  $unknown;

  factory Enum$PayoutMethodSortFields.fromJson(String value) =>
      fromJson$Enum$PayoutMethodSortFields(value);

  String toJson() => toJson$Enum$PayoutMethodSortFields(this);
}

String toJson$Enum$PayoutMethodSortFields(Enum$PayoutMethodSortFields e) {
  switch (e) {
    case Enum$PayoutMethodSortFields.id:
      return r'id';
    case Enum$PayoutMethodSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$PayoutMethodSortFields fromJson$Enum$PayoutMethodSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$PayoutMethodSortFields.id;
    default:
      return Enum$PayoutMethodSortFields.$unknown;
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

enum Enum$CarModelSortFields {
  id,
  $unknown;

  factory Enum$CarModelSortFields.fromJson(String value) =>
      fromJson$Enum$CarModelSortFields(value);

  String toJson() => toJson$Enum$CarModelSortFields(this);
}

String toJson$Enum$CarModelSortFields(Enum$CarModelSortFields e) {
  switch (e) {
    case Enum$CarModelSortFields.id:
      return r'id';
    case Enum$CarModelSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$CarModelSortFields fromJson$Enum$CarModelSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$CarModelSortFields.id;
    default:
      return Enum$CarModelSortFields.$unknown;
  }
}

enum Enum$CarColorSortFields {
  id,
  $unknown;

  factory Enum$CarColorSortFields.fromJson(String value) =>
      fromJson$Enum$CarColorSortFields(value);

  String toJson() => toJson$Enum$CarColorSortFields(this);
}

String toJson$Enum$CarColorSortFields(Enum$CarColorSortFields e) {
  switch (e) {
    case Enum$CarColorSortFields.id:
      return r'id';
    case Enum$CarColorSortFields.$unknown:
      return r'$unknown';
  }
}

Enum$CarColorSortFields fromJson$Enum$CarColorSortFields(String value) {
  switch (value) {
    case r'id':
      return Enum$CarColorSortFields.id;
    default:
      return Enum$CarColorSortFields.$unknown;
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
