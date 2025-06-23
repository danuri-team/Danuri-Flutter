// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UsageHistoryResponse _$UsageHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _UsageHistoryResponse(
      id: json['id'] as String,
      user_id: json['user_id'] as String,
      user_name: json['user_name'] as String,
      user_phone: json['user_phone'] as String,
      space_id: json['space_id'] as String,
      space_name: json['space_name'] as String,
      start_at: json['start_at'] as String,
      end_at: json['end_at'] as String,
      rental_count: (json['rental_count'] as num).toInt(),
    );

Map<String, dynamic> _$UsageHistoryResponseToJson(
        _UsageHistoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'user_name': instance.user_name,
      'user_phone': instance.user_phone,
      'space_id': instance.space_id,
      'space_name': instance.space_name,
      'start_at': instance.start_at,
      'end_at': instance.end_at,
      'rental_count': instance.rental_count,
    };
