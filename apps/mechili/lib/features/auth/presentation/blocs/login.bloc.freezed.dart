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
mixin _$LoginEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent()';
  }
}

/// @nodoc
class $LoginEventCopyWith<$Res> {
  $LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}

/// @nodoc

class LoginEvent$OnNumberVerificationRequested implements LoginEvent {
  const LoginEvent$OnNumberVerificationRequested(
      {required this.mobileNumber, required this.countryCode});

  final String mobileNumber;
  final String countryCode;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEvent$OnNumberVerificationRequestedCopyWith<
          LoginEvent$OnNumberVerificationRequested>
      get copyWith => _$LoginEvent$OnNumberVerificationRequestedCopyWithImpl<
          LoginEvent$OnNumberVerificationRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnNumberVerificationRequested &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mobileNumber, countryCode);

  @override
  String toString() {
    return 'LoginEvent.onNumberVerificationRequested(mobileNumber: $mobileNumber, countryCode: $countryCode)';
  }
}

/// @nodoc
abstract mixin class $LoginEvent$OnNumberVerificationRequestedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginEvent$OnNumberVerificationRequestedCopyWith(
          LoginEvent$OnNumberVerificationRequested value,
          $Res Function(LoginEvent$OnNumberVerificationRequested) _then) =
      _$LoginEvent$OnNumberVerificationRequestedCopyWithImpl;
  @useResult
  $Res call({String mobileNumber, String countryCode});
}

