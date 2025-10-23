import 'package:danuri_flutter/data/data_sources/other/form_data_source.dart';
import 'package:danuri_flutter/data/models/other/form/request/form_request.dart';
import 'package:danuri_flutter/data/models/other/form/response/form_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final formViewModelProvider = ChangeNotifierProvider(
  (_) => FormViewModel(),
);

class FormViewModel extends ChangeNotifier{
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
    notifyListeners();
  }

  Future<void> inputForm({required String form}) async {
    try {
      await dataSource.inputForm(request: FormRequest(result: form));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
