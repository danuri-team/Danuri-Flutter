import 'package:danuri_flutter/data/models/admin/admin_device_management/request/create_internal_device_request.dart';
import 'package:danuri_flutter/data/models/admin/admin_device_management/response/all_internal_device_response.dart';
import 'package:danuri_flutter/data/models/admin/admin_device_management/response/internal_specific_device_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class AdminDeviceManagementDataSource {
  final dio = AppDio.getInstance();

  Future<void> createInternalDevice(CreateInternalDeviceRequest request) async {
    await dio.post(
      '$baseUrl/admin/devices',
      data: request.toJson(),
    );
  }

  Future<AllInternalDeviceResponse> getAllInternalDevice() async {
    final response = await dio.get('$baseUrl/admin/devices');
    return AllInternalDeviceResponse.fromJson(response.data);
  }

  Future<InternalSpecificDeviceResponse> getInternalSpecificDevice(String deviceId) async {
    final response = await dio.get('$baseUrl/admin/devices/$deviceId');
    return InternalSpecificDeviceResponse.fromJson(response.data);
  }

  Future<void> deleteSpecificInternalDevice(String deviceId) async {
    await dio.delete('$baseUrl/admin/devices/$deviceId');
  }

  Future<InternalSpecificDeviceResponse> updateInternalSpecificDevice(String deviceId) async {
    final response = await dio.put('$baseUrl/admin/devices/$deviceId');
    return InternalSpecificDeviceResponse.fromJson(response.data);
  }
}