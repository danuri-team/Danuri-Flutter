// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_device_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InternalDeviceResponse _$InternalDeviceResponseFromJson(
        Map<String, dynamic> json) =>
    InternalDeviceResponse(
      id: json['id'] as String,
      createdAt: json['created_at'] as String,
    );

Map<String, dynamic> _$InternalDeviceResponseToJson(
        InternalDeviceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
    };
