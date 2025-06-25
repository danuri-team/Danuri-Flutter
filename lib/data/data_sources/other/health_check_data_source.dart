import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/other/health_check/status_response.dart';

class HealthCheckDataSource extends DataSource{
  Future<StatusResponse> getStatus() async {
    final response = await dio.get('$baseUrl/health');
    return StatusResponse.fromJson(response.data);
  }
}
