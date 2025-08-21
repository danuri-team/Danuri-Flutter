import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterUsedSpaceViewModel {
  final SpaceDataSource _spaceDataSource = SpaceDataSource();

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> leavingSpace({required String usageId}) async {
    try {
      await _spaceDataSource.leavingSpace(UsageIdRequest(usageId: usageId));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> registerUsedSpace({required BuildContext context, required String spaceId}) async {
    try {
      await _spaceDataSource
          .registerUsedSpace(RegisterUsedSpaceRequest(spaceId: spaceId));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
