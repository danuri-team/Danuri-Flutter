import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/token/request/refresh_token_request.dart';
import 'package:danuri_flutter/data/models/auth/token/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:dio/dio.dart';

class DeviceAuthDataSource extends DataSource {
  final storage = TokenStorage();

  Future<TokensResponse> login(DeviceAuthRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/device/token',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await storage.getAdminAccessToken()}'
      }),
    );
    await TokenStorage().setDeviceToken(response.data);
    return TokensResponse.fromJson(response.data);
  }

  Future<TokensResponse> refreshToken(RefreshTokenRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/device/refresh',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await storage.getAdminAccessToken()}'
      }),
    );
    await TokenStorage().setDeviceToken(response.data);
    return TokensResponse.fromJson(response.data);
  }
}
