// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageStatusResponse _$SpaceUsageStatusResponseFromJson(
        Map<String, dynamic> json) =>
    _SpaceUsageStatusResponse(
      space_id: json['space_id'] as String,
      name: json['name'] as String,
      start_at: (json['start_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      end_at: (json['end_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      is_available: json['is_available'] as bool,
    );

Map<String, dynamic> _$SpaceUsageStatusResponseToJson(
        _SpaceUsageStatusResponse instance) =>
    <String, dynamic>{
      'space_id': instance.space_id,
      'name': instance.name,
      'start_at': instance.start_at,
      'end_at': instance.end_at,
      'is_available': instance.is_available,
    };
