// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceResponse _$SpaceResponseFromJson(Map<String, dynamic> json) =>
    _SpaceResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      start_at: (json['start_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      end_at: (json['end_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      usage_count: (json['usage_count'] as num).toInt(),
    );

Map<String, dynamic> _$SpaceResponseToJson(_SpaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_at': instance.start_at,
      'end_at': instance.end_at,
      'usage_count': instance.usage_count,
    };
