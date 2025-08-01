// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_internal_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateInternalDeviceRequest _$CreateInternalDeviceRequestFromJson(
        Map<String, dynamic> json) =>
    CreateInternalDeviceRequest(
      deviceId: json['device_id'] as String,
      spaceId: json['space_id'] as String,
    );

Map<String, dynamic> _$CreateInternalDeviceRequestToJson(
        CreateInternalDeviceRequest instance) =>
    <String, dynamic>{
      'device_id': instance.deviceId,
      'space_id': instance.spaceId,
    };
