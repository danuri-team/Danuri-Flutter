// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageInfoResponse _$SpaceUsageInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _SpaceUsageInfoResponse(
      spaceId: json['spaceId'] as String,
      usageId: json['usageId'] as String,
      spaceName: json['spaceName'] as String,
      rentalItem: (json['rentalItem'] as List<dynamic>)
          .map((e) => ItemAvailableRental.fromJson(e as Map<String, dynamic>))
          .toList(),
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
    );

Map<String, dynamic> _$SpaceUsageInfoResponseToJson(
        _SpaceUsageInfoResponse instance) =>
    <String, dynamic>{
      'spaceId': instance.spaceId,
      'usageId': instance.usageId,
      'spaceName': instance.spaceName,
      'rentalItem': instance.rentalItem,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
    };
