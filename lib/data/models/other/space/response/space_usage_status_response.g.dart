// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceUsageStatusResponse _$SpaceUsageStatusResponseFromJson(
        Map<String, dynamic> json) =>
    SpaceUsageStatusResponse(
      spaceId: json['space_id'] as String,
      name: json['name'] as String,
      startAt: (json['start_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      endAt: (json['end_at'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$SpaceUsageStatusResponseToJson(
        SpaceUsageStatusResponse instance) =>
    <String, dynamic>{
      'space_id': instance.spaceId,
      'name': instance.name,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
      'is_available': instance.isAvailable,
    };
