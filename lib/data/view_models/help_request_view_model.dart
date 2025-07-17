import 'package:danuri_flutter/data/data_sources/other/help_request_data_source.dart';
import 'package:dio/dio.dart';

class HelpRequestViewModel {
  final HelpRequestDataSource _dataSource = HelpRequestDataSource();

  bool? _error;
  bool? get error => _error;

  void reset(){
    _error = false;
  }

  Future<void> helpRequest() async{
    try{
      await _dataSource.helpRequest();
      _error = false;
    }on DioException catch(_){
      _error = true;
    }
  }
}