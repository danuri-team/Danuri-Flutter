import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/user_login_request.dart';
import 'package:dio/dio.dart';

class LoginViewModel {
  final UserAuthDataSource _dataSource = UserAuthDataSource();

  bool? _error;
  bool? get error => _error;

  Future<void> userLogin(String phoneNumber) async {
    try {
      await _dataSource.login(
        UserLoginRequest(phone: phoneNumber),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
