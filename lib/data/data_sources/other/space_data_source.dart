import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_response.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:dio/dio.dart';

class SpaceDataSource extends DataSource {
  Future<SpaceUsageResponse> getUsageSpace() async {
    final response = await dio.get(
      '$baseUrl/usage',
      options: Options(headers: {'Authorization': 'Bearer ${await userToken}'}),
    );
    return SpaceUsageResponse.fromJson(response.data);
  }

  Future<List<SpaceUsageStatusResponse>> getSpaceUsageStatus() async {
    final response = await dio.get(
      '$baseUrl/space',
      options:
          Options(headers: {'Authorization': 'Bearer ${await deviceToken}'}),
    );
    final result = response.data as List;
    return result
        .map((data) => SpaceUsageStatusResponse.fromJson(data))
        .toList();
  }

  Future<void> registerUsedSpace(RegisterUsedSpaceRequest request) async {
    await dio.post(
      '$baseUrl/usage?spaceId=${request.spaceId}',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await userToken}'}),
    );
  }

  Future leavingSpace(UsageIdRequest request) async {
    await dio.delete(
      '$baseUrl/usage',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await deviceToken}'}),
    );
  }
}