/// @nodoc
class _$LoginEvent$OnNumberVerificationRequestedCopyWithImpl<$Res>
    implements $LoginEvent$OnNumberVerificationRequestedCopyWith<$Res> {
  _$LoginEvent$OnNumberVerificationRequestedCopyWithImpl(
      this._self, this._then);

  final LoginEvent$OnNumberVerificationRequested _self;
  final $Res Function(LoginEvent$OnNumberVerificationRequested) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? mobileNumber = null,
    Object? countryCode = null,
  }) {
    return _then(LoginEvent$OnNumberVerificationRequested(
      mobileNumber: null == mobileNumber
          ? _self.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _self.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginEvent$OnSkipVerificationRequested implements LoginEvent {
  const LoginEvent$OnSkipVerificationRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnSkipVerificationRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.onVerificationSkipped()';
  }
}

/// @nodoc

class LoginEvent$OnBackButtonPressed implements LoginEvent {
  const LoginEvent$OnBackButtonPressed();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnBackButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.onBackButtonPressed()';
  }
}

/// @nodoc

class LoginEvent$OnOtpVerificationRequested implements LoginEvent {
  const LoginEvent$OnOtpVerificationRequested({required this.otp});

  final String otp;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEvent$OnOtpVerificationRequestedCopyWith<
          LoginEvent$OnOtpVerificationRequested>
      get copyWith => _$LoginEvent$OnOtpVerificationRequestedCopyWithImpl<
          LoginEvent$OnOtpVerificationRequested>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnOtpVerificationRequested &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @override
  String toString() {
    return 'LoginEvent.onOtpVerificationRequested(otp: $otp)';
  }
}

/// @nodoc
abstract mixin class $LoginEvent$OnOtpVerificationRequestedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginEvent$OnOtpVerificationRequestedCopyWith(
          LoginEvent$OnOtpVerificationRequested value,
          $Res Function(LoginEvent$OnOtpVerificationRequested) _then) =
      _$LoginEvent$OnOtpVerificationRequestedCopyWithImpl;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class _$LoginEvent$OnOtpVerificationRequestedCopyWithImpl<$Res>
    implements $LoginEvent$OnOtpVerificationRequestedCopyWith<$Res> {
  _$LoginEvent$OnOtpVerificationRequestedCopyWithImpl(this._self, this._then);

  final LoginEvent$OnOtpVerificationRequested _self;
  final $Res Function(LoginEvent$OnOtpVerificationRequested) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? otp = null,
  }) {
    return _then(LoginEvent$OnOtpVerificationRequested(
      otp: null == otp
          ? _self.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginEvent$OnCodeResendRequested implements LoginEvent {
  const LoginEvent$OnCodeResendRequested();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnCodeResendRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.onCodeResendRequested()';
  }
}

/// @nodoc

class LoginEvent$OnPasswordSubmitted implements LoginEvent {
  const LoginEvent$OnPasswordSubmitted({required this.password});

  final String password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEvent$OnPasswordSubmittedCopyWith<LoginEvent$OnPasswordSubmitted>
      get copyWith => _$LoginEvent$OnPasswordSubmittedCopyWithImpl<
          LoginEvent$OnPasswordSubmitted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnPasswordSubmitted &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'LoginEvent.onPasswordSubmitted(password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginEvent$OnPasswordSubmittedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginEvent$OnPasswordSubmittedCopyWith(
          LoginEvent$OnPasswordSubmitted value,
          $Res Function(LoginEvent$OnPasswordSubmitted) _then) =
      _$LoginEvent$OnPasswordSubmittedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$LoginEvent$OnPasswordSubmittedCopyWithImpl<$Res>
    implements $LoginEvent$OnPasswordSubmittedCopyWith<$Res> {
  _$LoginEvent$OnPasswordSubmittedCopyWithImpl(this._self, this._then);

  final LoginEvent$OnPasswordSubmitted _self;
  final $Res Function(LoginEvent$OnPasswordSubmitted) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(LoginEvent$OnPasswordSubmitted(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginEvent$OnNewPasswordSubmitted implements LoginEvent {
  const LoginEvent$OnNewPasswordSubmitted({required this.password});

  final String password;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEvent$OnNewPasswordSubmittedCopyWith<LoginEvent$OnNewPasswordSubmitted>
      get copyWith => _$LoginEvent$OnNewPasswordSubmittedCopyWithImpl<
          LoginEvent$OnNewPasswordSubmitted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnNewPasswordSubmitted &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString() {
    return 'LoginEvent.onNewPasswordSubmitted(password: $password)';
  }
}

/// @nodoc
abstract mixin class $LoginEvent$OnNewPasswordSubmittedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginEvent$OnNewPasswordSubmittedCopyWith(
          LoginEvent$OnNewPasswordSubmitted value,
          $Res Function(LoginEvent$OnNewPasswordSubmitted) _then) =
      _$LoginEvent$OnNewPasswordSubmittedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$LoginEvent$OnNewPasswordSubmittedCopyWithImpl<$Res>
    implements $LoginEvent$OnNewPasswordSubmittedCopyWith<$Res> {
  _$LoginEvent$OnNewPasswordSubmittedCopyWithImpl(this._self, this._then);

  final LoginEvent$OnNewPasswordSubmitted _self;
  final $Res Function(LoginEvent$OnNewPasswordSubmitted) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(LoginEvent$OnNewPasswordSubmitted(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class LoginEvent$OnProfileDataSubmitted implements LoginEvent {
  const LoginEvent$OnProfileDataSubmitted(
      {required this.firstName, required this.lastName, required this.gender});

  final String firstName;
  final String lastName;
  final Gender? gender;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginEvent$OnProfileDataSubmittedCopyWith<LoginEvent$OnProfileDataSubmitted>
      get copyWith => _$LoginEvent$OnProfileDataSubmittedCopyWithImpl<
          LoginEvent$OnProfileDataSubmitted>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginEvent$OnProfileDataSubmitted &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.gender, gender) || other.gender == gender));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, gender);

  @override
  String toString() {
    return 'LoginEvent.onProfileDataSubmitted(firstName: $firstName, lastName: $lastName, gender: $gender)';
  }
}

/// @nodoc
abstract mixin class $LoginEvent$OnProfileDataSubmittedCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory $LoginEvent$OnProfileDataSubmittedCopyWith(
          LoginEvent$OnProfileDataSubmitted value,
          $Res Function(LoginEvent$OnProfileDataSubmitted) _then) =
      _$LoginEvent$OnProfileDataSubmittedCopyWithImpl;
  @useResult
  $Res call({String firstName, String lastName, Gender? gender});
}

/// @nodoc
class _$LoginEvent$OnProfileDataSubmittedCopyWithImpl<$Res>
    implements $LoginEvent$OnProfileDataSubmittedCopyWith<$Res> {
  _$LoginEvent$OnProfileDataSubmittedCopyWithImpl(this._self, this._then);

  final LoginEvent$OnProfileDataSubmitted _self;
  final $Res Function(LoginEvent$OnProfileDataSubmitted) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? gender = freezed,
  }) {
    return _then(LoginEvent$OnProfileDataSubmitted(
      firstName: null == firstName
          ? _self.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _self.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
    ));
  }
}

/// @nodoc

class LoginEvent$Reset implements LoginEvent {
  const LoginEvent$Reset();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoginEvent$Reset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'LoginEvent.reset()';
  }
}

