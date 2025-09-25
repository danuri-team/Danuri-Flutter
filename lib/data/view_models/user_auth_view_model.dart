import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/common/request/phone_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:dio/dio.dart';

class UserAuthViewModel {
  final _dataSource = UserAuthDataSource();

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> signUp({
    required String companyId,
    required String phone,
  }) async {
    try {
      await _dataSource.signUp(
        SignUpRequest(
          companyId: companyId,
          phone: phone,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> userLogin({required String phone}) async {
    try {
      await _dataSource.login(
        PhoneRequest(phone: phone),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> authCodeLogin(
      {required String phone, required String authCode}) async {
    try {
      await _dataSource.authCodeLogin(
        AuthCodeLoginRequest(
          phone: phone,
          authCode: authCode,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
