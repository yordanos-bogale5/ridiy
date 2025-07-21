// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'earnings.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EarningsState {
  Enum$TimeQuery get timeframe;
  DateTime get startDate;
  DateTime get endDate;
  ApiResponse<Query$Earnings> get earningsState;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EarningsStateCopyWith<EarningsState> get copyWith =>
      _$EarningsStateCopyWithImpl<EarningsState>(
          this as EarningsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EarningsState &&
            (identical(other.timeframe, timeframe) ||
                other.timeframe == timeframe) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.earningsState, earningsState) ||
                other.earningsState == earningsState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, timeframe, startDate, endDate, earningsState);

  @override
  String toString() {
    return 'EarningsState(timeframe: $timeframe, startDate: $startDate, endDate: $endDate, earningsState: $earningsState)';
  }
}

/// @nodoc
abstract mixin class $EarningsStateCopyWith<$Res> {
  factory $EarningsStateCopyWith(
          EarningsState value, $Res Function(EarningsState) _then) =
      _$EarningsStateCopyWithImpl;
  @useResult
  $Res call(
      {Enum$TimeQuery timeframe,
      DateTime startDate,
      DateTime endDate,
      ApiResponse<Query$Earnings> earningsState});

  $ApiResponseCopyWith<Query$Earnings, $Res> get earningsState;
}

/// @nodoc
class _$EarningsStateCopyWithImpl<$Res>
    implements $EarningsStateCopyWith<$Res> {
  _$EarningsStateCopyWithImpl(this._self, this._then);

  final EarningsState _self;
  final $Res Function(EarningsState) _then;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeframe = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? earningsState = null,
  }) {
    return _then(_self.copyWith(
      timeframe: null == timeframe
          ? _self.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as Enum$TimeQuery,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earningsState: null == earningsState
          ? _self.earningsState
          : earningsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$Earnings>,
    ));
  }

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$Earnings, $Res> get earningsState {
    return $ApiResponseCopyWith<Query$Earnings, $Res>(_self.earningsState,
        (value) {
      return _then(_self.copyWith(earningsState: value));
    });
  }
}

/// @nodoc

class _EarningsState extends EarningsState {
  const _EarningsState(
      {required this.timeframe,
      required this.startDate,
      required this.endDate,
      this.earningsState = const ApiResponseInitial()})
      : super._();

  @override
  final Enum$TimeQuery timeframe;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  @JsonKey()
  final ApiResponse<Query$Earnings> earningsState;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EarningsStateCopyWith<_EarningsState> get copyWith =>
      __$EarningsStateCopyWithImpl<_EarningsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EarningsState &&
            (identical(other.timeframe, timeframe) ||
                other.timeframe == timeframe) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.earningsState, earningsState) ||
                other.earningsState == earningsState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, timeframe, startDate, endDate, earningsState);

  @override
  String toString() {
    return 'EarningsState(timeframe: $timeframe, startDate: $startDate, endDate: $endDate, earningsState: $earningsState)';
  }
}

/// @nodoc
abstract mixin class _$EarningsStateCopyWith<$Res>
    implements $EarningsStateCopyWith<$Res> {
  factory _$EarningsStateCopyWith(
          _EarningsState value, $Res Function(_EarningsState) _then) =
      __$EarningsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Enum$TimeQuery timeframe,
      DateTime startDate,
      DateTime endDate,
      ApiResponse<Query$Earnings> earningsState});

  @override
  $ApiResponseCopyWith<Query$Earnings, $Res> get earningsState;
}

/// @nodoc
class __$EarningsStateCopyWithImpl<$Res>
    implements _$EarningsStateCopyWith<$Res> {
  __$EarningsStateCopyWithImpl(this._self, this._then);

  final _EarningsState _self;
  final $Res Function(_EarningsState) _then;

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? timeframe = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? earningsState = null,
  }) {
    return _then(_EarningsState(
      timeframe: null == timeframe
          ? _self.timeframe
          : timeframe // ignore: cast_nullable_to_non_nullable
              as Enum$TimeQuery,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      earningsState: null == earningsState
          ? _self.earningsState
          : earningsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$Earnings>,
    ));
  }

  /// Create a copy of EarningsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$Earnings, $Res> get earningsState {
    return $ApiResponseCopyWith<Query$Earnings, $Res>(_self.earningsState,
        (value) {
      return _then(_self.copyWith(earningsState: value));
    });
  }
}

// dart format on
