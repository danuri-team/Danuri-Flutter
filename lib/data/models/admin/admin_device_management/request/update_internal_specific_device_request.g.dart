// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_internal_specific_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateInternalSpecificDeviceRequest
    _$UpdateInternalSpecificDeviceRequestFromJson(Map<String, dynamic> json) =>
        UpdateInternalSpecificDeviceRequest(
          spaceId: json['space_id'] as String,
          isActivate: json['is_activate'] as bool,
        );

Map<String, dynamic> _$UpdateInternalSpecificDeviceRequestToJson(
        UpdateInternalSpecificDeviceRequest instance) =>
    <String, dynamic>{
      'space_id': instance.spaceId,
      'is_activate': instance.isActivate,
    };
