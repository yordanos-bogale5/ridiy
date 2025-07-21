// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'destination_suggestions.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DestinationSuggestionsState {
  ApiResponse<Query$DestinationSuggesions> get destinationSuggesionsState;

  /// Create a copy of DestinationSuggestionsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DestinationSuggestionsStateCopyWith<DestinationSuggestionsState>
      get copyWith => _$DestinationSuggestionsStateCopyWithImpl<
              DestinationSuggestionsState>(
          this as DestinationSuggestionsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DestinationSuggestionsState &&
            (identical(other.destinationSuggesionsState,
                    destinationSuggesionsState) ||
                other.destinationSuggesionsState ==
                    destinationSuggesionsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinationSuggesionsState);

  @override
  String toString() {
    return 'DestinationSuggestionsState(destinationSuggesionsState: $destinationSuggesionsState)';
  }
}

/// @nodoc
abstract mixin class $DestinationSuggestionsStateCopyWith<$Res> {
  factory $DestinationSuggestionsStateCopyWith(
          DestinationSuggestionsState value,
          $Res Function(DestinationSuggestionsState) _then) =
      _$DestinationSuggestionsStateCopyWithImpl;
  @useResult
  $Res call(
      {ApiResponse<Query$DestinationSuggesions> destinationSuggesionsState});

  $ApiResponseCopyWith<Query$DestinationSuggesions, $Res>
      get destinationSuggesionsState;
}

/// @nodoc
class _$DestinationSuggestionsStateCopyWithImpl<$Res>
    implements $DestinationSuggestionsStateCopyWith<$Res> {
  _$DestinationSuggestionsStateCopyWithImpl(this._self, this._then);

  final DestinationSuggestionsState _self;
  final $Res Function(DestinationSuggestionsState) _then;

  /// Create a copy of DestinationSuggestionsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destinationSuggesionsState = null,
  }) {
    return _then(_self.copyWith(
      destinationSuggesionsState: null == destinationSuggesionsState
          ? _self.destinationSuggesionsState
          : destinationSuggesionsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$DestinationSuggesions>,
    ));
  }

  /// Create a copy of DestinationSuggestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$DestinationSuggesions, $Res>
      get destinationSuggesionsState {
    return $ApiResponseCopyWith<Query$DestinationSuggesions, $Res>(
        _self.destinationSuggesionsState, (value) {
      return _then(_self.copyWith(destinationSuggesionsState: value));
    });
  }
}

/// @nodoc

class _DestinationSuggestionsState extends DestinationSuggestionsState {
  const _DestinationSuggestionsState(
      {this.destinationSuggesionsState = const ApiResponseInitial()})
      : super._();

  @override
  @JsonKey()
  final ApiResponse<Query$DestinationSuggesions> destinationSuggesionsState;

  /// Create a copy of DestinationSuggestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DestinationSuggestionsStateCopyWith<_DestinationSuggestionsState>
      get copyWith => __$DestinationSuggestionsStateCopyWithImpl<
          _DestinationSuggestionsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DestinationSuggestionsState &&
            (identical(other.destinationSuggesionsState,
                    destinationSuggesionsState) ||
                other.destinationSuggesionsState ==
                    destinationSuggesionsState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destinationSuggesionsState);

  @override
  String toString() {
    return 'DestinationSuggestionsState(destinationSuggesionsState: $destinationSuggesionsState)';
  }
}

/// @nodoc
abstract mixin class _$DestinationSuggestionsStateCopyWith<$Res>
    implements $DestinationSuggestionsStateCopyWith<$Res> {
  factory _$DestinationSuggestionsStateCopyWith(
          _DestinationSuggestionsState value,
          $Res Function(_DestinationSuggestionsState) _then) =
      __$DestinationSuggestionsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ApiResponse<Query$DestinationSuggesions> destinationSuggesionsState});

  @override
  $ApiResponseCopyWith<Query$DestinationSuggesions, $Res>
      get destinationSuggesionsState;
}

/// @nodoc
class __$DestinationSuggestionsStateCopyWithImpl<$Res>
    implements _$DestinationSuggestionsStateCopyWith<$Res> {
  __$DestinationSuggestionsStateCopyWithImpl(this._self, this._then);

  final _DestinationSuggestionsState _self;
  final $Res Function(_DestinationSuggestionsState) _then;

  /// Create a copy of DestinationSuggestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? destinationSuggesionsState = null,
  }) {
    return _then(_DestinationSuggestionsState(
      destinationSuggesionsState: null == destinationSuggesionsState
          ? _self.destinationSuggesionsState
          : destinationSuggesionsState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Query$DestinationSuggesions>,
    ));
  }

  /// Create a copy of DestinationSuggestionsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Query$DestinationSuggesions, $Res>
      get destinationSuggesionsState {
    return $ApiResponseCopyWith<Query$DestinationSuggesions, $Res>(
        _self.destinationSuggesionsState, (value) {
      return _then(_self.copyWith(destinationSuggesionsState: value));
    });
  }
}

// dart format on
