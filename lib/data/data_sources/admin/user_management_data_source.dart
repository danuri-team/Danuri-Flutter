import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/admin/user_management/request/create_user_request.dart';
import 'package:danuri_flutter/data/models/admin/user_management/request/update_user_request.dart';
import 'package:danuri_flutter/data/models/admin/user_management/response/user_response.dart';

class UserManagementDataSource extends DataSource{

  Future<UserResponse> createUser(CreateUserRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/users',
      data: request.toJson(),
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
      String userId, UpdateUserRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/users/$userId',
      data: request.toJson(),
    );
    return UserResponse.fromJson(response.data);
  }

  Future<void> deleteUser(String userId) async {
    await dio.delete('$baseUrl/admin/users/$userId');
  }
}
