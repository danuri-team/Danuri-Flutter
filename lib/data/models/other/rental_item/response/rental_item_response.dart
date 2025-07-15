import 'package:json_annotation/json_annotation.dart';

part 'rental_item_response.g.dart';

@JsonSerializable()
class RentalItemResponse {
  @JsonKey(name: 'item_name')
  final String itemName;
  final int quantity;
  @JsonKey(name: 'returned_quantity')
  final int returnedQuantity;

  RentalItemResponse({
    required this.itemName,
    required this.quantity,
    required this.returnedQuantity,
  });

  factory RentalItemResponse.fromJson(Map<String, dynamic> json) => _$RentalItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RentalItemResponseToJson(this);
}