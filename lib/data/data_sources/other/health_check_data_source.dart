import 'package:danuri_flutter/data/models/other/health_check/status_response.dart';
import 'package:danuri_flutter/network/dio.dart';

class HealthCheckDataSource{
  final dio = AppDio.getInstance();

  Future<StatusResponse> getStatus() async {
    final response = await dio.get('/health');
    return StatusResponse.fromJson(response.data);
  }
}
