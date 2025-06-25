import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/models/enum/age_type.dart';
import 'package:danuri_flutter/data/models/enum/sex_type.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/sign_up_request.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/response/user_info_response.dart';
import 'package:dio/dio.dart';

class SignUpViewModel {
  final UserAuthDataSource _dataSource = UserAuthDataSource();

  UserInfoResponse? _userInfo;
  UserInfoResponse? get userInfo => _userInfo;

  bool? _error;
  bool? get error => _error;

  Future<void> signUp(String companyId, String userName, String phoneNumber, SexType sex,
      AgeType age) async {
    try {
      _userInfo = await _dataSource.signUp(
        SignUpRequest(
          companyId: companyId,
          name: userName,
          phone: phoneNumber,
          sex: sex.name as SexType,
          age: age.name as AgeType,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
