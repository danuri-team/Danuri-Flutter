import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/auth/common/request/refresh_token_request.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';

class CommonDataSource {
  final dio = AppDio.getInstance();
  final tokenStorage = TokenStorage();

  Future<TokensResponse> refreshToken(
      RefreshTokenRequest request, TokenType tokenType) async {
    final response = await dio.get(
      '/auth/common/refresh',
      options: Options(
        headers: {'Refresh-Token': request.refreshToken},
      ),
    );
    await tokenStorage.setToken(response.data, tokenType);
    return TokensResponse.fromJson(response.data);
  }
}
