import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/admin_login_request.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/sign_up_request.dart';

class AdminAuthDataSource extends DataSource {
  Future<TokensResponse> login(AdminLoginRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/admin/sign-in',
      data: request.toJson(),
    );
    await TokenStorage().setToken(response.data, 'admin');
    return TokensResponse.fromJson(response.data);
  }

  Future<void> signUp(SignUpRequest request) async {
    await dio.post(
      '$baseUrl/auth/admin/sign-up',
      data: request.toJson(),
    );
  }
}
