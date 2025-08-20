import 'package:danuri_flutter/core/provider/item_id_provider.dart';
import 'package:danuri_flutter/core/provider/rental_id_provider.dart';
import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ItemRentalViewModel {
  final _dataSource = ItemRentalDataSource();

  bool? _error;
  bool? get error => _error;

  void reset() {
    _error = false;
  }

  Future<void> itemRental(
      BuildContext context, int quantity, String usageId) async {
    try {
      final String itemId = context.read<ItemIdProvider>().itemId;
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
      )
          .then(
        (rentedItem) {
          context.read<RentalIdProvider>().addRentalId(rentedItem.id);
        },
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
