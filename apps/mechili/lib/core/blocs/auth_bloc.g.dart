// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthState$Authenticated _$AuthState$AuthenticatedFromJson(
        Map<String, dynamic> json) =>
    AuthState$Authenticated(
      jwtToken: json['jwtToken'] as String,
      profile:
          Fragment$Profile.fromJson(json['profile'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AuthState$AuthenticatedToJson(
        AuthState$Authenticated instance) =>
    <String, dynamic>{
      'jwtToken': instance.jwtToken,
      'profile': instance.profile,
      'runtimeType': instance.$type,
    };

AuthState$Unauthenticated _$AuthState$UnauthenticatedFromJson(
        Map<String, dynamic> json) =>
    AuthState$Unauthenticated(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AuthState$UnauthenticatedToJson(
        AuthState$Unauthenticated instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
