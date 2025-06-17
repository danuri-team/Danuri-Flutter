import 'package:danuri_flutter/data/models/admin/admin_account_management/request/change_password_request.dart';
import 'package:danuri_flutter/data/models/admin/admin_account_management/request/update_admin_info_request.dart';
import 'package:danuri_flutter/data/models/admin/admin_account_management/response/all_admin_account_response.dart';
import 'package:danuri_flutter/data/models/admin/admin_account_management/response/my_info_response.dart';
import 'package:danuri_flutter/data/models/admin/admin_account_management/response/specific_admin_info_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class AdminAccountManagementDataSource {
  final dio = AppDio.getInstance();

  Future<MyInfoResponse> getMyInfo() async {
    final response = await dio.get('$baseUrl/admin/management/me');
    return MyInfoResponse.fromJson(response.data);
  }

  Future<SpecificAdminInfoResponse> getSpecificAdminAccountInfo(
      String adminId) async {
    final response = await dio.get('$baseUrl/admin/management/$adminId');
    return SpecificAdminInfoResponse.fromJson(response.data);
  }

  Future<AllAdminAccountResponse> getAllAdminAccount() async {
    final response = await dio.get('$baseUrl/admin/management');
    return AllAdminAccountResponse.fromJson(response.data);
  }

  Future<MyInfoResponse> updateAdminInfo(
      String adminId, UpdateAdminInfoRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/management/$adminId',
      data: request.toJson(),
    );
    return MyInfoResponse.fromJson(response.data);
  }

  Future<MyInfoResponse> changePassword(ChangePasswordRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/management/password',
      data: request.toJson(),
    );
    return MyInfoResponse.fromJson(response.data);
  }

  Future<void> deleteAdmin(String adminId) async {
    await dio.delete('$baseUrl/admin/management/$adminId');
  }
}
