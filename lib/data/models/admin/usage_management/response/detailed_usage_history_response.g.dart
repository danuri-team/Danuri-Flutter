// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_usage_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailedUsageHistoryResponse _$DetailedUsageHistoryResponseFromJson(
        Map<String, dynamic> json) =>
    _DetailedUsageHistoryResponse(
      id: json['id'] as String,
      userId: json['userId'] as String,
      userName: json['userName'] as String,
      userPhone: json['userPhone'] as String,
      spaceId: json['spaceId'] as String,
      spaceName: json['spaceName'] as String,
      companyId: json['companyId'] as String,
      companyName: json['companyName'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
      rentalCount: (json['rentalCount'] as num).toInt(),
    );

Map<String, dynamic> _$DetailedUsageHistoryResponseToJson(
        _DetailedUsageHistoryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'userName': instance.userName,
      'userPhone': instance.userPhone,
      'spaceId': instance.spaceId,
      'spaceName': instance.spaceName,
      'companyId': instance.companyId,
      'companyName': instance.companyName,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
      'rentalCount': instance.rentalCount,
    };
