import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:dio/dio.dart';

class HomeViewModel {
  final SpaceDataSource _spaceDataSource = SpaceDataSource();

  bool? _error;
  bool? get error => _error;

  Future<void> exitRoom() async {
    try {
      await _spaceDataSource.exitRoom();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
