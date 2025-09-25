import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/common/request/phone_request.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/admin_login_request.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';

class AdminAuthDataSource extends DataSource {
  Future<TokensResponse> adminLogin(AdminLoginRequest request) async {
    final response = await dio.post(
      '/auth/admin/sign-in',
      data: request.toJson(),
    );
    await TokenStorage().setToken(response.data, TokenType.admin);
    return TokensResponse.fromJson(response.data);
  }

  Future<void> signUp(SignUpRequest request) async {
    await dio.post(
      '/auth/admin/sign-up',
      data: request.toJson(),
    );
  }

  Future<void> findPassword(PhoneRequest request) async {
    await dio.post(
      '/auth/admin/find-password',
      data: request.toJson(),
    );
  }

  Future<TokensResponse> resetToken(AuthCodeLoginRequest request) async {
    final response = await dio.post(
      '/auth/admin/reset-token',
      data: request.toJson(),
    );
    return TokensResponse.fromJson(response.data);
  }
}
