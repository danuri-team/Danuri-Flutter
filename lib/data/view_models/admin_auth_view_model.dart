import 'package:danuri_flutter/data/data_sources/auth/admin_auth_data_source.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/request/admin_login_request.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AdminAuthViewModel {
  final _dataSource = AdminAuthDataSource();

  Future<void> adminLogin() async {
    await _dataSource.adminLogin(
      AdminLoginRequest(
          email: dotenv.env['ADMIN_EMAIL']!,
          password: dotenv.env['ADMIN_PASSWORD']!),
    );
  }
}
