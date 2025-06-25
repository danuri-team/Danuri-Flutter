import 'package:danuri_flutter/data/data_sources/other/other_data_source.dart';
import 'package:danuri_flutter/data/models/other/health_check/status_response.dart';

class HealthCheckDataSource extends OtherDataSource{
  Future<StatusResponse> getStatus() async {
    final response = await dio.get('$baseUrl/health');
    return StatusResponse.fromJson(response.data);
  }
}
