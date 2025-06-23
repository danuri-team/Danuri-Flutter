import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/return_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/rented_item_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class ItemRentalDataSource {
  final String baseUrl = dotenv.env['API_URL']!;
  final dio = AppDio.getInstance();

  Future<List<ItemAvailableRental>> getItemAvailableRental() async {
    final response = await dio.get('$baseUrl/item');
    final result = response.data as List;
    return result.map((data) => ItemAvailableRental.fromJson(data)).toList();
  }

  Future<RentedItemResponse> itemRental(
      String usageId, RentalItemRequest request) async {
    final response = await dio.post(
      '$baseUrl/item/$usageId/rental',
      data: request.toJson(),
    );
    return RentedItemResponse.fromJson(response.data);
  }

  Future<void> returnItem(String rentalId, ReturnItemRequest request) async {
    await dio.post(
      '$baseUrl/item/$rentalId/return',
      data: request.toJson(),
    );
  }
}
