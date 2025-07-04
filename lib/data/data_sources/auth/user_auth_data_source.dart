import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/user_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/send_auth_code_response.dart';
import 'package:dio/dio.dart';

class UserAuthDataSource extends DataSource {
  Future<SendAuthCodeResponse> login(UserLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/phone',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await deviceToken}'},
      ),
    );
    return SendAuthCodeResponse.fromJson(response.data);
  }

  Future<void> signUp(SignUpRequest request) async {
    await dio.post(
      '$baseUrl/auth/user/register',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await deviceToken}'},
      ),
    );
  }

  Future<TokensResponse> authCodeLogin(AuthCodeLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/verify',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await deviceToken}'},
      ),
    );
    Future.wait([
      TokenStorage().setUserAccessToken(response.data['access_token']['token']),
      TokenStorage()
          .setUserRefreshToken(response.data['refresh_token']['token'])
    ]);
    return TokensResponse.fromJson(response.data);
  }
}
