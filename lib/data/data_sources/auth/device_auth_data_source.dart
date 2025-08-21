import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:dio/dio.dart';

class DeviceAuthDataSource extends DataSource {
  final storage = TokenStorage();

  Future<TokensResponse> deviceAuth(DeviceAuthRequest request) async {
    final response = await dio.post(
      '/auth/device/token',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await adminToken}'
      }),
    );
    await TokenStorage().setToken(response.data, 'device');
    return TokensResponse.fromJson(response.data);
  }
}
