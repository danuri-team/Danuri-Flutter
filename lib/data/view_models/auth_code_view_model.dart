import 'dart:developer';

import 'package:danuri_flutter/data/data_sources/auth/user_auth_data_source.dart';
import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/tokens_response.dart';
import 'package:danuri_flutter/data/models/auth/user_auth/request/auth_code_login_request.dart';
import 'package:dio/dio.dart';

class AuthCodeViewModel {
  final UserAuthDataSource _userAuthdataSource = UserAuthDataSource();
  final SpaceDataSource _spaceDataSource = SpaceDataSource();

  TokensResponse? _token;
  TokensResponse? get token => _token;

  bool? _error;
  bool? get error => _error;

  Future<void> authCodeLogin(String phoneNumber, String authCode) async {
    try {
      _token = await _userAuthdataSource.authCodeLogin(
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

  Future<void> exitRoom() async {
    try {
      await _spaceDataSource.exitRoom();
      _error = false;
    } on DioException catch (e) {
      if (e.response?.statusCode == 404) {
        _error = true;
      }
    }
  }
}
