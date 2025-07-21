// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return AuthState$Authenticated.fromJson(json);
    case 'unauthenticated':
      return AuthState$Unauthenticated.fromJson(json);
    case 'error':
      return AuthState$Error.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  /// Serializes this AuthState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AuthState);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState()';
  }
}

/// @nodoc
class $AuthStateCopyWith<$Res> {
  $AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}

/// @nodoc
@JsonSerializable()
class AuthState$Authenticated extends AuthState {
  const AuthState$Authenticated(
      {required this.jwtToken, required this.profile, final String? $type})
      : $type = $type ?? 'authenticated',
        super._();
  factory AuthState$Authenticated.fromJson(Map<String, dynamic> json) =>
      _$AuthState$AuthenticatedFromJson(json);

  final String jwtToken;
  final Fragment$ProfileFull profile;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthState$AuthenticatedCopyWith<AuthState$Authenticated> get copyWith =>
      _$AuthState$AuthenticatedCopyWithImpl<AuthState$Authenticated>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthState$AuthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState$Authenticated &&
            (identical(other.jwtToken, jwtToken) ||
                other.jwtToken == jwtToken) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, jwtToken, profile);

  @override
  String toString() {
    return 'AuthState.authenticated(jwtToken: $jwtToken, profile: $profile)';
  }
}

/// @nodoc
abstract mixin class $AuthState$AuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthState$AuthenticatedCopyWith(AuthState$Authenticated value,
          $Res Function(AuthState$Authenticated) _then) =
      _$AuthState$AuthenticatedCopyWithImpl;
  @useResult
  $Res call({String jwtToken, Fragment$ProfileFull profile});
}

/// @nodoc
class _$AuthState$AuthenticatedCopyWithImpl<$Res>
    implements $AuthState$AuthenticatedCopyWith<$Res> {
  _$AuthState$AuthenticatedCopyWithImpl(this._self, this._then);

  final AuthState$Authenticated _self;
  final $Res Function(AuthState$Authenticated) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? jwtToken = null,
    Object? profile = null,
  }) {
    return _then(AuthState$Authenticated(
      jwtToken: null == jwtToken
          ? _self.jwtToken
          : jwtToken // ignore: cast_nullable_to_non_nullable
              as String,
      profile: null == profile
          ? _self.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Fragment$ProfileFull,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class AuthState$Unauthenticated extends AuthState {
  const AuthState$Unauthenticated({final String? $type})
      : $type = $type ?? 'unauthenticated',
        super._();
  factory AuthState$Unauthenticated.fromJson(Map<String, dynamic> json) =>
      _$AuthState$UnauthenticatedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$AuthState$UnauthenticatedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState$Unauthenticated);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }
}

/// @nodoc
@JsonSerializable()
class AuthState$Error extends AuthState {
  const AuthState$Error({required this.message, final String? $type})
      : $type = $type ?? 'error',
        super._();
  factory AuthState$Error.fromJson(Map<String, dynamic> json) =>
      _$AuthState$ErrorFromJson(json);

  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuthState$ErrorCopyWith<AuthState$Error> get copyWith =>
      _$AuthState$ErrorCopyWithImpl<AuthState$Error>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuthState$ErrorToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuthState$Error &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $AuthState$ErrorCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory $AuthState$ErrorCopyWith(
          AuthState$Error value, $Res Function(AuthState$Error) _then) =
      _$AuthState$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AuthState$ErrorCopyWithImpl<$Res>
    implements $AuthState$ErrorCopyWith<$Res> {
  _$AuthState$ErrorCopyWithImpl(this._self, this._then);

  final AuthState$Error _self;
  final $Res Function(AuthState$Error) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(AuthState$Error(
      message: null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
