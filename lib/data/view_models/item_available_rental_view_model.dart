import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:dio/dio.dart';

class ItemAvailableRentalViewModel {
  final ItemRentalDataSource _itemDataSource = ItemRentalDataSource();

  List<ItemAvailableRental>? _itemAvailableRentalList;
  List<ItemAvailableRental>? get itemAvailableRentalList => _itemAvailableRentalList;

  bool? _error;
  bool? get error => _error;

  Future<void> getItemAvailableRental() async {
    try {
      _itemAvailableRentalList = await _itemDataSource.getItemAvailableRental();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
