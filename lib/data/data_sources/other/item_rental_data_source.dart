import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/rented_item_response.dart';
import 'package:dio/dio.dart';

class ItemRentalDataSource extends DataSource {
  Future<List<ItemAvailableRental>> getItemAvailableRental() async {
    final response = await dio.get(
      '$baseUrl/item',
      options:
          Options(headers: {'Authorization': 'Bearer ${await deviceToken}'}),
    );
    final result = response.data as List;
    return result.map((data) => ItemAvailableRental.fromJson(data)).toList();
  }

  Future<RentedItemResponse> itemRental(RentalItemRequest request) async {
    final response = await dio.post(
      '$baseUrl/item',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await deviceToken}'}),
    );
    return RentedItemResponse.fromJson(response.data);
  }

  Future<void> returnItem(UsageIdRequest request) async {
    await dio.delete(
      '$baseUrl/item',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer ${await deviceToken}'}),
    );
  }
}
