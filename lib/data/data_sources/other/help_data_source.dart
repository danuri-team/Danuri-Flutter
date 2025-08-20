import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:dio/dio.dart';

class HelpDataSource extends DataSource {
  Future<void> help() async {
    await dio.get(
      '$baseUrl/help',
      options: Options(
        headers: {'Authorization': 'Bearer ${await userToken}'},
      ),
    ); 
  }
}
