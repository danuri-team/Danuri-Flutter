// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_internal_specific_device_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateInternalSpecificDeviceRequest
    _$UpdateInternalSpecificDeviceRequestFromJson(Map<String, dynamic> json) =>
        _UpdateInternalSpecificDeviceRequest(
          space_id: json['space_id'] as String,
          is_activate: json['is_activate'] as bool,
        );

Map<String, dynamic> _$UpdateInternalSpecificDeviceRequestToJson(
        _UpdateInternalSpecificDeviceRequest instance) =>
    <String, dynamic>{
      'space_id': instance.space_id,
      'is_activate': instance.is_activate,
    };
