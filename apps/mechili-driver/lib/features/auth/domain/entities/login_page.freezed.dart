// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LoginPage _$LoginPageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'enterNumber':
      return LoginPage$EnterNumberPage.fromJson(json);
    case 'enterOtp':
      return LoginPage$EnterOtpPage.fromJson(json);
    case 'enterPassword':
      return LoginPage$EnterPassword.fromJson(json);
    case 'setPassword':
      return LoginPage$SetPassword.fromJson(json);
    case 'contactDetails':
      return LoginPage$ContactDetails.fromJson(json);
    case 'vehicleDetails':
      return LoginPage$VehicleDetails.fromJson(json);
    case 'payoutInformation':
      return LoginPage$PayoutInformation.fromJson(json);
    case 'documents':
      return LoginPage$Documents.fromJson(json);
    case 'accessDenied':
      return LoginPage$AccessDenied.fromJson(json);
    case 'success':
      return LoginPage$Success.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'LoginPage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$LoginPage {
  /// Serializes this LoginPage to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage()';
  }
}

/// @nodoc
class $LoginPageCopyWith<$Res> {
  $LoginPageCopyWith(LoginPage _, $Res Function(LoginPage) __);
}

/// @nodoc
@JsonSerializable()
class LoginPage$EnterNumberPage extends LoginPage {
  const LoginPage$EnterNumberPage({final String? $type})
      : $type = $type ?? 'enterNumber',
        super._();
  factory LoginPage$EnterNumberPage.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$EnterNumberPageFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$EnterNumberPageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$EnterNumberPage);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.enterNumber()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$EnterOtpPage extends LoginPage {
  const LoginPage$EnterOtpPage({this.otp, final String? $type})
      : $type = $type ?? 'enterOtp',
        super._();
  factory LoginPage$EnterOtpPage.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$EnterOtpPageFromJson(json);

  final String? otp;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$EnterOtpPageCopyWith<LoginPage$EnterOtpPage> get copyWith =>
      _$LoginPage$EnterOtpPageCopyWithImpl<LoginPage$EnterOtpPage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$EnterOtpPageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$EnterOtpPage &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @override
  String toString() {
    return 'LoginPage.enterOtp(otp: $otp)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$EnterOtpPageCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$EnterOtpPageCopyWith(LoginPage$EnterOtpPage value,
          $Res Function(LoginPage$EnterOtpPage) _then) =
      _$LoginPage$EnterOtpPageCopyWithImpl;
  @useResult
  $Res call({String? otp});
}

/// @nodoc
class _$LoginPage$EnterOtpPageCopyWithImpl<$Res>
    implements $LoginPage$EnterOtpPageCopyWith<$Res> {
  _$LoginPage$EnterOtpPageCopyWithImpl(this._self, this._then);

  final LoginPage$EnterOtpPage _self;
  final $Res Function(LoginPage$EnterOtpPage) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otp = freezed,
  }) {
    return _then(LoginPage$EnterOtpPage(
      otp: freezed == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$EnterPassword extends LoginPage {
  const LoginPage$EnterPassword({final String? $type})
      : $type = $type ?? 'enterPassword',
        super._();
  factory LoginPage$EnterPassword.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$EnterPasswordFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$EnterPasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage$EnterPassword);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.enterPassword()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$SetPassword extends LoginPage {
  const LoginPage$SetPassword({final String? $type})
      : $type = $type ?? 'setPassword',
        super._();
  factory LoginPage$SetPassword.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$SetPasswordFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$SetPasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage$SetPassword);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.setPassword()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$ContactDetails extends LoginPage {
  const LoginPage$ContactDetails({final String? $type})
      : $type = $type ?? 'contactDetails',
        super._();
  factory LoginPage$ContactDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$ContactDetailsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$ContactDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage$ContactDetails);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.contactDetails()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$VehicleDetails extends LoginPage {
  const LoginPage$VehicleDetails({final String? $type})
      : $type = $type ?? 'vehicleDetails',
        super._();
  factory LoginPage$VehicleDetails.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$VehicleDetailsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$VehicleDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage$VehicleDetails);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.vehicleDetails()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$PayoutInformation extends LoginPage {
  const LoginPage$PayoutInformation({final String? $type})
      : $type = $type ?? 'payoutInformation',
        super._();
  factory LoginPage$PayoutInformation.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$PayoutInformationFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$PayoutInformationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$PayoutInformation);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.payoutInformation()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$Documents extends LoginPage {
  const LoginPage$Documents({final String? $type})
      : $type = $type ?? 'documents',
        super._();
  factory LoginPage$Documents.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$DocumentsFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$DocumentsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage$Documents);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.documents()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$AccessDenied extends LoginPage {
  const LoginPage$AccessDenied({final String? $type})
      : $type = $type ?? 'accessDenied',
        super._();
  factory LoginPage$AccessDenied.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$AccessDeniedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$AccessDeniedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginPage$AccessDenied);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginPage.accessDenied()';
  }
}

/// @nodoc
@JsonSerializable()
class LoginPage$Success extends LoginPage {
  const LoginPage$Success({required this.profile, final String? $type})
      : $type = $type ?? 'success',
        super._();
  factory LoginPage$Success.fromJson(Map<String, dynamic> json) =>
      _$LoginPage$SuccessFromJson(json);

  final Fragment$ProfileFull profile;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$SuccessCopyWith<LoginPage$Success> get copyWith =>
      _$LoginPage$SuccessCopyWithImpl<LoginPage$Success>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LoginPage$SuccessToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$Success &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @override
  String toString() {
    return 'LoginPage.success(profile: $profile)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$SuccessCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$SuccessCopyWith(
          LoginPage$Success value, $Res Function(LoginPage$Success) _then) =
      _$LoginPage$SuccessCopyWithImpl;
  @useResult
  $Res call({Fragment$ProfileFull profile});
}

/// @nodoc
class _$LoginPage$SuccessCopyWithImpl<$Res>
    implements $LoginPage$SuccessCopyWith<$Res> {
  _$LoginPage$SuccessCopyWithImpl(this._self, this._then);

  final LoginPage$Success _self;
  final $Res Function(LoginPage$Success) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? profile = null,
  }) {
    return _then(LoginPage$Success(
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Fragment$ProfileFull,
    ));
  }
}

// dart format on
