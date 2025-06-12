// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageResponse _$SpaceUsageResponseFromJson(Map<String, dynamic> json) =>
    _SpaceUsageResponse(
      isUsingSpace: json['isUsingSpace'] as bool,
      spaceUsageInfo: SpaceUsageInfoResponse.fromJson(
          json['spaceUsageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpaceUsageResponseToJson(_SpaceUsageResponse instance) =>
    <String, dynamic>{
      'isUsingSpace': instance.isUsingSpace,
      'spaceUsageInfo': instance.spaceUsageInfo,
    };
