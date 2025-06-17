import 'package:danuri_flutter/data/models/other/space/reqeust/exit_request.dart';
import 'package:danuri_flutter/data/models/other/space/reqeust/register_used_space_request.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_response.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_status_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class SpaceDataSource {
  final dio = AppDio.getInstance();

  Future<SpaceUsageResponse> getUsageSpace() async{
    final response = await dio.get('$baseUrl/usage');
    return SpaceUsageResponse.fromJson(response.data);
  }

  Future<List<SpaceUsageStatus>> getSpaceUsageStatus() async{
    final response = await dio.get('$baseUrl/space');
    final result = response.data as List;
    return result.map((data) => SpaceUsageStatus.fromJson(data)).toList();
  }

  // Future<SpaceUsageStatusResponse> getSpaceUsageStatus() async{
  //   final response = await dio.get('$baseUrl/space');
  //   return SpaceUsageStatusResponse.fromJson(response.data);
  // }

  Future<void> registerUsedSpace(RegisterUsedSpaceRequest request) async {
    await dio.post(
      '$baseUrl/space',
      data: request.toJson(),
    );
  }

  Future<void> exitRoom(ExitRequest request) async {
    await dio.post(
      '$baseUrl/usage',
      data: request.toJson(),
    );
  }
}