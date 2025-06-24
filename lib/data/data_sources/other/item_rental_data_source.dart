import 'package:danuri_flutter/core/storage/token_storage.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/return_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/rented_item_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ItemRentalDataSource {
  final String baseUrl = dotenv.env['API_URL']!;
  final dio = AppDio.getInstance();

  final deviceToken = TokenStorage().getDeviceToken();
  final userToken = TokenStorage().getUserToken();

  Future<List<ItemAvailableRental>> getItemAvailableRental() async {
    final response = await dio.get(
      '$baseUrl/item',
      options: Options(headers: {'Authorization': 'Bearer $deviceToken'}),
    );
    final result = response.data as List;
    return result.map((data) => ItemAvailableRental.fromJson(data)).toList();
  }

  Future<RentedItemResponse> itemRental(
      String usageId, RentalItemRequest request) async {
    final response = await dio.post(
      '$baseUrl/item/$usageId/rental',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer $userToken'}),
    );
    return RentedItemResponse.fromJson(response.data);
  }

  Future<void> returnItem(String rentalId, ReturnItemRequest request) async {
    await dio.post(
      '$baseUrl/item/$rentalId/return',
      data: request.toJson(),
      options: Options(headers: {'Authorization': 'Bearer $userToken'}),
    );
  }
}
