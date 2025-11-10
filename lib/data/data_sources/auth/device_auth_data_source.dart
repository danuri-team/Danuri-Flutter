import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:danuri_flutter/core/enum/token_type.dart';
import 'package:danuri_flutter/network/dio.dart';

class DeviceAuthDataSource{
  final dio = AppDio.getInstance();
  final tokenStorage = TokenStorage();

  Future<TokensResponse> deviceAuth(DeviceAuthRequest request) async {
    final response = await dio.post(
      '/auth/device/token',
      data: request.toJson(),
    );
    await tokenStorage.setToken(response.data, TokenType.DEVICE);
    return TokensResponse.fromJson(response.data);
  }
}
