// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_favorite_location.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EditFavoriteLocationState {
  Enum$RiderAddressType? get addressType;
  String? get addressName;
  (CountryCode, String?) get addressPhone;
  Place? get selectedLocation;
  ApiResponse<Mutation$UpdateFavoriteLocation> get updateFavoriteLocationState;
  ApiResponse<Mutation$DeleteFavoriteLocation> get deleteFavoriteLocationState;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EditFavoriteLocationStateCopyWith<EditFavoriteLocationState> get copyWith =>
      _$EditFavoriteLocationStateCopyWithImpl<EditFavoriteLocationState>(
          this as EditFavoriteLocationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EditFavoriteLocationState &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.addressPhone, addressPhone) ||
                other.addressPhone == addressPhone) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.updateFavoriteLocationState,
                    updateFavoriteLocationState) ||
                other.updateFavoriteLocationState ==
                    updateFavoriteLocationState) &&
            (identical(other.deleteFavoriteLocationState,
                    deleteFavoriteLocationState) ||
                other.deleteFavoriteLocationState ==
                    deleteFavoriteLocationState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressType,
      addressName,
      addressPhone,
      selectedLocation,
      updateFavoriteLocationState,
      deleteFavoriteLocationState);

  @override
  String toString() {
    return 'EditFavoriteLocationState(addressType: $addressType, addressName: $addressName, addressPhone: $addressPhone, selectedLocation: $selectedLocation, updateFavoriteLocationState: $updateFavoriteLocationState, deleteFavoriteLocationState: $deleteFavoriteLocationState)';
  }
}

/// @nodoc
abstract mixin class $EditFavoriteLocationStateCopyWith<$Res> {
  factory $EditFavoriteLocationStateCopyWith(EditFavoriteLocationState value,
          $Res Function(EditFavoriteLocationState) _then) =
      _$EditFavoriteLocationStateCopyWithImpl;
  @useResult
  $Res call(
      {Enum$RiderAddressType? addressType,
      String? addressName,
      (CountryCode, String?) addressPhone,
      Place? selectedLocation,
      ApiResponse<Mutation$UpdateFavoriteLocation> updateFavoriteLocationState,
      ApiResponse<Mutation$DeleteFavoriteLocation>
          deleteFavoriteLocationState});

  $ApiResponseCopyWith<Mutation$UpdateFavoriteLocation, $Res>
      get updateFavoriteLocationState;
  $ApiResponseCopyWith<Mutation$DeleteFavoriteLocation, $Res>
      get deleteFavoriteLocationState;
}

/// @nodoc
class _$EditFavoriteLocationStateCopyWithImpl<$Res>
    implements $EditFavoriteLocationStateCopyWith<$Res> {
  _$EditFavoriteLocationStateCopyWithImpl(this._self, this._then);

  final EditFavoriteLocationState _self;
  final $Res Function(EditFavoriteLocationState) _then;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressName = freezed,
    Object? addressPhone = null,
    Object? selectedLocation = freezed,
    Object? updateFavoriteLocationState = null,
    Object? deleteFavoriteLocationState = null,
  }) {
    return _then(_self.copyWith(
      addressType: freezed == addressType
          ? _self.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as Enum$RiderAddressType?,
      addressName: freezed == addressName
          ? _self.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      addressPhone: null == addressPhone
          ? _self.addressPhone
          : addressPhone // ignore: cast_nullable_to_non_nullable
              as (CountryCode, String?),
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Place?,
      updateFavoriteLocationState: null == updateFavoriteLocationState
          ? _self.updateFavoriteLocationState
          : updateFavoriteLocationState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$UpdateFavoriteLocation>,
      deleteFavoriteLocationState: null == deleteFavoriteLocationState
          ? _self.deleteFavoriteLocationState
          : deleteFavoriteLocationState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$DeleteFavoriteLocation>,
    ));
  }

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$UpdateFavoriteLocation, $Res>
      get updateFavoriteLocationState {
    return $ApiResponseCopyWith<Mutation$UpdateFavoriteLocation, $Res>(
        _self.updateFavoriteLocationState, (value) {
      return _then(_self.copyWith(updateFavoriteLocationState: value));
    });
  }

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$DeleteFavoriteLocation, $Res>
      get deleteFavoriteLocationState {
    return $ApiResponseCopyWith<Mutation$DeleteFavoriteLocation, $Res>(
        _self.deleteFavoriteLocationState, (value) {
      return _then(_self.copyWith(deleteFavoriteLocationState: value));
    });
  }
}

/// @nodoc

class _EditFavoriteLocationState implements EditFavoriteLocationState {
  const _EditFavoriteLocationState(
      {required this.addressType,
      required this.addressName,
      required this.addressPhone,
      required this.selectedLocation,
      this.updateFavoriteLocationState = const ApiResponseInitial(),
      this.deleteFavoriteLocationState = const ApiResponseInitial()});

