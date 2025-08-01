// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceUsageInfoResponse _$SpaceUsageInfoResponseFromJson(
        Map<String, dynamic> json) =>
    SpaceUsageInfoResponse(
      spaceId: json['space_id'] as String,
      usageId: json['usage_id'] as String,
      spaceName: json['space_name'] as String,
      rentalItem: (json['rental_item'] as List<dynamic>)
          .map((e) => RentalItemResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAt: json['start_at'] as String,
      endAt: json['end_at'] as String?,
    );

Map<String, dynamic> _$SpaceUsageInfoResponseToJson(
        SpaceUsageInfoResponse instance) =>
    <String, dynamic>{
      'space_id': instance.spaceId,
      'usage_id': instance.usageId,
      'space_name': instance.spaceName,
      'rental_item': instance.rentalItem,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
    };
