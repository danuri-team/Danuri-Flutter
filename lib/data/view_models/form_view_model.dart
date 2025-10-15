import 'package:danuri_flutter/data/data_sources/other/form_data_source.dart';
import 'package:danuri_flutter/data/models/other/form/request/form_request.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:dio/dio.dart';

class FormViewModel {
  final FormDataSource dataSource = FormDataSource();

  FormResponse? _form;
  FormResponse? get form => _form;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> getForm() async {
    try {
      _form = await dataSource.getForm();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> inputForm({required String schema}) async {
    try {
      await dataSource.inputForm(request: FormRequest(result: schema));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
