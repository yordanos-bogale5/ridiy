// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login.bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {
  bool get isLoading;
  String? get errorMessage;
  LoginPage get loginPage;
  CountryCode? get countryCode;
  String? get verificationHash;
  DateTime? get lastOtpSentAt;
  String? get jwtToken;
  String? get currentPassword;
  String? get newPassword;
  String? get mobileNumber;
  List<Fragment$VehicleModel> get vehicleModels;
  List<Fragment$VehicleColor> get vehicleColors;
  Fragment$ProfileFull? get profileFullEntity;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  /// Serializes this LoginState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loginPage, loginPage) ||
                other.loginPage == loginPage) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.verificationHash, verificationHash) ||
                other.verificationHash == verificationHash) &&
            (identical(other.lastOtpSentAt, lastOtpSentAt) ||
                other.lastOtpSentAt == lastOtpSentAt) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other.vehicleModels, vehicleModels) &&
            const DeepCollectionEquality()
                .equals(other.vehicleColors, vehicleColors) &&
            (identical(other.profileFullEntity, profileFullEntity) ||
                other.profileFullEntity == profileFullEntity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      loginPage,
      countryCode,
      verificationHash,
      lastOtpSentAt,
      jwtToken,
      currentPassword,
      newPassword,
      mobileNumber,
      const DeepCollectionEquality().hash(vehicleModels),
      const DeepCollectionEquality().hash(vehicleColors),
      profileFullEntity);

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, errorMessage: $errorMessage, loginPage: $loginPage, countryCode: $countryCode, verificationHash: $verificationHash, lastOtpSentAt: $lastOtpSentAt, jwtToken: $jwtToken, currentPassword: $currentPassword, newPassword: $newPassword, mobileNumber: $mobileNumber, vehicleModels: $vehicleModels, vehicleColors: $vehicleColors, profileFullEntity: $profileFullEntity)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      LoginPage loginPage,
      CountryCode? countryCode,
      String? verificationHash,
      DateTime? lastOtpSentAt,
      String? jwtToken,
      String? currentPassword,
      String? newPassword,
      String? mobileNumber,
      List<Fragment$VehicleModel> vehicleModels,
      List<Fragment$VehicleColor> vehicleColors,
      Fragment$ProfileFull? profileFullEntity});

  $LoginPageCopyWith<$Res> get loginPage;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? loginPage = null,
    Object? countryCode = freezed,
    Object? verificationHash = freezed,
    Object? lastOtpSentAt = freezed,
    Object? jwtToken = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? mobileNumber = freezed,
    Object? vehicleModels = null,
    Object? vehicleColors = null,
    Object? profileFullEntity = freezed,
  }) {
    return _then(_self.copyWith(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPage: null == loginPage
          ? _self.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      verificationHash: freezed == verificationHash
          ? _self.verificationHash
          : verificationHash // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOtpSentAt: freezed == lastOtpSentAt
          ? _self.lastOtpSentAt
          : lastOtpSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jwtToken: freezed == jwtToken
          ? _self.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _self.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _self.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModels: null == vehicleModels
          ? _self.vehicleModels
          : vehicleModels // ignore: cast_nullable_to_non_nullable
              as List<Fragment$VehicleModel>,
      vehicleColors: null == vehicleColors
          ? _self.vehicleColors
          : vehicleColors // ignore: cast_nullable_to_non_nullable
              as List<Fragment$VehicleColor>,
      profileFullEntity: freezed == profileFullEntity
          ? _self.profileFullEntity
          : profileFullEntity // ignore: cast_nullable_to_non_nullable
              as Fragment$ProfileFull?,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginPageCopyWith<$Res> get loginPage {
    return $LoginPageCopyWith<$Res>(_self.loginPage, (value) {
      return _then(_self.copyWith(loginPage: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LoginState extends LoginState {
  const _LoginState(
      {this.isLoading = false,
      this.errorMessage,
      this.loginPage = const LoginPage.enterNumber(),
      this.countryCode,
      this.verificationHash,
      this.lastOtpSentAt,
      this.jwtToken,
      this.currentPassword,
      this.newPassword,
      this.mobileNumber,
      final List<Fragment$VehicleModel> vehicleModels = const [],
      final List<Fragment$VehicleColor> vehicleColors = const [],
      this.profileFullEntity})
      : _vehicleModels = vehicleModels,
        _vehicleColors = vehicleColors,
        super._();
  factory _LoginState.fromJson(Map<String, dynamic> json) =>
      _$LoginStateFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  @JsonKey()
  final LoginPage loginPage;
  @override
  final CountryCode? countryCode;
  @override
  final String? verificationHash;
  @override
  final DateTime? lastOtpSentAt;
  @override
  final String? jwtToken;
  @override
  final String? currentPassword;
  @override
  final String? newPassword;
  @override
  final String? mobileNumber;
  final List<Fragment$VehicleModel> _vehicleModels;
  @override
  @JsonKey()
  List<Fragment$VehicleModel> get vehicleModels {
    if (_vehicleModels is EqualUnmodifiableListView) return _vehicleModels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleModels);
  }

  final List<Fragment$VehicleColor> _vehicleColors;
  @override
  @JsonKey()
  List<Fragment$VehicleColor> get vehicleColors {
    if (_vehicleColors is EqualUnmodifiableListView) return _vehicleColors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_vehicleColors);
  }

  @override
  final Fragment$ProfileFull? profileFullEntity;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.loginPage, loginPage) ||
                other.loginPage == loginPage) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.verificationHash, verificationHash) ||
                other.verificationHash == verificationHash) &&
            (identical(other.lastOtpSentAt, lastOtpSentAt) ||
                other.lastOtpSentAt == lastOtpSentAt) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.currentPassword, currentPassword) ||
                other.currentPassword == currentPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            const DeepCollectionEquality()
                .equals(other._vehicleModels, _vehicleModels) &&
            const DeepCollectionEquality()
                .equals(other._vehicleColors, _vehicleColors) &&
            (identical(other.profileFullEntity, profileFullEntity) ||
                other.profileFullEntity == profileFullEntity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      errorMessage,
      loginPage,
      countryCode,
      verificationHash,
      lastOtpSentAt,
      jwtToken,
      currentPassword,
      newPassword,
      mobileNumber,
      const DeepCollectionEquality().hash(_vehicleModels),
      const DeepCollectionEquality().hash(_vehicleColors),
      profileFullEntity);

  @override
  String toString() {
    return 'LoginState(isLoading: $isLoading, errorMessage: $errorMessage, loginPage: $loginPage, countryCode: $countryCode, verificationHash: $verificationHash, lastOtpSentAt: $lastOtpSentAt, jwtToken: $jwtToken, currentPassword: $currentPassword, newPassword: $newPassword, mobileNumber: $mobileNumber, vehicleModels: $vehicleModels, vehicleColors: $vehicleColors, profileFullEntity: $profileFullEntity)';
  }
}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) _then) =
      __$LoginStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      LoginPage loginPage,
      CountryCode? countryCode,
      String? verificationHash,
      DateTime? lastOtpSentAt,
      String? jwtToken,
      String? currentPassword,
      String? newPassword,
      String? mobileNumber,
      List<Fragment$VehicleModel> vehicleModels,
      List<Fragment$VehicleColor> vehicleColors,
      Fragment$ProfileFull? profileFullEntity});

  @override
  $LoginPageCopyWith<$Res> get loginPage;
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? loginPage = null,
    Object? countryCode = freezed,
    Object? verificationHash = freezed,
    Object? lastOtpSentAt = freezed,
    Object? jwtToken = freezed,
    Object? currentPassword = freezed,
    Object? newPassword = freezed,
    Object? mobileNumber = freezed,
    Object? vehicleModels = null,
    Object? vehicleColors = null,
    Object? profileFullEntity = freezed,
  }) {
    return _then(_LoginState(
      isLoading: null == isLoading
          ? _self.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      loginPage: null == loginPage
          ? _self.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      countryCode: freezed == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as CountryCode?,
      verificationHash: freezed == verificationHash
          ? _self.verificationHash
          : verificationHash // ignore: cast_nullable_to_non_nullable
              as String?,
      lastOtpSentAt: freezed == lastOtpSentAt
          ? _self.lastOtpSentAt
          : lastOtpSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      jwtToken: freezed == jwtToken
          ? _self.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      currentPassword: freezed == currentPassword
          ? _self.currentPassword
          : currentPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      newPassword: freezed == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _self.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleModels: null == vehicleModels
          ? _self._vehicleModels
          : vehicleModels // ignore: cast_nullable_to_non_nullable
              as List<Fragment$VehicleModel>,
      vehicleColors: null == vehicleColors
          ? _self._vehicleColors
          : vehicleColors // ignore: cast_nullable_to_non_nullable
              as List<Fragment$VehicleColor>,
      profileFullEntity: freezed == profileFullEntity
          ? _self.profileFullEntity
          : profileFullEntity // ignore: cast_nullable_to_non_nullable
              as Fragment$ProfileFull?,
    ));
  }

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginPageCopyWith<$Res> get loginPage {
    return $LoginPageCopyWith<$Res>(_self.loginPage, (value) {
      return _then(_self.copyWith(loginPage: value));
    });
  }
}

// dart format on
