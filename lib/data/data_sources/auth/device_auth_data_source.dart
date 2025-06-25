import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:dio/dio.dart';

class DeviceAuthDataSource extends DataSource{

  final storage = TokenStorage();

  Future<TokensResponse> login(DeviceAuthRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/device/token',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await storage.getAdminAccessToken()}'
      }),
    );
    Future.wait([
      TokenStorage().setDeviceAccessToken(response.data['access_token']['token']),
      TokenStorage().setDeviceRefreshToken(response.data['refresh_token']['token'])
    ]);
    return TokensResponse.fromJson(response.data);
  }
}