// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileState {
  ApiResponse<Query$ProfileAggregations> get profileAggregationsState;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      _$ProfileStateCopyWithImpl<ProfileState>(
          this as ProfileState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileState &&
            (identical(
                    other.profileAggregationsState, profileAggregationsState) ||
                other.profileAggregationsState == profileAggregationsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileAggregationsState);

  @override
  String toString() {
    return 'ProfileState(profileAggregationsState: $profileAggregationsState)';
  }
}

/// @nodoc
abstract mixin class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) _then) =
      _$ProfileStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$ProfileAggregations> profileAggregationsState});

  $ApiResponseCopyWith<Query$ProfileAggregations, $Res>
      get profileAggregationsState;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._self, this._then);

  final ProfileState _self;
  final $Res Function(ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileAggregationsState = null,
  }) {
    return _then(_self.copyWith(
      profileAggregationsState: null == profileAggregationsState
          ? _self.profileAggregationsState
          : profileAggregationsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$ProfileAggregations>,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$ProfileAggregations, $Res>
      get profileAggregationsState {
    return $ApiResponseCopyWith<Query$ProfileAggregations, $Res>(
        _self.profileAggregationsState, (value) {
      return _then(_self.copyWith(profileAggregationsState: value));
    });
  }
}

/// @nodoc

class _ProfileState implements ProfileState {
  const _ProfileState(
      {this.profileAggregationsState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$ProfileAggregations> profileAggregationsState;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            (identical(
                    other.profileAggregationsState, profileAggregationsState) ||
                other.profileAggregationsState == profileAggregationsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profileAggregationsState);

  @override
  String toString() {
    return 'ProfileState(profileAggregationsState: $profileAggregationsState)';
  }
}

/// @nodoc
abstract mixin class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) _then) =
      __$ProfileStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$ProfileAggregations> profileAggregationsState});

  @override
  $ApiResponseCopyWith<Query$ProfileAggregations, $Res>
      get profileAggregationsState;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(this._self, this._then);

  final _ProfileState _self;
  final $Res Function(_ProfileState) _then;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profileAggregationsState = null,
  }) {
    return _then(_ProfileState(
      profileAggregationsState: null == profileAggregationsState
          ? _self.profileAggregationsState
          : profileAggregationsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$ProfileAggregations>,
    ));
  }

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$ProfileAggregations, $Res>
      get profileAggregationsState {
    return $ApiResponseCopyWith<Query$ProfileAggregations, $Res>(
        _self.profileAggregationsState, (value) {
      return _then(_self.copyWith(profileAggregationsState: value));
    });
  }
}

// dart format on
