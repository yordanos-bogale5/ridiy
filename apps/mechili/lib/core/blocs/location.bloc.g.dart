// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationState$Loading _$LocationState$LoadingFromJson(
        Map<String, dynamic> json) =>
    LocationState$Loading(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LocationState$LoadingToJson(
        LocationState$Loading instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

LocationState$Error _$LocationState$ErrorFromJson(Map<String, dynamic> json) =>
    LocationState$Error(
      error: $enumDecode(_$LocationErrorEnumMap, json['error']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LocationState$ErrorToJson(
        LocationState$Error instance) =>
    <String, dynamic>{
      'error': _$LocationErrorEnumMap[instance.error]!,
      'runtimeType': instance.$type,
    };

const _$LocationErrorEnumMap = {
  LocationError.permissionDenied: 'permissionDenied',
  LocationError.serviceDisabled: 'serviceDisabled',
  LocationError.unknown: 'unknown',
};

LocationState$Determined _$LocationState$DeterminedFromJson(
        Map<String, dynamic> json) =>
    LocationState$Determined(
      place: Place.fromJson(json['place'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$LocationState$DeterminedToJson(
        LocationState$Determined instance) =>
    <String, dynamic>{
      'place': instance.place,
      'runtimeType': instance.$type,
    };
