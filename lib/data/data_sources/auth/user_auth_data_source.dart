import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/token/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/user_login_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/send_auth_code_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/user_info_response.dart';

class UserAuthDataSource extends DataSource {
  Future<SendAuthCodeResponse> login(UserLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/user/phone',
      data: request.toJson(),
    );
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
    await TokenStorage().setUserToken(response.data);
    return TokensResponse.fromJson(response.data);
  }
}
