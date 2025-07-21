// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ride_history_report_issue.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RideHistoryReportIssueState {
  ApiResponse<Mutation$SubmitIssue> get submitIssueState;

  /// Create a copy of RideHistoryReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RideHistoryReportIssueStateCopyWith<RideHistoryReportIssueState>
      get copyWith => _$RideHistoryReportIssueStateCopyWithImpl<
              RideHistoryReportIssueState>(
          this as RideHistoryReportIssueState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RideHistoryReportIssueState &&
            (identical(other.submitIssueState, submitIssueState) ||
                other.submitIssueState == submitIssueState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitIssueState);

  @override
  String toString() {
    return 'RideHistoryReportIssueState(submitIssueState: $submitIssueState)';
  }
}

/// @nodoc
abstract mixin class $RideHistoryReportIssueStateCopyWith<$Res> {
  factory $RideHistoryReportIssueStateCopyWith(
          RideHistoryReportIssueState value,
          $Res Function(RideHistoryReportIssueState) _then) =
      _$RideHistoryReportIssueStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Mutation$SubmitIssue> submitIssueState});

  $ApiResponseCopyWith<Mutation$SubmitIssue, $Res> get submitIssueState;
}

/// @nodoc
class _$RideHistoryReportIssueStateCopyWithImpl<$Res>
    implements $RideHistoryReportIssueStateCopyWith<$Res> {
  _$RideHistoryReportIssueStateCopyWithImpl(this._self, this._then);

  final RideHistoryReportIssueState _self;
  final $Res Function(RideHistoryReportIssueState) _then;

  /// Create a copy of RideHistoryReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? submitIssueState = null,
  }) {
    return _then(_self.copyWith(
      submitIssueState: null == submitIssueState
          ? _self.submitIssueState
          : submitIssueState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$SubmitIssue>,
    ));
  }

  /// Create a copy of RideHistoryReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$SubmitIssue, $Res> get submitIssueState {
    return $ApiResponseCopyWith<Mutation$SubmitIssue, $Res>(
        _self.submitIssueState, (value) {
      return _then(_self.copyWith(submitIssueState: value));
    });
  }
}

/// @nodoc

class _RideHistoryReportIssueState implements RideHistoryReportIssueState {
  const _RideHistoryReportIssueState(
      {this.submitIssueState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Mutation$SubmitIssue> submitIssueState;

  /// Create a copy of RideHistoryReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RideHistoryReportIssueStateCopyWith<_RideHistoryReportIssueState>
      get copyWith => __$RideHistoryReportIssueStateCopyWithImpl<
          _RideHistoryReportIssueState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RideHistoryReportIssueState &&
            (identical(other.submitIssueState, submitIssueState) ||
                other.submitIssueState == submitIssueState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitIssueState);

  @override
  String toString() {
    return 'RideHistoryReportIssueState(submitIssueState: $submitIssueState)';
  }
}

/// @nodoc
abstract mixin class _$RideHistoryReportIssueStateCopyWith<$Res>
    implements $RideHistoryReportIssueStateCopyWith<$Res> {
  factory _$RideHistoryReportIssueStateCopyWith(
          _RideHistoryReportIssueState value,
          $Res Function(_RideHistoryReportIssueState) _then) =
      __$RideHistoryReportIssueStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Mutation$SubmitIssue> submitIssueState});

  @override
  $ApiResponseCopyWith<Mutation$SubmitIssue, $Res> get submitIssueState;
}

/// @nodoc
class __$RideHistoryReportIssueStateCopyWithImpl<$Res>
    implements _$RideHistoryReportIssueStateCopyWith<$Res> {
  __$RideHistoryReportIssueStateCopyWithImpl(this._self, this._then);

  final _RideHistoryReportIssueState _self;
  final $Res Function(_RideHistoryReportIssueState) _then;

  /// Create a copy of RideHistoryReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? submitIssueState = null,
  }) {
    return _then(_RideHistoryReportIssueState(
      submitIssueState: null == submitIssueState
          ? _self.submitIssueState
          : submitIssueState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$SubmitIssue>,
    ));
  }

  /// Create a copy of RideHistoryReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$SubmitIssue, $Res> get submitIssueState {
    return $ApiResponseCopyWith<Mutation$SubmitIssue, $Res>(
        _self.submitIssueState, (value) {
      return _then(_self.copyWith(submitIssueState: value));
    });
  }
}

// dart format on
