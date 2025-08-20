import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/common/request/auth_code_login_request.dart';
import 'package:danuri_flutter/data/models/auth/common/request/phone_request.dart';
import 'package:danuri_flutter/data/models/auth/common/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:dio/dio.dart';

class UserAuthViewModel {
  final _dataSource = UserAuthDataSource();

  // TokensResponse? _token;
  // TokensResponse? get token => _token;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> signUp(String companyId, String userName, String phoneNumber,
      SexType sex, AgeType age) async {
    try {
      await _dataSource.signUp(
        SignUpRequest(
          companyId: companyId,
          name: userName,
          phone: phoneNumber,
          sex: sex.name,
          age: age.name,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> userLogin(String phoneNumber) async {
    try {
      await _dataSource.login(
        PhoneRequest(phone: phoneNumber),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> authCodeLogin(String phoneNumber, String authCode) async {
    try {
      await _dataSource.authCodeLogin(
        AuthCodeLoginRequest(
          phone: phoneNumber,
          authCode: authCode,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}