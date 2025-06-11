import 'package:danuri_flutter/data/models/admin/space_management/request/create_space_request.dart';
import 'package:danuri_flutter/data/models/admin/space_management/request/update_space_request.dart';
import 'package:danuri_flutter/data/models/admin/space_management/response/space_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class SpaceManagementDataSource {
  final dio = AppDio.getInstance();

  Future<CreateSpaceRequest> createSpace(CreateSpaceRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/spaces',
      data: request.toJson(),
    );
    return CreateSpaceRequest.fromJson(response.data);
  }

  Future<SpaceResponse> getSpace(String spaceId) async {
    final response = await dio.get('$baseUrl/admin/spaces/$spaceId');
    return SpaceResponse.fromJson(response.data);
  }

  Future<List<SpaceResponse>> getInternalSpace() async {
    final response = await dio.get('$baseUrl/admin/spaces');
    final result = response.data as List;
    return result.map((data) => SpaceResponse.fromJson(data)).toList();
  }

  Future<UpdateSpaceRequest> updateSpace(
      String spaceId, UpdateSpaceRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/spaces/$spaceId',
      data: request.toJson(),
    );
    return UpdateSpaceRequest.fromJson(response.data);
  }

  Future<void> deleteSpace(String spaceId) async {
    await dio.delete('$baseUrl/admin/spaces/$spaceId');
  }
}