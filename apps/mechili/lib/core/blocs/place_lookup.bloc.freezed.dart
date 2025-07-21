// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_lookup.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceLookupEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlaceLookupEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupEvent()';
  }
}

/// @nodoc
class $PlaceLookupEventCopyWith<$Res> {
  $PlaceLookupEventCopyWith(
      PlaceLookupEvent _, $Res Function(PlaceLookupEvent) __);
}

/// @nodoc

class PlaceLookupEvent$OnStarted implements PlaceLookupEvent {
  const PlaceLookupEvent$OnStarted();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceLookupEvent$OnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupEvent.onStarted()';
  }
}

/// @nodoc

class PlaceLookupEvent$OnQueryChanged implements PlaceLookupEvent {
  const PlaceLookupEvent$OnQueryChanged(
      {required this.query,
      required this.latLng,
      required this.radius,
      required this.language,
      required this.mapProvider});

  final String? query;
  final LatLng? latLng;
  final int radius;
  final String language;
  final MapProviderEnum mapProvider;

  /// Create a copy of PlaceLookupEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceLookupEvent$OnQueryChangedCopyWith<PlaceLookupEvent$OnQueryChanged>
      get copyWith => _$PlaceLookupEvent$OnQueryChangedCopyWithImpl<
          PlaceLookupEvent$OnQueryChanged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceLookupEvent$OnQueryChanged &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.latLng, latLng) || other.latLng == latLng) &&
            (identical(other.radius, radius) || other.radius == radius) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.mapProvider, mapProvider) ||
                other.mapProvider == mapProvider));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, query, latLng, radius, language, mapProvider);

  @override
  String toString() {
    return 'PlaceLookupEvent.onQueryChanged(query: $query, latLng: $latLng, radius: $radius, language: $language, mapProvider: $mapProvider)';
  }
}

/// @nodoc
abstract mixin class $PlaceLookupEvent$OnQueryChangedCopyWith<$Res>
    implements $PlaceLookupEventCopyWith<$Res> {
  factory $PlaceLookupEvent$OnQueryChangedCopyWith(
          PlaceLookupEvent$OnQueryChanged value,
          $Res Function(PlaceLookupEvent$OnQueryChanged) _then) =
      _$PlaceLookupEvent$OnQueryChangedCopyWithImpl;
  @useResult
  $Res call(
      {String? query,
      LatLng? latLng,
      int radius,
      String language,
      MapProviderEnum mapProvider});
}

/// @nodoc
class _$PlaceLookupEvent$OnQueryChangedCopyWithImpl<$Res>
    implements $PlaceLookupEvent$OnQueryChangedCopyWith<$Res> {
  _$PlaceLookupEvent$OnQueryChangedCopyWithImpl(this._self, this._then);

  final PlaceLookupEvent$OnQueryChanged _self;
  final $Res Function(PlaceLookupEvent$OnQueryChanged) _then;

  /// Create a copy of PlaceLookupEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = freezed,
    Object? latLng = freezed,
    Object? radius = null,
    Object? language = null,
    Object? mapProvider = null,
  }) {
    return _then(PlaceLookupEvent$OnQueryChanged(
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      latLng: freezed == latLng
          ? _self.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng?,
      radius: null == radius
          ? _self.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as int,
      language: null == language
          ? _self.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      mapProvider: null == mapProvider
          ? _self.mapProvider
          : mapProvider // ignore: cast_nullable_to_non_nullable
              as MapProviderEnum,
    ));
  }
}

/// @nodoc
mixin _$PlaceLookupState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlaceLookupState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupState()';
  }
}

/// @nodoc
class $PlaceLookupStateCopyWith<$Res> {
  $PlaceLookupStateCopyWith(
      PlaceLookupState _, $Res Function(PlaceLookupState) __);
}

/// @nodoc

class PlaceLookupState$Initial implements PlaceLookupState {
  const PlaceLookupState$Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlaceLookupState$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupState.initial()';
  }
}

/// @nodoc

class PlaceLookupState$Loading implements PlaceLookupState {
  const PlaceLookupState$Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PlaceLookupState$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupState.loading()';
  }
}

/// @nodoc

class PlaceLookupState$NoResults implements PlaceLookupState {
  const PlaceLookupState$NoResults();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceLookupState$NoResults);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupState.noResults()';
  }
}

/// @nodoc

class PlaceLookupState$MoreCharacters implements PlaceLookupState {
  const PlaceLookupState$MoreCharacters();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceLookupState$MoreCharacters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PlaceLookupState.moreCharacters()';
  }
}

/// @nodoc

class PlaceLookupState$Loaded implements PlaceLookupState {
  const PlaceLookupState$Loaded({required final List<Place> places})
      : _places = places;

  final List<Place> _places;
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceLookupState$LoadedCopyWith<PlaceLookupState$Loaded> get copyWith =>
      _$PlaceLookupState$LoadedCopyWithImpl<PlaceLookupState$Loaded>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceLookupState$Loaded &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @override
  String toString() {
    return 'PlaceLookupState.loaded(places: $places)';
  }
}

/// @nodoc
abstract mixin class $PlaceLookupState$LoadedCopyWith<$Res>
    implements $PlaceLookupStateCopyWith<$Res> {
  factory $PlaceLookupState$LoadedCopyWith(PlaceLookupState$Loaded value,
          $Res Function(PlaceLookupState$Loaded) _then) =
      _$PlaceLookupState$LoadedCopyWithImpl;
  @useResult
  $Res call({List<Place> places});
}

/// @nodoc
class _$PlaceLookupState$LoadedCopyWithImpl<$Res>
    implements $PlaceLookupState$LoadedCopyWith<$Res> {
  _$PlaceLookupState$LoadedCopyWithImpl(this._self, this._then);

  final PlaceLookupState$Loaded _self;
  final $Res Function(PlaceLookupState$Loaded) _then;

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? places = null,
  }) {
    return _then(PlaceLookupState$Loaded(
      places: null == places
          ? _self._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class PlaceLookupState$Error implements PlaceLookupState {
  const PlaceLookupState$Error(this.message);

  final String message;

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceLookupState$ErrorCopyWith<PlaceLookupState$Error> get copyWith =>
      _$PlaceLookupState$ErrorCopyWithImpl<PlaceLookupState$Error>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceLookupState$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PlaceLookupState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PlaceLookupState$ErrorCopyWith<$Res>
    implements $PlaceLookupStateCopyWith<$Res> {
  factory $PlaceLookupState$ErrorCopyWith(PlaceLookupState$Error value,
          $Res Function(PlaceLookupState$Error) _then) =
      _$PlaceLookupState$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PlaceLookupState$ErrorCopyWithImpl<$Res>
    implements $PlaceLookupState$ErrorCopyWith<$Res> {
  _$PlaceLookupState$ErrorCopyWithImpl(this._self, this._then);

  final PlaceLookupState$Error _self;
  final $Res Function(PlaceLookupState$Error) _then;

  /// Create a copy of PlaceLookupState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PlaceLookupState$Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
