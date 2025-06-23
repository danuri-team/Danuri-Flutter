// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_internal_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateInternalDeviceRequest _$CreateInternalDeviceRequestFromJson(
        Map<String, dynamic> json) =>
    _CreateInternalDeviceRequest(
      device_id: json['device_id'] as String,
      space_id: json['space_id'] as String,
    );

Map<String, dynamic> _$CreateInternalDeviceRequestToJson(
        _CreateInternalDeviceRequest instance) =>
    <String, dynamic>{
      'device_id': instance.device_id,
      'space_id': instance.space_id,
    };
