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
      isAvailable: json['is_available'] as bool,
      timeSlots: (json['time_slots'] as List<dynamic>)
          .map((e) => TimeSlots.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpaceUsageStatusResponseToJson(
        SpaceUsageStatusResponse instance) =>
    <String, dynamic>{
      'space_id': instance.spaceId,
      'name': instance.name,
      'is_available': instance.isAvailable,
      'time_slots': instance.timeSlots,
    };

TimeSlots _$TimeSlotsFromJson(Map<String, dynamic> json) => TimeSlots(
      startTime: (json['start_time'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      endTime: (json['end_time'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
      isAvailable: json['is_available'] as bool,
    );

Map<String, dynamic> _$TimeSlotsToJson(TimeSlots instance) => <String, dynamic>{
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'is_available': instance.isAvailable,
    };
