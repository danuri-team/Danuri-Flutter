import 'package:danuri_flutter/data/data_sources/auth/common_data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/refresh_token_request.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';

class CommonViewModel {
  final CommonDataSource dataSource = CommonDataSource();

  Future<void> refreshToken({required String refreshToken, required TokenType tokenType}) async{
    await dataSource.refreshToken(RefreshTokenRequest(refreshToken: refreshToken), tokenType);
  }
}