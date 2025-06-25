import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/admin/space_management/request/space_request.dart';
import 'package:danuri_flutter/data/models/admin/space_management/response/space_response.dart';

class SpaceManagementDataSource extends DataSource{

  Future<SpaceResponse> createSpace(SpaceRequest request) async {
    final response = await dio.post(
      '$baseUrl/admin/spaces',
      data: request.toJson(),
    );
    return SpaceResponse.fromJson(response.data);
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

  Future<SpaceResponse> updateSpace(
      String spaceId, SpaceRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/spaces/$spaceId',
      data: request.toJson(),
    );
    return SpaceResponse.fromJson(response.data);
  }

  Future<void> deleteSpace(String spaceId) async {
    await dio.delete('$baseUrl/admin/spaces/$spaceId');
  }
}