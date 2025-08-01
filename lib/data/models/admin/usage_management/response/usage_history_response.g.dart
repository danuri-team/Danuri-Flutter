// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usage_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsageHistoryResponse _$UsageHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    UsageHistoryResponse(
      id: json['id'] as String,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      userPhone: json['user_phone'] as String,
      spaceId: json['space_id'] as String,
      spaceName: json['space_name'] as String,
      startAt: json['start_at'] as String,
      endAt: json['end_at'] as String,
      rentalCount: (json['rental_count'] as num).toInt(),
    );

Map<String, dynamic> _$UsageHistoryResponseToJson(
        UsageHistoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_phone': instance.userPhone,
      'space_id': instance.spaceId,
      'space_name': instance.spaceName,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
      'rental_count': instance.rentalCount,
    };