/// @nodoc
mixin _$LoginState {
  LoginPage get loginPage;
  String get mobileNumber;
  String? get hash;
  String? get jwtToken;
  Fragment$Profile? get profile;
  DateTime? get lastOtpSentAt;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginStateCopyWith<LoginState> get copyWith =>
      _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginState &&
            (identical(other.loginPage, loginPage) ||
                other.loginPage == loginPage) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.lastOtpSentAt, lastOtpSentAt) ||
                other.lastOtpSentAt == lastOtpSentAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginPage, mobileNumber, hash,
      jwtToken, profile, lastOtpSentAt);

  @override
  String toString() {
    return 'LoginState(loginPage: $loginPage, mobileNumber: $mobileNumber, hash: $hash, jwtToken: $jwtToken, profile: $profile, lastOtpSentAt: $lastOtpSentAt)';
  }
}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) _then) =
      _$LoginStateCopyWithImpl;
  @useResult
  $Res call(
      {LoginPage loginPage,
      String mobileNumber,
      String? hash,
      String? jwtToken,
      Fragment$Profile? profile,
      DateTime? lastOtpSentAt});

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
    Object? loginPage = null,
    Object? mobileNumber = null,
    Object? hash = freezed,
    Object? jwtToken = freezed,
    Object? profile = freezed,
    Object? lastOtpSentAt = freezed,
  }) {
    return _then(_self.copyWith(
      loginPage: null == loginPage
          ? _self.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      mobileNumber: null == mobileNumber
          ? _self.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _self.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Fragment$Profile?,
      lastOtpSentAt: freezed == lastOtpSentAt
          ? _self.lastOtpSentAt
          : lastOtpSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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

class _LoginState extends LoginState {
  const _LoginState(
      {this.loginPage = const LoginPage.enterNumber(),
      this.mobileNumber = "",
      this.hash,
      this.jwtToken,
      this.profile,
      this.lastOtpSentAt})
      : super._();

  @override
  @JsonKey()
  final LoginPage loginPage;
  @override
  @JsonKey()
  final String mobileNumber;
  @override
  final String? hash;
  @override
  final String? jwtToken;
  @override
  final Fragment$Profile? profile;
  @override
  final DateTime? lastOtpSentAt;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoginState &&
            (identical(other.loginPage, loginPage) ||
                other.loginPage == loginPage) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.hash, hash) || other.hash == hash) &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.lastOtpSentAt, lastOtpSentAt) ||
                other.lastOtpSentAt == lastOtpSentAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginPage, mobileNumber, hash,
      jwtToken, profile, lastOtpSentAt);

  @override
  String toString() {
    return 'LoginState(loginPage: $loginPage, mobileNumber: $mobileNumber, hash: $hash, jwtToken: $jwtToken, profile: $profile, lastOtpSentAt: $lastOtpSentAt)';
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
      {LoginPage loginPage,
      String mobileNumber,
      String? hash,
      String? jwtToken,
      Fragment$Profile? profile,
      DateTime? lastOtpSentAt});

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
    Object? loginPage = null,
    Object? mobileNumber = null,
    Object? hash = freezed,
    Object? jwtToken = freezed,
    Object? profile = freezed,
    Object? lastOtpSentAt = freezed,
  }) {
    return _then(_LoginState(
      loginPage: null == loginPage
          ? _self.loginPage
          : loginPage // ignore: cast_nullable_to_non_nullable
              as LoginPage,
      mobileNumber: null == mobileNumber
          ? _self.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
      hash: freezed == hash
          ? _self.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String?,
      jwtToken: freezed == jwtToken
          ? _self.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Fragment$Profile?,
      lastOtpSentAt: freezed == lastOtpSentAt
          ? _self.lastOtpSentAt
          : lastOtpSentAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
mixin _$LoginPage {
  PageState get state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPageCopyWith<LoginPage> get copyWith =>
      _$LoginPageCopyWithImpl<LoginPage>(this as LoginPage, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @override
  String toString() {
    return 'LoginPage(state: $state)';
  }
}

/// @nodoc
abstract mixin class $LoginPageCopyWith<$Res> {
  factory $LoginPageCopyWith(LoginPage value, $Res Function(LoginPage) _then) =
      _$LoginPageCopyWithImpl;
  @useResult
  $Res call({PageState state});

  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPageCopyWithImpl<$Res> implements $LoginPageCopyWith<$Res> {
  _$LoginPageCopyWithImpl(this._self, this._then);

  final LoginPage _self;
  final $Res Function(LoginPage) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_self.copyWith(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc

class LoginPage$EnterNumber implements LoginPage {
  const LoginPage$EnterNumber({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$EnterNumberCopyWith<LoginPage$EnterNumber> get copyWith =>
      _$LoginPage$EnterNumberCopyWithImpl<LoginPage$EnterNumber>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$EnterNumber &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @override
  String toString() {
    return 'LoginPage.enterNumber(state: $state)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$EnterNumberCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$EnterNumberCopyWith(LoginPage$EnterNumber value,
          $Res Function(LoginPage$EnterNumber) _then) =
      _$LoginPage$EnterNumberCopyWithImpl;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPage$EnterNumberCopyWithImpl<$Res>
    implements $LoginPage$EnterNumberCopyWith<$Res> {
  _$LoginPage$EnterNumberCopyWithImpl(this._self, this._then);

  final LoginPage$EnterNumber _self;
  final $Res Function(LoginPage$EnterNumber) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
  }) {
    return _then(LoginPage$EnterNumber(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc

class LoginPage$EnterOtp implements LoginPage {
  const LoginPage$EnterOtp({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$EnterOtpCopyWith<LoginPage$EnterOtp> get copyWith =>
      _$LoginPage$EnterOtpCopyWithImpl<LoginPage$EnterOtp>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$EnterOtp &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @override
  String toString() {
    return 'LoginPage.enterOtp(state: $state)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$EnterOtpCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$EnterOtpCopyWith(
          LoginPage$EnterOtp value, $Res Function(LoginPage$EnterOtp) _then) =
      _$LoginPage$EnterOtpCopyWithImpl;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPage$EnterOtpCopyWithImpl<$Res>
    implements $LoginPage$EnterOtpCopyWith<$Res> {
  _$LoginPage$EnterOtpCopyWithImpl(this._self, this._then);

  final LoginPage$EnterOtp _self;
  final $Res Function(LoginPage$EnterOtp) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
  }) {
    return _then(LoginPage$EnterOtp(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc

class LoginPage$EnterPassword implements LoginPage {
  const LoginPage$EnterPassword({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$EnterPasswordCopyWith<LoginPage$EnterPassword> get copyWith =>
      _$LoginPage$EnterPasswordCopyWithImpl<LoginPage$EnterPassword>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$EnterPassword &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @override
  String toString() {
    return 'LoginPage.enterPassword(state: $state)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$EnterPasswordCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$EnterPasswordCopyWith(LoginPage$EnterPassword value,
          $Res Function(LoginPage$EnterPassword) _then) =
      _$LoginPage$EnterPasswordCopyWithImpl;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPage$EnterPasswordCopyWithImpl<$Res>
    implements $LoginPage$EnterPasswordCopyWith<$Res> {
  _$LoginPage$EnterPasswordCopyWithImpl(this._self, this._then);

  final LoginPage$EnterPassword _self;
  final $Res Function(LoginPage$EnterPassword) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
  }) {
    return _then(LoginPage$EnterPassword(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc

class LoginPage$EnterName implements LoginPage {
  const LoginPage$EnterName({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$EnterNameCopyWith<LoginPage$EnterName> get copyWith =>
      _$LoginPage$EnterNameCopyWithImpl<LoginPage$EnterName>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$EnterName &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @override
  String toString() {
    return 'LoginPage.enterName(state: $state)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$EnterNameCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$EnterNameCopyWith(
          LoginPage$EnterName value, $Res Function(LoginPage$EnterName) _then) =
      _$LoginPage$EnterNameCopyWithImpl;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPage$EnterNameCopyWithImpl<$Res>
    implements $LoginPage$EnterNameCopyWith<$Res> {
  _$LoginPage$EnterNameCopyWithImpl(this._self, this._then);

  final LoginPage$EnterName _self;
  final $Res Function(LoginPage$EnterName) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
  }) {
    return _then(LoginPage$EnterName(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc

class LoginPage$SetPassword implements LoginPage {
  const LoginPage$SetPassword(
      {this.state = const PageState.idle(), this.newPassword = ""});

  @override
  @JsonKey()
  final PageState state;
  @JsonKey()
  final String newPassword;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$SetPasswordCopyWith<LoginPage$SetPassword> get copyWith =>
      _$LoginPage$SetPasswordCopyWithImpl<LoginPage$SetPassword>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$SetPassword &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, newPassword);

  @override
  String toString() {
    return 'LoginPage.setPassword(state: $state, newPassword: $newPassword)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$SetPasswordCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$SetPasswordCopyWith(LoginPage$SetPassword value,
          $Res Function(LoginPage$SetPassword) _then) =
      _$LoginPage$SetPasswordCopyWithImpl;
  @override
  @useResult
  $Res call({PageState state, String newPassword});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPage$SetPasswordCopyWithImpl<$Res>
    implements $LoginPage$SetPasswordCopyWith<$Res> {
  _$LoginPage$SetPasswordCopyWithImpl(this._self, this._then);

  final LoginPage$SetPassword _self;
  final $Res Function(LoginPage$SetPassword) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
    Object? newPassword = null,
  }) {
    return _then(LoginPage$SetPassword(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
      newPassword: null == newPassword
          ? _self.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc

class LoginPage$Success implements LoginPage {
  const LoginPage$Success({this.state = const PageState.idle()});

  @override
  @JsonKey()
  final PageState state;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoginPage$SuccessCopyWith<LoginPage$Success> get copyWith =>
      _$LoginPage$SuccessCopyWithImpl<LoginPage$Success>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoginPage$Success &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @override
  String toString() {
    return 'LoginPage.success(state: $state)';
  }
}

/// @nodoc
abstract mixin class $LoginPage$SuccessCopyWith<$Res>
    implements $LoginPageCopyWith<$Res> {
  factory $LoginPage$SuccessCopyWith(
          LoginPage$Success value, $Res Function(LoginPage$Success) _then) =
      _$LoginPage$SuccessCopyWithImpl;
  @override
  @useResult
  $Res call({PageState state});

  @override
  $PageStateCopyWith<$Res> get state;
}

/// @nodoc
class _$LoginPage$SuccessCopyWithImpl<$Res>
    implements $LoginPage$SuccessCopyWith<$Res> {
  _$LoginPage$SuccessCopyWithImpl(this._self, this._then);

  final LoginPage$Success _self;
  final $Res Function(LoginPage$Success) _then;

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? state = null,
  }) {
    return _then(LoginPage$Success(
      state: null == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as PageState,
    ));
  }

  /// Create a copy of LoginPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PageStateCopyWith<$Res> get state {
    return $PageStateCopyWith<$Res>(_self.state, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc
mixin _$PageState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PageState()';
  }
}

/// @nodoc
class $PageStateCopyWith<$Res> {
  $PageStateCopyWith(PageState _, $Res Function(PageState) __);
}

/// @nodoc

class PageState$Idle extends PageState {
  const PageState$Idle() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageState$Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PageState.idle()';
  }
}

/// @nodoc

class PageState$Loading extends PageState {
  const PageState$Loading() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PageState$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PageState.loading()';
  }
}

/// @nodoc

class PageState$Error extends PageState {
  const PageState$Error({required this.errorMessage}) : super._();

  final String errorMessage;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PageState$ErrorCopyWith<PageState$Error> get copyWith =>
      _$PageState$ErrorCopyWithImpl<PageState$Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PageState$Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @override
  String toString() {
    return 'PageState.error(errorMessage: $errorMessage)';
  }
}

/// @nodoc
abstract mixin class $PageState$ErrorCopyWith<$Res>
    implements $PageStateCopyWith<$Res> {
  factory $PageState$ErrorCopyWith(
          PageState$Error value, $Res Function(PageState$Error) _then) =
      _$PageState$ErrorCopyWithImpl;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class _$PageState$ErrorCopyWithImpl<$Res>
    implements $PageState$ErrorCopyWith<$Res> {
  _$PageState$ErrorCopyWithImpl(this._self, this._then);

  final PageState$Error _self;
  final $Res Function(PageState$Error) _then;

  /// Create a copy of PageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(PageState$Error(
      errorMessage: null == errorMessage
          ? _self.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
