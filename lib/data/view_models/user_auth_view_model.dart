import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/common/request/phone_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class UserAuthViewModel extends ChangeNotifier {
  final UserAuthDataSource dataSource = UserAuthDataSource();

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> signUpAndLogin({required String phone}) async {
    try {
      await dataSource.signUp(
        SignUpRequest(phone: phone),
      );
      await dataSource.login(
        PhoneRequest(phone: phone),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
    notifyListeners();
  }

  Future<void> signUp({required String phone}) async {
    try {
      await dataSource.signUp(
        SignUpRequest(phone: phone),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
    notifyListeners();
  }

  Future<void> userLogin({required String phone}) async {
    try {
      await dataSource.login(
        PhoneRequest(phone: phone),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
    notifyListeners();
  }

  Future<void> authCodeLogin(
      {required String phone, required String authCode}) async {
    try {
      await dataSource.authCodeLogin(
        AuthCodeLoginRequest(
          phone: phone,
          authCode: authCode,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
    notifyListeners();  
  }
}
