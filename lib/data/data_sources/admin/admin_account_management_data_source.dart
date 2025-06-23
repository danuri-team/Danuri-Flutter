import 'package:danuri_flutter/data/models/admin/admin_account_management/request/change_password_request.dart';
import 'package:danuri_flutter/data/models/admin/admin_account_management/request/update_admin_info_request.dart';
import 'package:danuri_flutter/data/models/admin/admin_account_management/response/admin_info_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AdminAccountManagementDataSource {
  final dio = AppDio.getInstance();
  final String baseUrl = dotenv.env['API_URL']!;

  Future<AdminInfoResponse> getMyInfo() async {
    final response = await dio.get('$baseUrl/admin/management/me');
    return AdminInfoResponse.fromJson(response.data);
  }

  Future<AdminInfoResponse> getSpecificAdminAccountInfo(
      String adminId) async {
    final response = await dio.get('$baseUrl/admin/management/$adminId');
    return AdminInfoResponse.fromJson(response.data);
  }

  Future<List<AdminInfoResponse>> getAllAdminAccount() async {
    final response = await dio.get('$baseUrl/admin/management');
    final result = response.data as List;
    return result.map((data) => AdminInfoResponse.fromJson(data)).toList();
  }

  Future<AdminInfoResponse> updateAdminInfo(
      String adminId, UpdateAdminInfoRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/management/$adminId',
      data: request.toJson(),
    );
    return AdminInfoResponse.fromJson(response.data);
  }

  Future<AdminInfoResponse> changePassword(ChangePasswordRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/management/password',
      data: request.toJson(),
    );
    return AdminInfoResponse.fromJson(response.data);
  }

  Future<void> deleteAdmin(String adminId) async {
    await dio.delete('$baseUrl/admin/management/$adminId');
  }
}
