// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceUsageResponse _$SpaceUsageResponseFromJson(Map<String, dynamic> json) =>
    SpaceUsageResponse(
      isUsingSpace: json['is_using_space'] as bool,
      spaceUsageInfo: json['space_usage_info'] == null
          ? null
          : SpaceUsageInfoResponse.fromJson(
              json['space_usage_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpaceUsageResponseToJson(SpaceUsageResponse instance) =>
    <String, dynamic>{
      'is_using_space': instance.isUsingSpace,
      'space_usage_info': instance.spaceUsageInfo,
    };
