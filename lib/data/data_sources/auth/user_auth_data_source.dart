import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/common/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/common/request/phone_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:dio/dio.dart';

class UserAuthDataSource extends DataSource {
  Future<void> login(PhoneRequest request) async {
    await dio.post(
      '$baseUrl/auth/user/phone',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await deviceToken}'},
      ),
    );
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
    await TokenStorage().setToken(response.data, 'user');
    return TokensResponse.fromJson(response.data);
  }
}
