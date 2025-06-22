// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageInfoResponse _$SpaceUsageInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _SpaceUsageInfoResponse(
      space_id: json['space_id'] as String,
      usage_id: json['usage_id'] as String,
      space_name: json['space_name'] as String,
      rental_item: (json['rental_item'] as List<dynamic>)
          .map((e) => ItemAvailableRental.fromJson(e as Map<String, dynamic>))
          .toList(),
      start_at: json['start_at'] as String,
      end_at: json['end_at'] as String?,
    );

Map<String, dynamic> _$SpaceUsageInfoResponseToJson(
        _SpaceUsageInfoResponse instance) =>
    <String, dynamic>{
      'space_id': instance.space_id,
      'usage_id': instance.usage_id,
      'space_name': instance.space_name,
      'rental_item': instance.rental_item,
      'start_at': instance.start_at,
      'end_at': instance.end_at,
    };
