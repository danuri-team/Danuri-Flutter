// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceResponse _$SpaceResponseFromJson(Map<String, dynamic> json) =>
    SpaceResponse(
      id: json['id'] as String,
      name: json['name'] as String,
      startAt: (json['start_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      endAt: (json['end_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      usageCount: (json['usageCount'] as num).toInt(),
    );

Map<String, dynamic> _$SpaceResponseToJson(SpaceResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
      'usageCount': instance.usageCount,
    };
