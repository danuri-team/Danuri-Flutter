import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/enum/token_type.dart';
import 'package:danuri_flutter/data/view_models/common_view_model.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

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
            Sentry.captureException(error);
            if (error.response?.statusCode == 500) {
              final tokenStorage = TokenStorage();
              final viewModel = CommonViewModel();

              int nowTime = DateTime.now().millisecondsSinceEpoch;

              final deviceAccessTokenExpiredAt =
                  await tokenStorage.getDeviceAccessTokenExpiredAt();

              if (nowTime > int.parse(deviceAccessTokenExpiredAt!)) {
                final refreshToken = await tokenStorage.getDeviceRefreshToken();
                await viewModel.refreshToken(
                  refreshToken: refreshToken!,
                  tokenType: TokenType.DEVICE,
                );
                final dio = AppDio.getInstance();
                final deviceToken = await TokenStorage().getDeviceAccessToken();
                final options = error.requestOptions;
                options.headers
                    .addAll({'Authorization': 'Bearer $deviceToken'});
                final response = await dio.fetch(options);
                return handler.resolve(response);
              }
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
