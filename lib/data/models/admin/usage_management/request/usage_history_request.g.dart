// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_history_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsageHistoryRequest _$UsageHistoryRequestFromJson(Map<String, dynamic> json) =>
    _UsageHistoryRequest(
      start_date: json['start_date'] as String,
      end_date: json['end_date'] as String,
      space_id: json['space_id'] as String?,
      user_id: json['user_id'] as String?,
    );

Map<String, dynamic> _$UsageHistoryRequestToJson(
        _UsageHistoryRequest instance) =>
    <String, dynamic>{
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'space_id': instance.space_id,
      'user_id': instance.user_id,
    };
