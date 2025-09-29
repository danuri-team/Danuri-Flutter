import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_response.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';

class SpaceDataSource {
  final dio = AppDio.getInstance();
  final tokenStorage = TokenStorage();
  
  Future<SpaceUsageResponse> getUsageSpace() async {
    final response = await dio.get(
      '/usage',
      options: Options(headers: {'Authorization': 'Bearer ${await tokenStorage.getUserAccessToken()}'}),
    );
    return SpaceUsageResponse.fromJson(response.data);
  }

  Future<List<SpaceUsageStatusResponse>> getSpaceUsageStatus() async {
    final response = await dio.get(
      '/space',
      options:
          Options(headers: {'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'}),
    );
    final result = response.data as List;
    return result
        .map((data) => SpaceUsageStatusResponse.fromJson(data))
        .toList();
  }

  Future<void> registerUsedSpace(RegisterUsedSpaceRequest request) async {  
    await dio.post(
      '/usage?spaceId=${request.spaceId}',
      options: Options(headers: {'Authorization': 'Bearer ${await tokenStorage.getUserAccessToken()}'}),
    );
  }

  Future leavingSpace(UsageIdRequest request) async {
    await dio.delete(
      '/usage',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'}),
    );
  }
}
