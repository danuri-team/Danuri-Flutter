import 'package:danuri_flutter/data/data_sources/auth/device_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/device_auth/device_auth_request.dart';
import 'package:dio/dio.dart';

class OrganAuthViewModel {
  final DeviceAuthDataSource _dataSource = DeviceAuthDataSource();

  bool? _error;
  bool? get error => _error;

  Future<void> deviceAuth(String deviceId) async {
    try {
      await _dataSource.deviceAuth(
        DeviceAuthRequest(deviceId: deviceId),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
