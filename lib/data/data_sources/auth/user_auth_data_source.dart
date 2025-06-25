import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/user_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/send_auth_code_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/user_info_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class UserAuthDataSource {
  final dio = AppDio.getInstance();
  final String baseUrl = dotenv.env['API_URL']!;

  Future<SendAuthCodeResponse> login(UserLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/phone',
      data: request.toJson(),
    );
    await TokenStorage().setUserToken(response.data['access_token']['token']);
    return SendAuthCodeResponse.fromJson(response.data);
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
    await TokenStorage().setUserToken(response.data['access_token']['token']);
    return TokensResponse.fromJson(response.data);
  }
}
