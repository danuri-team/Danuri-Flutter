import 'package:danuri_flutter/data/models/other/rental_item/request/rental_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/request/return_item_request.dart';
import 'package:danuri_flutter/data/models/other/rental_item/response/available_items_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class ItemRentalDataSource {
  final dio = AppDio.getInstance();

  Future<AvailableItemsResponse> getRentalAvailableItem() async{
    final response = await dio.get('$baseUrl/item');
    return AvailableItemsResponse.fromJson(response.data);
  }

  Future<void> rentalItem(String usageId, RentalItemRequest request) async {
    await dio.post(
      '$baseUrl/item/$usageId/rental',
      data: request.toJson(),
    );
  }

  Future<void> returnItem(String rentalId, ReturnItemRequest request) async {
    await dio.post(
      '$baseUrl/item/rentalId/return',
      data: request.toJson(),
    );
  }
}