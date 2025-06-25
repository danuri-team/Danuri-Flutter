import 'package:danuri_flutter/data/data_sources/other/item_rental_data_source.dart';
import 'package:danuri_flutter/data/data_sources/other/space_data_source.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/rented_item_response.dart';
import 'package:danuri_flutter/data/models/other/space/response/space_usage_response.dart';
import 'package:dio/dio.dart';

class ItemRentalViewModel {
  final ItemRentalDataSource _itemDataSource = ItemRentalDataSource();
  final SpaceDataSource _spaceDataSource = SpaceDataSource();

  RentedItemResponse? _rentedItem;
  RentedItemResponse? get rentedItem => _rentedItem;

  List<ItemAvailableRental>? _itemAvailableRental;
  List<ItemAvailableRental>? get itemAvailableRental => _itemAvailableRental;

  SpaceUsageResponse? _spaceUsage;
  SpaceUsageResponse? get spaceUsage => _spaceUsage;

  bool? _error;
  bool? get error => _error;

  Future<void> itemRental(String usageId, String itemId, int quantity) async {
    try {
      _rentedItem = await _itemDataSource.itemRental(
        usageId,
        RentalItemRequest(itemId: itemId, quantity: quantity),
      );
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> getItemAvailableRent() async {
    try {
      _itemAvailableRental = await _itemDataSource.getItemAvailableRental();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }

  Future<void> getUsageSpace() async {
    try {
      _spaceUsage = await _spaceDataSource.getUsageSpace();
      _error = false;
    } on DioException catch (_) {
      _error = true;
    }
  }
}
