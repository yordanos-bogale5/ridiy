// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'feedbacks_summary.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FeedbacksSummaryState {
  ApiResponse<Query$FeedbacksSummary> get feedbacksSummaryState;

  /// Create a copy of FeedbacksSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FeedbacksSummaryStateCopyWith<FeedbacksSummaryState> get copyWith =>
      _$FeedbacksSummaryStateCopyWithImpl<FeedbacksSummaryState>(
          this as FeedbacksSummaryState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FeedbacksSummaryState &&
            (identical(other.feedbacksSummaryState, feedbacksSummaryState) ||
                other.feedbacksSummaryState == feedbacksSummaryState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedbacksSummaryState);

  @override
  String toString() {
    return 'FeedbacksSummaryState(feedbacksSummaryState: $feedbacksSummaryState)';
  }
}

/// @nodoc
abstract mixin class $FeedbacksSummaryStateCopyWith<$Res> {
  factory $FeedbacksSummaryStateCopyWith(FeedbacksSummaryState value,
          $Res Function(FeedbacksSummaryState) _then) =
      _$FeedbacksSummaryStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$FeedbacksSummary> feedbacksSummaryState});

  $ApiResponseCopyWith<Query$FeedbacksSummary, $Res> get feedbacksSummaryState;
}

/// @nodoc
class _$FeedbacksSummaryStateCopyWithImpl<$Res>
    implements $FeedbacksSummaryStateCopyWith<$Res> {
  _$FeedbacksSummaryStateCopyWithImpl(this._self, this._then);

  final FeedbacksSummaryState _self;
  final $Res Function(FeedbacksSummaryState) _then;

  /// Create a copy of FeedbacksSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? feedbacksSummaryState = null,
  }) {
    return _then(_self.copyWith(
      feedbacksSummaryState: null == feedbacksSummaryState
          ? _self.feedbacksSummaryState
          : feedbacksSummaryState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$FeedbacksSummary>,
    ));
  }

  /// Create a copy of FeedbacksSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$FeedbacksSummary, $Res> get feedbacksSummaryState {
    return $ApiResponseCopyWith<Query$FeedbacksSummary, $Res>(
        _self.feedbacksSummaryState, (value) {
      return _then(_self.copyWith(feedbacksSummaryState: value));
    });
  }
}

/// @nodoc

class _FeedbacksSummaryState implements FeedbacksSummaryState {
  const _FeedbacksSummaryState(
      {this.feedbacksSummaryState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$FeedbacksSummary> feedbacksSummaryState;

  /// Create a copy of FeedbacksSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FeedbacksSummaryStateCopyWith<_FeedbacksSummaryState> get copyWith =>
      __$FeedbacksSummaryStateCopyWithImpl<_FeedbacksSummaryState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FeedbacksSummaryState &&
            (identical(other.feedbacksSummaryState, feedbacksSummaryState) ||
                other.feedbacksSummaryState == feedbacksSummaryState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, feedbacksSummaryState);

  @override
  String toString() {
    return 'FeedbacksSummaryState(feedbacksSummaryState: $feedbacksSummaryState)';
  }
}

/// @nodoc
abstract mixin class _$FeedbacksSummaryStateCopyWith<$Res>
    implements $FeedbacksSummaryStateCopyWith<$Res> {
  factory _$FeedbacksSummaryStateCopyWith(_FeedbacksSummaryState value,
          $Res Function(_FeedbacksSummaryState) _then) =
      __$FeedbacksSummaryStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$FeedbacksSummary> feedbacksSummaryState});

  @override
  $ApiResponseCopyWith<Query$FeedbacksSummary, $Res> get feedbacksSummaryState;
}

/// @nodoc
class __$FeedbacksSummaryStateCopyWithImpl<$Res>
    implements _$FeedbacksSummaryStateCopyWith<$Res> {
  __$FeedbacksSummaryStateCopyWithImpl(this._self, this._then);

  final _FeedbacksSummaryState _self;
  final $Res Function(_FeedbacksSummaryState) _then;

  /// Create a copy of FeedbacksSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? feedbacksSummaryState = null,
  }) {
    return _then(_FeedbacksSummaryState(
      feedbacksSummaryState: null == feedbacksSummaryState
          ? _self.feedbacksSummaryState
          : feedbacksSummaryState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$FeedbacksSummary>,
    ));
  }

  /// Create a copy of FeedbacksSummaryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$FeedbacksSummary, $Res> get feedbacksSummaryState {
    return $ApiResponseCopyWith<Query$FeedbacksSummary, $Res>(
        _self.feedbacksSummaryState, (value) {
      return _then(_self.copyWith(feedbacksSummaryState: value));
    });
  }
}

// dart format on
