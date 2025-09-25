import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/refresh_token_request.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';

class CommonDataSource extends DataSource{
  // tokenType = 'admin', 'device', 'user'
  Future<TokensResponse> refreshToken(RefreshTokenRequest request, TokenType tokenType) async{
    final response = await dio.post(
      '/auth/common/refresh',
      data: request.toJson(),
    );
    await TokenStorage().setToken(response.data, tokenType);
    return TokensResponse.fromJson(response.data);
  }
}