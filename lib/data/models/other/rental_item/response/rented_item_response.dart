import 'package:json_annotation/json_annotation.dart';

part 'rented_item_response.g.dart';

@JsonSerializable()
class RentedItemResponse {
  @JsonKey(name: 'item_id')
  final String itemId;
  @JsonKey(name: 'item_name')
  final String itemName;
  final int quantity;
  @JsonKey(name: 'borrowed_at')
  final String borrowedAt;

  RentedItemResponse({
    required this.itemId,
    required this.itemName,
    required this.quantity,
    required this.borrowedAt,
  });

  factory RentedItemResponse.fromJson(Map<String, dynamic> json) =>
      _$RentedItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RentedItemResponseToJson(this);
}
