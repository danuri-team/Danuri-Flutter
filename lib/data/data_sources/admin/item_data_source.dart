import 'package:danuri_flutter/data/data_sources/data_source.dart';
import 'package:danuri_flutter/data/models/admin/item/request/create_item_request.dart';
import 'package:danuri_flutter/data/models/admin/item/request/update_item_request.dart';
import 'package:danuri_flutter/data/models/admin/item/resopnse/item_response.dart';

class ItemDataSource extends DataSource{

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

  Future<List<ItemResponse>> getInternalItem() async {
    final response = await dio.get('$baseUrl/admin/items');
    final result = response.data as List;
    return result.map((data) => ItemResponse.fromJson(response.data)).toList();
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
