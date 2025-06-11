// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_internal_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllInternalDeviceResponse _$AllInternalDeviceResponseFromJson(
        Map<String, dynamic> json) =>
    _AllInternalDeviceResponse(
      devices: (json['devices'] as List<dynamic>)
          .map((e) => InternalSpecificDeviceResponse.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AllInternalDeviceResponseToJson(
        _AllInternalDeviceResponse instance) =>
    <String, dynamic>{
      'devices': instance.devices,
    };
