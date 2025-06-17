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
          onRequest: (options, handler) {
            options.headers['Authorization'] = 'Bearer eyJhbGciOiJIUzM4NCJ9.eyJzdWIiOiIzMzM0NjIzOS02MzM2LTMyNjYtMmQ2My02MTY1NjYyZDM0NjYiLCJyb2xlIjoiUk9MRV9ERVZJQ0UiLCJpYXQiOjE3NTAxNDY4NTUsImV4cCI6MTc1MDE0ODY1NX0.hJnz1c7RZ00Mn0fpfGlQFNMHLMSbOBeEtXFzWXfBuZCwYzJPtZL3nVhLtZCJ5PXL';
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