  @override
  final Enum$RiderAddressType? addressType;
  @override
  final String? addressName;
  @override
  final (CountryCode, String?) addressPhone;
  @override
  final Place? selectedLocation;
  @override
  @JsonKey()
  final ApiResponse<Mutation$UpdateFavoriteLocation>
      updateFavoriteLocationState;
  @override
  @JsonKey()
  final ApiResponse<Mutation$DeleteFavoriteLocation>
      deleteFavoriteLocationState;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EditFavoriteLocationStateCopyWith<_EditFavoriteLocationState>
      get copyWith =>
          __$EditFavoriteLocationStateCopyWithImpl<_EditFavoriteLocationState>(
              this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditFavoriteLocationState &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.addressPhone, addressPhone) ||
                other.addressPhone == addressPhone) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.updateFavoriteLocationState,
                    updateFavoriteLocationState) ||
                other.updateFavoriteLocationState ==
                    updateFavoriteLocationState) &&
            (identical(other.deleteFavoriteLocationState,
                    deleteFavoriteLocationState) ||
                other.deleteFavoriteLocationState ==
                    deleteFavoriteLocationState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressType,
      addressName,
      addressPhone,
      selectedLocation,
      updateFavoriteLocationState,
      deleteFavoriteLocationState);

  @override
  String toString() {
    return 'EditFavoriteLocationState(addressType: $addressType, addressName: $addressName, addressPhone: $addressPhone, selectedLocation: $selectedLocation, updateFavoriteLocationState: $updateFavoriteLocationState, deleteFavoriteLocationState: $deleteFavoriteLocationState)';
  }
}

/// @nodoc
abstract mixin class _$EditFavoriteLocationStateCopyWith<$Res>
    implements $EditFavoriteLocationStateCopyWith<$Res> {
  factory _$EditFavoriteLocationStateCopyWith(_EditFavoriteLocationState value,
          $Res Function(_EditFavoriteLocationState) _then) =
      __$EditFavoriteLocationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Enum$RiderAddressType? addressType,
      String? addressName,
      (CountryCode, String?) addressPhone,
      Place? selectedLocation,
      ApiResponse<Mutation$UpdateFavoriteLocation> updateFavoriteLocationState,
      ApiResponse<Mutation$DeleteFavoriteLocation>
          deleteFavoriteLocationState});

  @override
  $ApiResponseCopyWith<Mutation$UpdateFavoriteLocation, $Res>
      get updateFavoriteLocationState;
  @override
  $ApiResponseCopyWith<Mutation$DeleteFavoriteLocation, $Res>
      get deleteFavoriteLocationState;
}

/// @nodoc
class __$EditFavoriteLocationStateCopyWithImpl<$Res>
    implements _$EditFavoriteLocationStateCopyWith<$Res> {
  __$EditFavoriteLocationStateCopyWithImpl(this._self, this._then);

  final _EditFavoriteLocationState _self;
  final $Res Function(_EditFavoriteLocationState) _then;

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addressType = freezed,
    Object? addressName = freezed,
    Object? addressPhone = null,
    Object? selectedLocation = freezed,
    Object? updateFavoriteLocationState = null,
    Object? deleteFavoriteLocationState = null,
  }) {
    return _then(_EditFavoriteLocationState(
      addressType: freezed == addressType
          ? _self.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as Enum$RiderAddressType?,
      addressName: freezed == addressName
          ? _self.addressName
          : addressName // ignore: cast_nullable_to_non_nullable
              as String?,
      addressPhone: null == addressPhone
          ? _self.addressPhone
          : addressPhone // ignore: cast_nullable_to_non_nullable
              as (CountryCode, String?),
      selectedLocation: freezed == selectedLocation
          ? _self.selectedLocation
          : selectedLocation // ignore: cast_nullable_to_non_nullable
              as Place?,
      updateFavoriteLocationState: null == updateFavoriteLocationState
          ? _self.updateFavoriteLocationState
          : updateFavoriteLocationState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$UpdateFavoriteLocation>,
      deleteFavoriteLocationState: null == deleteFavoriteLocationState
          ? _self.deleteFavoriteLocationState
          : deleteFavoriteLocationState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$DeleteFavoriteLocation>,
    ));
  }

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$UpdateFavoriteLocation, $Res>
      get updateFavoriteLocationState {
    return $ApiResponseCopyWith<Mutation$UpdateFavoriteLocation, $Res>(
        _self.updateFavoriteLocationState, (value) {
      return _then(_self.copyWith(updateFavoriteLocationState: value));
    });
  }

  /// Create a copy of EditFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$DeleteFavoriteLocation, $Res>
      get deleteFavoriteLocationState {
    return $ApiResponseCopyWith<Mutation$DeleteFavoriteLocation, $Res>(
        _self.deleteFavoriteLocationState, (value) {
      return _then(_self.copyWith(deleteFavoriteLocationState: value));
    });
  }
}

// dart format on
