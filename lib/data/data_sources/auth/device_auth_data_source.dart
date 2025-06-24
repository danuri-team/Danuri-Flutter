import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DeviceAuthDataSource {
  final String baseUrl = dotenv.env['API_URL']!;
  final dio = AppDio.getInstance();

  final storage = TokenStorage();

  Future<TokensResponse> login(DeviceAuthRequest request) async {
    final response = await dio.post(
      '$baseUrl/auth/device/token',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await storage.getAdminAccessToken()}'
      }),
    );
    await TokenStorage().setDeviceToken(response.data['access_token']['token']);
    return TokensResponse.fromJson(response.data);
  }
}

// enum TokenType {
//   admin,
//   device,
//   user,
// }

// class AuthInterceptor extends Interceptor {
//   @override
//   void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
//     super.onRequest(options, handler);

//     final tokenType = options.extra['tokenType'] as TokenType;

//     String? token;

//     fetchToken(String tokenName) async {
//       return await TokenStorage.storage.read(key: tokenName);
//     }

//     switch (tokenType) {
//       case TokenType.admin:
//         token = fetchToken('admin') as String;
//         break;
//       case TokenType.device:
//         token = fetchToken('device') as String;
//         break;
//       case TokenType.user:
//         token = fetchToken('user') as String;
//         break;
//     }

//     options.headers['Autorization'] = 'Bearer $token';

//     handler.next(options);
//   }
// }
