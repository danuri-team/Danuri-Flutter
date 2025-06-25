import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:dio/dio.dart';

class RegisterUsedSpaceViewModel {
  final SpaceDataSource _dataSource = SpaceDataSource();

  List<SpaceUsageStatusResponse>? _spaceUsageStatus;
  List<SpaceUsageStatusResponse>? get spaceUsageStatus => _spaceUsageStatus;

  bool? _error;
  bool? get error => _error;

  Future<void> registerUsedSpace(String spaceId) async {
    try {
      await _dataSource.registerUsedSpace(
        RegisterUsedSpaceRequest(spaceId: spaceId),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
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
