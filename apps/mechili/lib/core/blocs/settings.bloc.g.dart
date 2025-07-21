// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) =>
    _SettingsState(
      locale: json['locale'] as String,
      mapProvider: $enumDecode(_$MapProviderEnumEnumMap, json['mapProvider']),
    );

Map<String, dynamic> _$SettingsStateToJson(_SettingsState instance) =>
    <String, dynamic>{
      'locale': instance.locale,
      'mapProvider': _$MapProviderEnumEnumMap[instance.mapProvider]!,
    };

const _$MapProviderEnumEnumMap = {
  MapProviderEnum.googleMaps: 'googleMaps',
  MapProviderEnum.openStreetMaps: 'openStreetMaps',
  MapProviderEnum.mapBox: 'mapBox',
  MapProviderEnum.mapBoxSDK: 'mapBoxSDK',
  MapProviderEnum.mapLibre: 'mapLibre',
};
