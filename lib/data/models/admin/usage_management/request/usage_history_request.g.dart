// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsageHistoryRequest _$UsageHistoryRequestFromJson(Map<String, dynamic> json) =>
    UsageHistoryRequest(
      startDate: json['start_date'] as String,
      endDate: json['end_date'] as String,
      spaceId: json['space_id'] as String?,
      userId: json['user_id'] as String?,
    );

Map<String, dynamic> _$UsageHistoryRequestToJson(
        UsageHistoryRequest instance) =>
    <String, dynamic>{
      'start_date': instance.startDate,
      'end_date': instance.endDate,
      'space_id': instance.spaceId,
      'user_id': instance.userId,
    };
