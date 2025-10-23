import 'package:danuri_flutter/data/data_sources/auth/device_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final deviceAuthViewModelProvider = Provider(
  (_) => DeviceAuthViewModel(),
);

class DeviceAuthViewModel{
  final DeviceAuthDataSource dataSource = DeviceAuthDataSource();

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> deviceAuth({required String code}) async {
    try {
      await dataSource.deviceAuth(
        DeviceAuthRequest(code: code),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
