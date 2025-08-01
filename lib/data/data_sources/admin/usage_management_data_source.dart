import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/admin/usage_management/request/usage_history_request.dart';
import 'package:danuri_flutter/data/models/admin/usage_management/response/usage_history_response.dart';

class UsageManagementDataSource extends DataSource{

  Future<List<UsageHistoryResponse>> searchUsageHistory(
      UsageHistoryRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/usage/search',
      data: request.toJson(),
    );
    final result = response.data as List;
    return result.map((data) => UsageHistoryResponse.fromJson(data)).toList();
  }

  Future<UsageHistoryResponse> exportUsageHistoryExcel(
      UsageHistoryRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/usage/export',
      data: request.toJson(),
    );
    return UsageHistoryResponse.fromJson(response.data);
  }

  Future<UsageHistoryResponse> getDetailedUsageHistory(
      String usageId) async {
    final response = await dio.get('$baseUrl/admin/usage/$usageId');
    return UsageHistoryResponse.fromJson(response.data);
  }
}
