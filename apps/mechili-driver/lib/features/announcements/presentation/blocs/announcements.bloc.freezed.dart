// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'announcements.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AnnouncementsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AnnouncementsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AnnouncementsEvent()';
  }
}

/// @nodoc
class $AnnouncementsEventCopyWith<$Res> {
  $AnnouncementsEventCopyWith(
      AnnouncementsEvent _, $Res Function(AnnouncementsEvent) __);
}

/// @nodoc

class _OnStarted implements AnnouncementsEvent {
  const _OnStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AnnouncementsEvent.onStarted()';
  }
}

/// @nodoc
mixin _$AnnouncementsState {
  ApiResponse<Query$Announcements> get announcementsState;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnnouncementsStateCopyWith<AnnouncementsState> get copyWith =>
      _$AnnouncementsStateCopyWithImpl<AnnouncementsState>(
          this as AnnouncementsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnnouncementsState &&
            (identical(other.announcementsState, announcementsState) ||
                other.announcementsState == announcementsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, announcementsState);

  @override
  String toString() {
    return 'AnnouncementsState(announcementsState: $announcementsState)';
  }
}

/// @nodoc
abstract mixin class $AnnouncementsStateCopyWith<$Res> {
  factory $AnnouncementsStateCopyWith(
          AnnouncementsState value, $Res Function(AnnouncementsState) _then) =
      _$AnnouncementsStateCopyWithImpl;
  @useResult
  $Res call({ApiResponse<Query$Announcements> announcementsState});

  $ApiResponseCopyWith<Query$Announcements, $Res> get announcementsState;
}

/// @nodoc
class _$AnnouncementsStateCopyWithImpl<$Res>
    implements $AnnouncementsStateCopyWith<$Res> {
  _$AnnouncementsStateCopyWithImpl(this._self, this._then);

  final AnnouncementsState _self;
  final $Res Function(AnnouncementsState) _then;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? announcementsState = null,
  }) {
    return _then(_self.copyWith(
      announcementsState: null == announcementsState
          ? _self.announcementsState
          : announcementsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$Announcements>,
    ));
  }

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$Announcements, $Res> get announcementsState {
    return $ApiResponseCopyWith<Query$Announcements, $Res>(
        _self.announcementsState, (value) {
      return _then(_self.copyWith(announcementsState: value));
    });
  }
}

/// @nodoc

class _AnnouncementsState implements AnnouncementsState {
  const _AnnouncementsState(
      {this.announcementsState = const ApiResponseInitial()});

  @override
  @JsonKey()
  final ApiResponse<Query$Announcements> announcementsState;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnnouncementsStateCopyWith<_AnnouncementsState> get copyWith =>
      __$AnnouncementsStateCopyWithImpl<_AnnouncementsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnnouncementsState &&
            (identical(other.announcementsState, announcementsState) ||
                other.announcementsState == announcementsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, announcementsState);

  @override
  String toString() {
    return 'AnnouncementsState(announcementsState: $announcementsState)';
  }
}

/// @nodoc
abstract mixin class _$AnnouncementsStateCopyWith<$Res>
    implements $AnnouncementsStateCopyWith<$Res> {
  factory _$AnnouncementsStateCopyWith(
          _AnnouncementsState value, $Res Function(_AnnouncementsState) _then) =
      __$AnnouncementsStateCopyWithImpl;
  @override
  @useResult
  $Res call({ApiResponse<Query$Announcements> announcementsState});

  @override
  $ApiResponseCopyWith<Query$Announcements, $Res> get announcementsState;
}

/// @nodoc
class __$AnnouncementsStateCopyWithImpl<$Res>
    implements _$AnnouncementsStateCopyWith<$Res> {
  __$AnnouncementsStateCopyWithImpl(this._self, this._then);

  final _AnnouncementsState _self;
  final $Res Function(_AnnouncementsState) _then;

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? announcementsState = null,
  }) {
    return _then(_AnnouncementsState(
      announcementsState: null == announcementsState
          ? _self.announcementsState
          : announcementsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$Announcements>,
    ));
  }

  /// Create a copy of AnnouncementsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$Announcements, $Res> get announcementsState {
    return $ApiResponseCopyWith<Query$Announcements, $Res>(
        _self.announcementsState, (value) {
      return _then(_self.copyWith(announcementsState: value));
    });
  }
}

// dart format on
