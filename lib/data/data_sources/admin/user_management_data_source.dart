import 'package:danuri_flutter/data/models/admin/user_management/request/create_user_request.dart';
import 'package:danuri_flutter/data/models/admin/user_management/response/user_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class UserManagementDataSource {
  final dio = AppDio.getInstance();

  Future<UserResponse> createUser(CreateUserRequest createUserRequest) async {
    final response = await dio.post(
      '$baseUrl/admin/users',
      data: createUserRequest.toJson(),
    );
    return UserResponse.fromJson(response.data);
  }

  Future<UserResponse> getUser(String userId) async {
    final response = await dio.get('$baseUrl/admin/users/$userId');
    return UserResponse.fromJson(response.data);
  }

  Future<List<UserResponse>> getInternalUser() async {
    final response = await dio.get('$baseUrl/admin/users');
    final result = response.data as List;
    return result.map((data) => UserResponse.fromJson(data)).toList();
  }

  Future<UserResponse> updateUser(
      String userId,  updateUserRequest) async {
    final response = await dio.put(
      '$baseUrl/admin/users/$userId',
      data: updateUserRequest.toJson(),
    );
    return UserResponse.fromJson(response.data);
  }

  Future<void> deleteUser(String userId) async {
    await dio.delete('$baseUrl/admin/users/$userId');
  }
}