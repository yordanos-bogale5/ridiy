// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_favorite_location.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddFavoriteLocationState {
  Enum$RiderAddressType? get addressType;
  String? get addressName;
  (CountryCode, String?) get addressPhone;
  Place? get selectedLocation;
  ApiResponse<Mutation$CreateFavoriteLocation> get createFavoriteLocationState;

  /// Create a copy of AddFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AddFavoriteLocationStateCopyWith<AddFavoriteLocationState> get copyWith =>
      _$AddFavoriteLocationStateCopyWithImpl<AddFavoriteLocationState>(
          this as AddFavoriteLocationState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddFavoriteLocationState &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.addressPhone, addressPhone) ||
                other.addressPhone == addressPhone) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.createFavoriteLocationState,
                    createFavoriteLocationState) ||
                other.createFavoriteLocationState ==
                    createFavoriteLocationState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressType, addressName,
      addressPhone, selectedLocation, createFavoriteLocationState);

  @override
  String toString() {
    return 'AddFavoriteLocationState(addressType: $addressType, addressName: $addressName, addressPhone: $addressPhone, selectedLocation: $selectedLocation, createFavoriteLocationState: $createFavoriteLocationState)';
  }
}

/// @nodoc
abstract mixin class $AddFavoriteLocationStateCopyWith<$Res> {
  factory $AddFavoriteLocationStateCopyWith(AddFavoriteLocationState value,
          $Res Function(AddFavoriteLocationState) _then) =
      _$AddFavoriteLocationStateCopyWithImpl;
  @useResult
  $Res call(
      {Enum$RiderAddressType? addressType,
      String? addressName,
      (CountryCode, String?) addressPhone,
      Place? selectedLocation,
      ApiResponse<Mutation$CreateFavoriteLocation>
          createFavoriteLocationState});

  $ApiResponseCopyWith<Mutation$CreateFavoriteLocation, $Res>
      get createFavoriteLocationState;
}

/// @nodoc
class _$AddFavoriteLocationStateCopyWithImpl<$Res>
    implements $AddFavoriteLocationStateCopyWith<$Res> {
  _$AddFavoriteLocationStateCopyWithImpl(this._self, this._then);

  final AddFavoriteLocationState _self;
  final $Res Function(AddFavoriteLocationState) _then;

  /// Create a copy of AddFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressName = freezed,
    Object? addressPhone = null,
    Object? selectedLocation = freezed,
    Object? createFavoriteLocationState = null,
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
      createFavoriteLocationState: null == createFavoriteLocationState
          ? _self.createFavoriteLocationState
          : createFavoriteLocationState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$CreateFavoriteLocation>,
    ));
  }

  /// Create a copy of AddFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$CreateFavoriteLocation, $Res>
      get createFavoriteLocationState {
    return $ApiResponseCopyWith<Mutation$CreateFavoriteLocation, $Res>(
        _self.createFavoriteLocationState, (value) {
      return _then(_self.copyWith(createFavoriteLocationState: value));
    });
  }
}

/// @nodoc

class _AddFavoriteLocationState implements AddFavoriteLocationState {
  const _AddFavoriteLocationState(
      {this.addressType,
      this.addressName,
      required this.addressPhone,
      this.selectedLocation,
      this.createFavoriteLocationState = const ApiResponseInitial()});

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
  final ApiResponse<Mutation$CreateFavoriteLocation>
      createFavoriteLocationState;

  /// Create a copy of AddFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AddFavoriteLocationStateCopyWith<_AddFavoriteLocationState> get copyWith =>
      __$AddFavoriteLocationStateCopyWithImpl<_AddFavoriteLocationState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddFavoriteLocationState &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressName, addressName) ||
                other.addressName == addressName) &&
            (identical(other.addressPhone, addressPhone) ||
                other.addressPhone == addressPhone) &&
            (identical(other.selectedLocation, selectedLocation) ||
                other.selectedLocation == selectedLocation) &&
            (identical(other.createFavoriteLocationState,
                    createFavoriteLocationState) ||
                other.createFavoriteLocationState ==
                    createFavoriteLocationState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressType, addressName,
      addressPhone, selectedLocation, createFavoriteLocationState);

  @override
  String toString() {
    return 'AddFavoriteLocationState(addressType: $addressType, addressName: $addressName, addressPhone: $addressPhone, selectedLocation: $selectedLocation, createFavoriteLocationState: $createFavoriteLocationState)';
  }
}

/// @nodoc
abstract mixin class _$AddFavoriteLocationStateCopyWith<$Res>
    implements $AddFavoriteLocationStateCopyWith<$Res> {
  factory _$AddFavoriteLocationStateCopyWith(_AddFavoriteLocationState value,
          $Res Function(_AddFavoriteLocationState) _then) =
      __$AddFavoriteLocationStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Enum$RiderAddressType? addressType,
      String? addressName,
      (CountryCode, String?) addressPhone,
      Place? selectedLocation,
      ApiResponse<Mutation$CreateFavoriteLocation>
          createFavoriteLocationState});

  @override
  $ApiResponseCopyWith<Mutation$CreateFavoriteLocation, $Res>
      get createFavoriteLocationState;
}

/// @nodoc
class __$AddFavoriteLocationStateCopyWithImpl<$Res>
    implements _$AddFavoriteLocationStateCopyWith<$Res> {
  __$AddFavoriteLocationStateCopyWithImpl(this._self, this._then);

  final _AddFavoriteLocationState _self;
  final $Res Function(_AddFavoriteLocationState) _then;

  /// Create a copy of AddFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? addressType = freezed,
    Object? addressName = freezed,
    Object? addressPhone = null,
    Object? selectedLocation = freezed,
    Object? createFavoriteLocationState = null,
  }) {
    return _then(_AddFavoriteLocationState(
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
      createFavoriteLocationState: null == createFavoriteLocationState
          ? _self.createFavoriteLocationState
          : createFavoriteLocationState // ignore: cast_nullable_to_non_nullable
              as ApiResponse<Mutation$CreateFavoriteLocation>,
    ));
  }

  /// Create a copy of AddFavoriteLocationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ApiResponseCopyWith<Mutation$CreateFavoriteLocation, $Res>
      get createFavoriteLocationState {
    return $ApiResponseCopyWith<Mutation$CreateFavoriteLocation, $Res>(
        _self.createFavoriteLocationState, (value) {
      return _then(_self.copyWith(createFavoriteLocationState: value));
    });
  }
}

// dart format on
