import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/admin/admin_device_management/request/create_internal_device_request.dart';
import 'package:danuri_flutter/data/models/admin/admin_device_management/response/internal_device_response.dart';

class  DeviceManagementDataSource extends DataSource{

  Future<void> createInternalDevice(CreateInternalDeviceRequest request) async {
    await dio.post(
      '$baseUrl/admin/devices',
      data: request.toJson(),
    );
  }

  Future<List<InternalDeviceResponse>> getAllInternalDevice() async {
    final response = await dio.get('$baseUrl/admin/devices');
    final result = response.data as List;
    return result.map((data) => InternalDeviceResponse.fromJson(data)).toList();
  }

  Future<InternalDeviceResponse> getInternalSpecificDevice(String deviceId) async {
    final response = await dio.get('$baseUrl/admin/devices/$deviceId');
    return InternalDeviceResponse.fromJson(response.data);
  }

  Future<void> deleteSpecificInternalDevice(String deviceId) async {
    await dio.delete('$baseUrl/admin/devices/$deviceId');
  }

  Future<InternalDeviceResponse> updateInternalSpecificDevice(String deviceId) async {
    final response = await dio.put('$baseUrl/admin/devices/$deviceId');
    return InternalDeviceResponse.fromJson(response.data);
  }
}