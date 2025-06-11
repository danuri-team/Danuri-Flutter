import 'package:freezed_annotation/freezed_annotation.dart';

part 'export_usage_history_excel_request.freezed.dart';
part 'export_usage_history_excel_request.g.dart';

@freezed
abstract class ExportUsageHistoryExcelRequest with _$ExportUsageHistoryExcelRequest{
  factory ExportUsageHistoryExcelRequest({
    required String startDate,
    required String endDate,
    String? spaceId,
    String? userId,
  }) = _ExportUsageHistoryExcelRequest;

  factory ExportUsageHistoryExcelRequest.fromJson(Map<String, dynamic> json) => _$ExportUsageHistoryExcelRequestFromJson(json);
}