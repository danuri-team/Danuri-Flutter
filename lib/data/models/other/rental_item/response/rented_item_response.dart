import 'package:freezed_annotation/freezed_annotation.dart';

part 'rented_item_response.freezed.dart';
part 'rented_item_response.g.dart';

@freezed
abstract class RentedItemResponse with _$RentedItemResponse {
  factory RentedItemResponse({
    required String id, //rentalId
    required String item_id,
    required String item_name,
    required int quantity,
    required String borrowed_at,
    required int returned_quantity,
  }) = _RentedItemResponse;

  factory RentedItemResponse.fromJson(Map<String, dynamic> json) =>
      _$RentedItemResponseFromJson(json);
}
