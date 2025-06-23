import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DeviceAuthDataSource {
  final String baseUrl = dotenv.env['API_URL']!;
  final dio = AppDio.getInstance();

  Future<TokensResponse> login(DeviceAuthRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/device/token',
      data: request.toJson(),
    );
    return TokensResponse.fromJson(response.data);
  }
}
