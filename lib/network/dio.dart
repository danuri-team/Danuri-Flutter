import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class AppDio {
  AppDio._internal();

  static Dio? _instance;

  static Dio getInstance() => _instance ??= _AppDio();
}

class _AppDio with DioMixin implements AppDio {
  _AppDio() {
    httpClientAdapter = IOHttpClientAdapter();
    options = BaseOptions(
      baseUrl: dotenv.env['API_URL']!,
      headers: {
        'Content-Type': 'application/json',
      },
      sendTimeout: const Duration(seconds: 30),
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      receiveDataWhenStatusError: true,
    );

    interceptors.addAll(
      [
        InterceptorsWrapper(
          // onError: (error, handler) async{
          //   if(error.response?.statusCode == 403){
          //     final adminRefreshToken = await TokenStorage().getAdminRefreshToken();
          //     final TokensResponse tokens = await AdminAuthDataSource().refreshToken(RefreshTokenRequest(refresh_token: adminRefreshToken!));
          //     TokenStorage().setAdminAccessToken(tokens['access_token']['token']);
          //   }
          // },

          onRequest: (options, handler) async {
            return handler.next(options);
          },
        ),
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      ],
    );
  }
}
