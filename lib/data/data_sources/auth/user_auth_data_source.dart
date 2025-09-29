import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/common/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/common/request/phone_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';

class UserAuthDataSource{
  final dio = AppDio.getInstance();
  final tokenStorage = TokenStorage();

  Future<void> login(PhoneRequest request) async {
    await dio.post(
      '/auth/user/phone',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'},
      ),
    );
  }

  Future<void> signUp(SignUpRequest request) async {
    await dio.post(
      '/auth/user/register',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'},
      ),
    );
  }

  Future<TokensResponse> authCodeLogin(AuthCodeLoginRequest request) async {
    final response = await dio.post(
      '/auth/user/verify',
      data: request.toJson(),
      options: Options(
        headers: {'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'},
      ),
    );
    await tokenStorage.setToken(response.data, TokenType.user);
    return TokensResponse.fromJson(response.data);
  }
}
