import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/other/common/request/usage_id_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/rented_item_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';

class ItemRentalDataSource {
  final dio = AppDio.getInstance();
  final tokenStorage = TokenStorage();

  Future<List<ItemAvailableRental>> getItemAvailableRental() async {
    final response = await dio.get(
      '/item',
      options: Options(headers: {
        'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'
      }),
    );
    final result = response.data as List;
    return result.map((data) => ItemAvailableRental.fromJson(data)).toList();
  }

  Future<RentedItemResponse> itemRental(RentalItemRequest request) async {
    final response = await dio.post(
      '/item',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'
      }),
    );
    return RentedItemResponse.fromJson(response.data);
  }

  Future<void> returnItem(UsageIdRequest request) async {
    await dio.delete(
      '/item',
      data: request.toJson(),
      options: Options(headers: {
        'Authorization': 'Bearer ${await tokenStorage.getDeviceAccessToken()}'
      }),
    );
  }
}
