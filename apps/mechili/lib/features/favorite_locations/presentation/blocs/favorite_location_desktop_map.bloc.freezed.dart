// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_location_desktop_map.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FavoriteLocationsDesktopMapState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteLocationsDesktopMapState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteLocationsDesktopMapState()';
  }
}

/// @nodoc
class $FavoriteLocationsDesktopMapStateCopyWith<$Res> {
  $FavoriteLocationsDesktopMapStateCopyWith(FavoriteLocationsDesktopMapState _,
      $Res Function(FavoriteLocationsDesktopMapState) __);
}

/// @nodoc

class FavoriteLocationsDesktopMapState$Initial
    extends FavoriteLocationsDesktopMapState {
  const FavoriteLocationsDesktopMapState$Initial() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteLocationsDesktopMapState$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'FavoriteLocationsDesktopMapState.initial()';
  }
}

/// @nodoc

class FavoriteLocationsDesktopMapState$ShowList
    extends FavoriteLocationsDesktopMapState {
  const FavoriteLocationsDesktopMapState$ShowList(
      {required final List<Fragment$FavoriteLocation> locations})
      : _locations = locations,
        super._();

  final List<Fragment$FavoriteLocation> _locations;
  List<Fragment$FavoriteLocation> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  /// Create a copy of FavoriteLocationsDesktopMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteLocationsDesktopMapState$ShowListCopyWith<
          FavoriteLocationsDesktopMapState$ShowList>
      get copyWith => _$FavoriteLocationsDesktopMapState$ShowListCopyWithImpl<
          FavoriteLocationsDesktopMapState$ShowList>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteLocationsDesktopMapState$ShowList &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_locations));

  @override
  String toString() {
    return 'FavoriteLocationsDesktopMapState.list(locations: $locations)';
  }
}

/// @nodoc
abstract mixin class $FavoriteLocationsDesktopMapState$ShowListCopyWith<$Res>
    implements $FavoriteLocationsDesktopMapStateCopyWith<$Res> {
  factory $FavoriteLocationsDesktopMapState$ShowListCopyWith(
          FavoriteLocationsDesktopMapState$ShowList value,
          $Res Function(FavoriteLocationsDesktopMapState$ShowList) _then) =
      _$FavoriteLocationsDesktopMapState$ShowListCopyWithImpl;
  @useResult
  $Res call({List<Fragment$FavoriteLocation> locations});
}

/// @nodoc
class _$FavoriteLocationsDesktopMapState$ShowListCopyWithImpl<$Res>
    implements $FavoriteLocationsDesktopMapState$ShowListCopyWith<$Res> {
  _$FavoriteLocationsDesktopMapState$ShowListCopyWithImpl(
      this._self, this._then);

  final FavoriteLocationsDesktopMapState$ShowList _self;
  final $Res Function(FavoriteLocationsDesktopMapState$ShowList) _then;

  /// Create a copy of FavoriteLocationsDesktopMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? locations = null,
  }) {
    return _then(FavoriteLocationsDesktopMapState$ShowList(
      locations: null == locations
          ? _self._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Fragment$FavoriteLocation>,
    ));
  }
}

/// @nodoc

class FavoriteLocationsDesktopMapState$ViewOne
    extends FavoriteLocationsDesktopMapState {
  const FavoriteLocationsDesktopMapState$ViewOne(
      {required this.name, required this.location})
      : super._();

  final String name;
  final Place location;

  /// Create a copy of FavoriteLocationsDesktopMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteLocationsDesktopMapState$ViewOneCopyWith<
          FavoriteLocationsDesktopMapState$ViewOne>
      get copyWith => _$FavoriteLocationsDesktopMapState$ViewOneCopyWithImpl<
          FavoriteLocationsDesktopMapState$ViewOne>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteLocationsDesktopMapState$ViewOne &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, location);

  @override
  String toString() {
    return 'FavoriteLocationsDesktopMapState.viewOne(name: $name, location: $location)';
  }
}

/// @nodoc
abstract mixin class $FavoriteLocationsDesktopMapState$ViewOneCopyWith<$Res>
    implements $FavoriteLocationsDesktopMapStateCopyWith<$Res> {
  factory $FavoriteLocationsDesktopMapState$ViewOneCopyWith(
          FavoriteLocationsDesktopMapState$ViewOne value,
          $Res Function(FavoriteLocationsDesktopMapState$ViewOne) _then) =
      _$FavoriteLocationsDesktopMapState$ViewOneCopyWithImpl;
  @useResult
  $Res call({String name, Place location});
}

/// @nodoc
class _$FavoriteLocationsDesktopMapState$ViewOneCopyWithImpl<$Res>
    implements $FavoriteLocationsDesktopMapState$ViewOneCopyWith<$Res> {
  _$FavoriteLocationsDesktopMapState$ViewOneCopyWithImpl(
      this._self, this._then);

  final FavoriteLocationsDesktopMapState$ViewOne _self;
  final $Res Function(FavoriteLocationsDesktopMapState$ViewOne) _then;

  /// Create a copy of FavoriteLocationsDesktopMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? location = null,
  }) {
    return _then(FavoriteLocationsDesktopMapState$ViewOne(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _self.location
          : location // ignore: cast_nullable_to_non_nullable
              as Place,
    ));
  }
}

/// @nodoc

class FavoriteLocationsDesktopMapState$Locate
    extends FavoriteLocationsDesktopMapState {
  const FavoriteLocationsDesktopMapState$Locate({required this.centerLocation})
      : super._();

  final Place? centerLocation;

  /// Create a copy of FavoriteLocationsDesktopMapState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FavoriteLocationsDesktopMapState$LocateCopyWith<
          FavoriteLocationsDesktopMapState$Locate>
      get copyWith => _$FavoriteLocationsDesktopMapState$LocateCopyWithImpl<
          FavoriteLocationsDesktopMapState$Locate>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FavoriteLocationsDesktopMapState$Locate &&
            (identical(other.centerLocation, centerLocation) ||
                other.centerLocation == centerLocation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, centerLocation);

  @override
  String toString() {
    return 'FavoriteLocationsDesktopMapState.locate(centerLocation: $centerLocation)';
  }
}

/// @nodoc
abstract mixin class $FavoriteLocationsDesktopMapState$LocateCopyWith<$Res>
    implements $FavoriteLocationsDesktopMapStateCopyWith<$Res> {
  factory $FavoriteLocationsDesktopMapState$LocateCopyWith(
          FavoriteLocationsDesktopMapState$Locate value,
          $Res Function(FavoriteLocationsDesktopMapState$Locate) _then) =
      _$FavoriteLocationsDesktopMapState$LocateCopyWithImpl;
  @useResult
  $Res call({Place? centerLocation});
}

/// @nodoc
class _$FavoriteLocationsDesktopMapState$LocateCopyWithImpl<$Res>
    implements $FavoriteLocationsDesktopMapState$LocateCopyWith<$Res> {
  _$FavoriteLocationsDesktopMapState$LocateCopyWithImpl(this._self, this._then);

  final FavoriteLocationsDesktopMapState$Locate _self;
  final $Res Function(FavoriteLocationsDesktopMapState$Locate) _then;

  /// Create a copy of FavoriteLocationsDesktopMapState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? centerLocation = freezed,
  }) {
    return _then(FavoriteLocationsDesktopMapState$Locate(
      centerLocation: freezed == centerLocation
          ? _self.centerLocation
          : centerLocation // ignore: cast_nullable_to_non_nullable
              as Place?,
    ));
  }
}

// dart format on
