import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/data_sources/auth/admin_auth_data_source.dart';
import 'package:danuri_flutter/data/data_sources/auth/device_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/token/request/refresh_token_request.dart';
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
            //토큰이 만료되었을 때 DioException발생
            if (error.response?.statusCode == 403) {
              int adminAccessTokenExpiredAt;
              int deviceAccessTokenExpiredAt;
              int nowTime = DateTime.now().millisecondsSinceEpoch;

              //토큰들의 만료시간 가져오기
              Future.wait([
                TokenStorage().getAdminAccessTokenExpiredAt(),
                TokenStorage().getDeviceAccessTokenExpiredAt(),
                TokenStorage().getUserAccessTokenExpiredAt(),
              ]).then(
                (value) async {
                  adminAccessTokenExpiredAt = int.parse(value[0]!);
                  deviceAccessTokenExpiredAt = int.parse(value[1]!);
                  final TokenStorage storage = TokenStorage();

                  //현재시간과 만료시간 대조
                  if (nowTime > adminAccessTokenExpiredAt) {
                    await storage.getAdminRefreshToken().then(
                          (refreshToken) => AdminAuthDataSource().refreshToken(
                            RefreshTokenRequest(refreshToken: refreshToken!),
                          ),
                        );
                  } else if (nowTime > deviceAccessTokenExpiredAt) {
                    await storage.getDeviceRefreshToken().then(
                          (refreshToken) => DeviceAuthDataSource().refreshToken(
                            RefreshTokenRequest(refreshToken: refreshToken!),
                          ),
                        );
                  }
                },
              );
            }
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
