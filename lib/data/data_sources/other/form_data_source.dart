import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/other/form/request/form_request.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:dio/dio.dart';

class FormDataSource extends DataSource {
  Future<FormResponse> getForm() async {
    final response = await dio.get(
      '/form',
      options:
          Options(headers: {'Authorization': 'Bearer ${await deviceToken}'}),
    );
    return FormResponse.fromJson(response.data);
  }

  Future<void> inputForm({required FormRequest request}) async {
    await dio.post(
      '/form',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await userToken}'}),
    );
  }
}
