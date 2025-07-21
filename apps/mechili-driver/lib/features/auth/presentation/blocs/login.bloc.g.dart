// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginState _$LoginStateFromJson(Map<String, dynamic> json) => _LoginState(
      isLoading: json['isLoading'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
      loginPage: json['loginPage'] == null
          ? const LoginPage.enterNumber()
          : LoginPage.fromJson(json['loginPage'] as Map<String, dynamic>),
      countryCode: json['countryCode'] == null
          ? null
          : CountryCode.fromJson(json['countryCode'] as Map<String, dynamic>),
      verificationHash: json['verificationHash'] as String?,
      lastOtpSentAt: json['lastOtpSentAt'] == null
          ? null
          : DateTime.parse(json['lastOtpSentAt'] as String),
      jwtToken: json['jwtToken'] as String?,
      currentPassword: json['currentPassword'] as String?,
      newPassword: json['newPassword'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      vehicleModels: (json['vehicleModels'] as List<dynamic>?)
              ?.map((e) =>
                  Fragment$VehicleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      vehicleColors: (json['vehicleColors'] as List<dynamic>?)
              ?.map((e) =>
                  Fragment$VehicleColor.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      profileFullEntity: json['profileFullEntity'] == null
          ? null
          : Fragment$ProfileFull.fromJson(
              json['profileFullEntity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginStateToJson(_LoginState instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
      'loginPage': instance.loginPage,
      'countryCode': instance.countryCode,
      'verificationHash': instance.verificationHash,
      'lastOtpSentAt': instance.lastOtpSentAt?.toIso8601String(),
      'jwtToken': instance.jwtToken,
      'currentPassword': instance.currentPassword,
      'newPassword': instance.newPassword,
      'mobileNumber': instance.mobileNumber,
      'vehicleModels': instance.vehicleModels,
      'vehicleColors': instance.vehicleColors,
      'profileFullEntity': instance.profileFullEntity,
    };
