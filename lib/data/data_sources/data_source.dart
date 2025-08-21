import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/network/dio.dart';

abstract class DataSource {
  final dio = AppDio.getInstance();
  final adminToken = TokenStorage().getAdminAccessToken();
  final deviceToken = TokenStorage().getDeviceAccessToken();
  final userToken = TokenStorage().getUserAccessToken();

}