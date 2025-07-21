// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_issue.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReportIssueState {
  ApiResponse<Mutation$SubmitIssue> get submitIssueState;

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReportIssueStateCopyWith<ReportIssueState> get copyWith =>
      _$ReportIssueStateCopyWithImpl<ReportIssueState>(
          this as ReportIssueState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReportIssueState &&
            (identical(other.submitIssueState, submitIssueState) ||
                other.submitIssueState == submitIssueState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitIssueState);

  @override
  String toString() {
    return 'ReportIssueState(submitIssueState: $submitIssueState)';
  }
}

/// @nodoc
abstract mixin class $ReportIssueStateCopyWith<$Res> {
  factory $ReportIssueStateCopyWith(
          ReportIssueState value, $Res Function(ReportIssueState) _then) =
      _$ReportIssueStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Mutation$SubmitIssue> submitIssueState});

  $ApiResponseCopyWith<Mutation$SubmitIssue, $Res> get submitIssueState;
}

/// @nodoc
class _$ReportIssueStateCopyWithImpl<$Res>
    implements $ReportIssueStateCopyWith<$Res> {
  _$ReportIssueStateCopyWithImpl(this._self, this._then);

  final ReportIssueState _self;
  final $Res Function(ReportIssueState) _then;

  /// Create a copy of ReportIssueState
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

  /// Create a copy of ReportIssueState
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

class _ReportIssueState implements ReportIssueState {
  const _ReportIssueState({this.submitIssueState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Mutation$SubmitIssue> submitIssueState;

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReportIssueStateCopyWith<_ReportIssueState> get copyWith =>
      __$ReportIssueStateCopyWithImpl<_ReportIssueState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportIssueState &&
            (identical(other.submitIssueState, submitIssueState) ||
                other.submitIssueState == submitIssueState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, submitIssueState);

  @override
  String toString() {
    return 'ReportIssueState(submitIssueState: $submitIssueState)';
  }
}

/// @nodoc
abstract mixin class _$ReportIssueStateCopyWith<$Res>
    implements $ReportIssueStateCopyWith<$Res> {
  factory _$ReportIssueStateCopyWith(
          _ReportIssueState value, $Res Function(_ReportIssueState) _then) =
      __$ReportIssueStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Mutation$SubmitIssue> submitIssueState});

  @override
  $ApiResponseCopyWith<Mutation$SubmitIssue, $Res> get submitIssueState;
}

/// @nodoc
class __$ReportIssueStateCopyWithImpl<$Res>
    implements _$ReportIssueStateCopyWith<$Res> {
  __$ReportIssueStateCopyWithImpl(this._self, this._then);

  final _ReportIssueState _self;
  final $Res Function(_ReportIssueState) _then;

  /// Create a copy of ReportIssueState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? submitIssueState = null,
  }) {
    return _then(_ReportIssueState(
      submitIssueState: null == submitIssueState
          ? _self.submitIssueState
          : submitIssueState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$SubmitIssue>,
    ));
  }

  /// Create a copy of ReportIssueState
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
