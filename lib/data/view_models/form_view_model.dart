import 'package:danuri_flutter/data/data_sources/other/form_data_source.dart';
import 'package:danuri_flutter/data/models/other/form/request/form_request.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:dio/dio.dart';

class FormViewModel {
  final _dataSource = FormDataSource();

  FormResponse? _form;
  FormResponse? get form => _form;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> getForm() async {
    try {
      _form = await _dataSource.getForm();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> inputForm(FormRequest request) async {
    try {
      await _dataSource.inputForm(request: request);
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
