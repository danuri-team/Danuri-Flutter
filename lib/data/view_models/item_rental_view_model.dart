import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ItemRentalViewModel {
  final _dataSource = ItemRentalDataSource();

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> itemRental({
      required BuildContext context, required String itemId, required int quantity, required String usageId}) async {
    try {
      
      // await SpaceDataSource().getUsageSpace().then(
      //   (usageSpace) async {
      //     if (usageSpace.spaceUsageInfo == null) {
      //       _error = true;
      //     } else {
      await _dataSource
          .itemRental(
        RentalItemRequest(
          itemId: itemId,
          quantity: quantity,
          usageId: usageId,
        ),
      );
      _error = false;
      //     }
      //   },
      // );
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> returnItem(String usageId) async {
    try {
      await _dataSource.returnItem(UsageIdRequest(usageId: usageId));
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
