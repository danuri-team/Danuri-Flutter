// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'export_usage_history_excel_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExportUsageHistoryExcelRequest _$ExportUsageHistoryExcelRequestFromJson(
        Map<String, dynamic> json) =>
    _ExportUsageHistoryExcelRequest(
      startDate: json['startDate'] as String,
      endDate: json['endDate'] as String,
      spaceId: json['spaceId'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$ExportUsageHistoryExcelRequestToJson(
        _ExportUsageHistoryExcelRequest instance) =>
    <String, dynamic>{
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'spaceId': instance.spaceId,
      'userId': instance.userId,
    };
