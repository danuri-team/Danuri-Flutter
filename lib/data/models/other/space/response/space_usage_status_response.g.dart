// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageStatusResponse _$SpaceUsageStatusResponseFromJson(
        Map<String, dynamic> json) =>
    _SpaceUsageStatusResponse(
      spaceUsageStatus: (json['spaceUsageStatus'] as List<dynamic>)
          .map((e) => SpaceUsageStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SpaceUsageStatusResponseToJson(
        _SpaceUsageStatusResponse instance) =>
    <String, dynamic>{
      'spaceUsageStatus': instance.spaceUsageStatus,
    };
