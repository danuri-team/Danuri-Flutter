import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/user_login_request.dart';
import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:dio/dio.dart';

class SignUpViewModel {
  final UserAuthDataSource _dataSource = UserAuthDataSource();

  bool? _error;
  bool? get error => _error;

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

  Future<void> login(String phoneNumber) async {
    try{
    await _dataSource.login(UserLoginRequest(phone: phoneNumber));
      _error = false;
    }on DioException catch(_){
      _error = true;
    }
  }
}
