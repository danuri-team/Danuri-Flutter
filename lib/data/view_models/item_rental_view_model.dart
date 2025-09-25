import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ItemViewModel {
  final _dataSource = ItemRentalDataSource();

  List<ItemAvailableRental>? _itemAvailableRentalList;
  List<ItemAvailableRental>? get itemAvailableRentalList =>
      _itemAvailableRentalList;

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> getItemAvailableRental() async {
    try {
      _itemAvailableRentalList = await _dataSource.getItemAvailableRental();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> itemRental(
      {required BuildContext context,
      required String itemId,
      required int quantity,
      required String usageId}) async {
    try {
      await _dataSource.itemRental(
        RentalItemRequest(
          itemId: itemId,
          quantity: quantity,
          usageId: usageId,
        ),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> returnItem({required String usageId}) async {
    try {
      await _dataSource.returnItem(UsageIdRequest(usageId: usageId));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
