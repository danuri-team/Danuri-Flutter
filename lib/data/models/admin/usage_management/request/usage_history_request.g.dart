// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsageHistoryRequest _$UsageHistoryRequestFromJson(Map<String, dynamic> json) =>
    _UsageHistoryRequest(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      spaceId: json['spaceId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$UsageHistoryRequestToJson(
        _UsageHistoryRequest instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'spaceId': instance.spaceId,
      'userId': instance.userId,
    };
