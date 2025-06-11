import 'package:danuri_flutter/data/models/admin/usage_management/request/export_usage_history_excel_request.dart';
import 'package:danuri_flutter/data/models/admin/usage_management/request/usage_history_request.dart';
import 'package:danuri_flutter/data/models/admin/usage_management/response/detailed_usage_history_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class UsageManagementDataSource {
  final dio = AppDio.getInstance();

  Future<List<UsageHistoryRequest>> searchUsageHistory(UsageHistoryRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/usage/search',
      data: request.toJson(),
    );
    final result = response.data as List;
    return result.map((data) => UsageHistoryRequest.fromJson(data)).toList();
  }

  Future<ExportUsageHistoryExcelRequest> exportUsageHistoryExcel(ExportUsageHistoryExcelRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/usage/export',
      data: request.toJson(),
    );
    return ExportUsageHistoryExcelRequest.fromJson(response.data);
  }

  Future<DetailedUsageHistoryResponse> getDetailedUsageHistory(String usageId) async {
    final response = await dio.get('$baseUrl/admin/usage/$usageId');
    return DetailedUsageHistoryResponse.fromJson(response.data);
  }
}