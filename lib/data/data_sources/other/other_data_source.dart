import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class OtherDataSource {
  final dio = AppDio.getInstance();
  final baseUrl = dotenv.env['API_URL']!;
  final deviceToken = TokenStorage().getDeviceToken();
  final userToken = TokenStorage().getUserToken();

}