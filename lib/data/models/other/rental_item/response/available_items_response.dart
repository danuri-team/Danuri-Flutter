import 'package:danuri_flutter/data/models/other/rental_item/response/available_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_items_response.freezed.dart';
part 'available_items_response.g.dart';

@freezed
abstract class AvailableItemsResponse with _$AvailableItemsResponse {
  factory AvailableItemsResponse({
    required List<AvailableItem> availableItems,
  }) = _AvailableItemsResponse;

  factory AvailableItemsResponse.fromJson(Map<String, dynamic> json) =>
      _$AvailableItemsResponseFromJson(json);
}
