import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/other/form/request/form_request.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';

class FormDataSource{
  final dio = AppDio.getInstance();
  final tokenStorage = TokenStorage();
  
  Future<FormResponse> getForm() async {
    final response = await dio.get(
      '/form',
      options:
          Options(headers: {'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'}),
    );
    return FormResponse.fromJson(response.data);
  }

  Future<void> inputForm({required FormRequest request}) async {
    await dio.post(
      '/form',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await tokenStorage.getUserAccessToken()}'}),
    );
  }
}
