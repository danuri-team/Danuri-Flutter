import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/auth/common_data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/refresh_token_request.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';
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
          onError: (error, handler) async {
              if (error.response?.statusCode == 403) {
                final tokenStorage = TokenStorage();

                int nowTime = DateTime.now().millisecondsSinceEpoch;

                Future.wait([
                  tokenStorage.getAdminAccessTokenExpiredAt(),
                  tokenStorage.getDeviceAccessTokenExpiredAt(),
                ]).then(
                  (value) async {
                    //현재시간과 만료시간 대조
                    if (nowTime > int.parse(value[0]!)) {
                      await tokenStorage.getAdminRefreshToken().then(
                            (refreshToken) => CommonDataSource().refreshToken(
                              RefreshTokenRequest(refreshToken: refreshToken!),
                              TokenType.admin,
                            ),
                          );
                    } else if (nowTime > int.parse(value[1]!)) {
                      await tokenStorage.getDeviceRefreshToken().then(
                            (refreshToken) => CommonDataSource().refreshToken(
                              RefreshTokenRequest(refreshToken: refreshToken!),
                              TokenType.device,
                            ),
                          );
                    }
                  },
                );
              }
            return handler.reject(error);
          },
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
