import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/admin_login_request.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/refresh_token_request.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AdminAuthDataSource {
  final String baseUrl = dotenv.env['API_URL']!;
  final dio = AppDio.getInstance();

  Future<TokensResponse> login(AdminLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/admin/sign-in',
      data: request.toJson(),
    );
    return TokensResponse.fromJson(response.data);
  }

  Future<void> signUp(SignUpRequest request) async {
    await dio.post(
      '$baseUrl/auth/admin/sign-up',
      data: request.toJson(),
    );
  }

  Future<TokensResponse> refreshToken(RefreshTokenRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/admin/refresh',
      data: request.toJson(),
    );
    return TokensResponse.fromJson(response.data);
  }
}
