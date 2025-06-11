import 'package:danuri_flutter/data/models/admin/item/request/create_item_request.dart';
import 'package:danuri_flutter/data/models/admin/item/request/update_item_request.dart';
import 'package:danuri_flutter/data/models/admin/item/resopnse/item_response.dart';
import 'package:danuri_flutter/network/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final String baseUrl = dotenv.env['API_URL']!;

class ItemDataSource {
  final dio = AppDio.getInstance();

  Future<ItemResponse> createItem(CreateItemRequest request) async {
    final result = await dio.post(
      '$baseUrl/admin/items',
      data: request.toJson(),
    );
    return ItemResponse.fromJson(result.data);
  }

  Future<ItemResponse> getItem(String itemId) async {
    final response = await dio.get('$baseUrl/admin/items/$itemId');
    return ItemResponse.fromJson(response.data);
  }

  Future<ItemResponse> updateItem(
      String itemId, UpdateItemRequest request) async {
    final response = await dio.put(
      '$baseUrl/admin/items/$itemId',
      data: request.toJson(),
    );
    return ItemResponse.fromJson(response.data);
  }

  Future<void> deleteItem(String itemId) async {
    await dio.delete('$baseUrl/admin/items/$itemId');
  }
}
