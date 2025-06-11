// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_space_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsageSpaceResponse _$UsageSpaceResponseFromJson(Map<String, dynamic> json) =>
    _UsageSpaceResponse(
      isUsingSpace: json['isUsingSpace'] as bool,
      spaceUsageInfo: SpaceUsageInfoResponse.fromJson(
          json['spaceUsageInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UsageSpaceResponseToJson(_UsageSpaceResponse instance) =>
    <String, dynamic>{
      'isUsingSpace': instance.isUsingSpace,
      'spaceUsageInfo': instance.spaceUsageInfo,
    };
