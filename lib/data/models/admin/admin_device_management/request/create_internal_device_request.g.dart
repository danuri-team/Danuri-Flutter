// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_internal_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateInternalDeviceRequest _$CreateInternalDeviceRequestFromJson(
        Map<String, dynamic> json) =>
    _CreateInternalDeviceRequest(
      deviceId: json['deviceId'] as String,
      spaceId: json['spaceId'] as String,
    );

Map<String, dynamic> _$CreateInternalDeviceRequestToJson(
        _CreateInternalDeviceRequest instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
      'spaceId': instance.spaceId,
    };
