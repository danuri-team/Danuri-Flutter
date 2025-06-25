import 'package:json_annotation/json_annotation.dart';

part 'rented_item_response.g.dart';

@JsonSerializable()
class RentedItemResponse {
  final String id; //rentalId
  @JsonKey(name: 'item_id')
  final String itemId;
  @JsonKey(name: 'item_name')
  final String itemName;
  final int quantity;
  @JsonKey(name: 'borrowed_at')
  final String borrowedAt;
  @JsonKey(name: 'returned_quantity')
  final int returnedQuantity;

  RentedItemResponse({
    required this.id, //rentalId
    required this.itemId,
    required this.itemName,
    required this.quantity,
    required this.borrowedAt,
    required this.returnedQuantity,
  });

  factory RentedItemResponse.fromJson(Map<String, dynamic> json) =>
      _$RentedItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RentedItemResponseToJson(this);
}
