// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_usage_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpaceUsageResponse _$SpaceUsageResponseFromJson(Map<String, dynamic> json) =>
    _SpaceUsageResponse(
      is_using_space: json['is_using_space'] as bool,
      space_usage_info: SpaceUsageInfoResponse.fromJson(
          json['space_usage_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpaceUsageResponseToJson(_SpaceUsageResponse instance) =>
    <String, dynamic>{
      'is_using_space': instance.is_using_space,
      'space_usage_info': instance.space_usage_info,
    };
