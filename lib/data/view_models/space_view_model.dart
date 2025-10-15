import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/space_rental_request.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SpaceViewModel {
  final SpaceDataSource dataSource = SpaceDataSource();

  List<SpaceUsageStatusResponse>? _spaceUsageStatus;
  List<SpaceUsageStatusResponse>? get spaceUsageStatus => _spaceUsageStatus;

  String? _usageId;
  String? get usageId => _usageId;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> getUsageSpace() async {
    try {
      final usageSpace = await dataSource.getUsageSpace();
      _usageId = usageSpace.spaceUsageInfo?.usageId;
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> getSpaceUsageStatus() async {
    try {
      _spaceUsageStatus = await dataSource.getSpaceUsageStatus();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> spaceRental({
    required BuildContext context,
    required String spaceId,
    required String startAt,
  }) async {
    try {
      await dataSource
          .spaceRental(SpaceRentalRequest(spaceId: spaceId, startAt: startAt));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> checkOut({required String usageId}) async {
    try {
      await dataSource.checkOut(UsageIdRequest(usageId: usageId));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
