import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:dio/dio.dart';

class HelpRequestDataSource extends DataSource {
  Future<void> helpRequest() async {
    await dio.get(
      '$baseUrl/help',
      options: Options(
        headers: {'Authorization': 'Bearer ${await userToken}'},
      ),
    );
  }
}
