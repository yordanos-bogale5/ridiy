// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'LocationEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent()';
  }
}

/// @nodoc
class $LocationEventCopyWith<$Res> {
  $LocationEventCopyWith(LocationEvent _, $Res Function(LocationEvent) __);
}

/// @nodoc

class LocationEvent$FetchCurrentLocation
    with DiagnosticableTreeMixin
    implements LocationEvent {
  const LocationEvent$FetchCurrentLocation();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.fetchCurrentLocation'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationEvent$FetchCurrentLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.fetchCurrentLocation()';
  }
}

/// @nodoc

class LocationEvent$StartGettingLocationUpdates
    with DiagnosticableTreeMixin
    implements LocationEvent {
  const LocationEvent$StartGettingLocationUpdates();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'LocationEvent.startGettingLocationUpdates'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationEvent$StartGettingLocationUpdates);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.startGettingLocationUpdates()';
  }
}

/// @nodoc

class LocationEvent$StopGettingLocationUpdates
    with DiagnosticableTreeMixin
    implements LocationEvent {
  const LocationEvent$StopGettingLocationUpdates();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'LocationEvent.stopGettingLocationUpdates'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationEvent$StopGettingLocationUpdates);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.stopGettingLocationUpdates()';
  }
}

/// @nodoc

class LocationEvent$UpdateDriverLocation
    with DiagnosticableTreeMixin
    implements LocationEvent {
  const LocationEvent$UpdateDriverLocation({required this.location});

  final DriverLocation location;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationEvent$UpdateDriverLocationCopyWith<
          LocationEvent$UpdateDriverLocation>
      get copyWith => _$LocationEvent$UpdateDriverLocationCopyWithImpl<
          LocationEvent$UpdateDriverLocation>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LocationEvent.uploadDriverLocation'))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationEvent$UpdateDriverLocation &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationEvent.uploadDriverLocation(location: $location)';
  }
}

/// @nodoc
abstract mixin class $LocationEvent$UpdateDriverLocationCopyWith<$Res>
    implements $LocationEventCopyWith<$Res> {
  factory $LocationEvent$UpdateDriverLocationCopyWith(
          LocationEvent$UpdateDriverLocation value,
          $Res Function(LocationEvent$UpdateDriverLocation) _then) =
      _$LocationEvent$UpdateDriverLocationCopyWithImpl;
  @useResult
  $Res call({DriverLocation location});
}

/// @nodoc
class _$LocationEvent$UpdateDriverLocationCopyWithImpl<$Res>
    implements $LocationEvent$UpdateDriverLocationCopyWith<$Res> {
  _$LocationEvent$UpdateDriverLocationCopyWithImpl(this._self, this._then);

  final LocationEvent$UpdateDriverLocation _self;
  final $Res Function(LocationEvent$UpdateDriverLocation) _then;

  /// Create a copy of LocationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
  }) {
    return _then(LocationEvent$UpdateDriverLocation(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as DriverLocation,
    ));
  }
}

LocationState _$LocationStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return LocationState$Loading.fromJson(json);
    case 'error':
      return LocationState$Error.fromJson(json);
    case 'determined':
      return LocationState$Determined.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LocationState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LocationState implements DiagnosticableTreeMixin {
  /// Serializes this LocationState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'LocationState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState()';
  }
}

/// @nodoc
class $LocationStateCopyWith<$Res> {
  $LocationStateCopyWith(LocationState _, $Res Function(LocationState) __);
}

/// @nodoc
@JsonSerializable()
class LocationState$Loading extends LocationState with DiagnosticableTreeMixin {
  const LocationState$Loading({final String? $type})
      : $type = $type ?? 'loading',
        super._();
  factory LocationState$Loading.fromJson(Map<String, dynamic> json) =>
      _$LocationState$LoadingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LocationState$LoadingToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'LocationState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LocationState$Loading);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.loading()';
  }
}

/// @nodoc
@JsonSerializable()
class LocationState$Error extends LocationState with DiagnosticableTreeMixin {
  const LocationState$Error({required this.error, final String? $type})
      : $type = $type ?? 'error',
        super._();
  factory LocationState$Error.fromJson(Map<String, dynamic> json) =>
      _$LocationState$ErrorFromJson(json);

  final LocationError error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationState$ErrorCopyWith<LocationState$Error> get copyWith =>
      _$LocationState$ErrorCopyWithImpl<LocationState$Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationState$ErrorToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LocationState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationState$Error &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $LocationState$ErrorCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory $LocationState$ErrorCopyWith(
          LocationState$Error value, $Res Function(LocationState$Error) _then) =
      _$LocationState$ErrorCopyWithImpl;
  @useResult
  $Res call({LocationError error});
}

/// @nodoc
class _$LocationState$ErrorCopyWithImpl<$Res>
    implements $LocationState$ErrorCopyWith<$Res> {
  _$LocationState$ErrorCopyWithImpl(this._self, this._then);

  final LocationState$Error _self;
  final $Res Function(LocationState$Error) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = null,
  }) {
    return _then(LocationState$Error(
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as LocationError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class LocationState$Determined extends LocationState
    with DiagnosticableTreeMixin {
  const LocationState$Determined({required this.location, final String? $type})
      : $type = $type ?? 'determined',
        super._();
  factory LocationState$Determined.fromJson(Map<String, dynamic> json) =>
      _$LocationState$DeterminedFromJson(json);

  final Fragment$Point location;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LocationState$DeterminedCopyWith<LocationState$Determined> get copyWith =>
      _$LocationState$DeterminedCopyWithImpl<LocationState$Determined>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LocationState$DeterminedToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'LocationState.determined'))
      ..add(DiagnosticsProperty('location', location));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LocationState$Determined &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, location);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LocationState.determined(location: $location)';
  }
}

/// @nodoc
abstract mixin class $LocationState$DeterminedCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory $LocationState$DeterminedCopyWith(LocationState$Determined value,
          $Res Function(LocationState$Determined) _then) =
      _$LocationState$DeterminedCopyWithImpl;
  @useResult
  $Res call({Fragment$Point location});
}

/// @nodoc
class _$LocationState$DeterminedCopyWithImpl<$Res>
    implements $LocationState$DeterminedCopyWith<$Res> {
  _$LocationState$DeterminedCopyWithImpl(this._self, this._then);

  final LocationState$Determined _self;
  final $Res Function(LocationState$Determined) _then;

  /// Create a copy of LocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? location = null,
  }) {
    return _then(LocationState$Determined(
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Fragment$Point,
    ));
  }
}

// dart format on
