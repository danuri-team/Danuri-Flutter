// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_specific_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InternalSpecificDeviceResponse _$InternalSpecificDeviceResponseFromJson(
        Map<String, dynamic> json) =>
    _InternalSpecificDeviceResponse(
      id: json['id'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      createdAt: json['createdAt'] as String,
      endAt: json['endAt'] as String?,
    );

Map<String, dynamic> _$InternalSpecificDeviceResponseToJson(
        _InternalSpecificDeviceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'createdAt': instance.createdAt,
      'endAt': instance.endAt,
    };
