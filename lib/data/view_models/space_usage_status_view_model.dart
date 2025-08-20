import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:dio/dio.dart';

class SpaceUsageStatusViewModel {
  final _dataSource = SpaceDataSource();

  List<SpaceUsageStatusResponse>? _spaceUsageStatus;
  List<SpaceUsageStatusResponse>? get spaceUsageStatus => _spaceUsageStatus;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> getSpaceUsageStatus() async {
    try {
      _spaceUsageStatus = await _dataSource.getSpaceUsageStatus();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}