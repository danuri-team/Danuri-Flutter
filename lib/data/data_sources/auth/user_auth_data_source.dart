import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/check_success_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/user_info_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class UserAuthDataSource {
  final dio = AppDio.getInstance();

  Future<CheckSuccessResponse> login(LoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/phone',
      data: request.toJson(),
    );
    return CheckSuccessResponse.fromJson(response.data);
  }

  Future<UserInfoResponse> signUp(SignUpRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/register',
      data: request.toJson(),
    );
    return UserInfoResponse.fromJson(response.data);
  }

  Future<TokensResponse> authCodeLogin(AuthCodeLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/verify',
      data: request.toJson(),
    );
    return TokensResponse.fromJson(response.data);
  }
}