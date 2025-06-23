// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceRequestRequest _$SpaceRequestRequestFromJson(Map<String, dynamic> json) =>
    _SpaceRequestRequest(
      name: json['name'] as String,
      start_at: json['start_at'] as String,
      end_at: json['end_at'] as String?,
    );

Map<String, dynamic> _$SpaceRequestRequestToJson(
        _SpaceRequestRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'start_at': instance.start_at,
      'end_at': instance.end_at,
    };
