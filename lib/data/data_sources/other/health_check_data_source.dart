import 'package:danuri_flutter/data/models/other/health_check/status_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HealthCheckDataSource {
  final String baseUrl = dotenv.env['API_URL']!;
  final dio = AppDio.getInstance();

  Future<StatusResponse> getStatus() async {
    final response = await dio.get('$baseUrl/health');
    return StatusResponse.fromJson(response.data);
  }
}
