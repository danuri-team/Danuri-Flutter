import 'package:json_annotation/json_annotation.dart';

part 'rental_item_request.g.dart';

@JsonSerializable()
class RentalItemRequest {
  @JsonKey(name: 'item_id')
  final String itemId;
  final int quantity;
  @JsonKey(name: 'usage_id')
  final String usageId;

  RentalItemRequest({
    required this.itemId,
    required this.quantity,
    required this.usageId,
  });

  factory RentalItemRequest.fromJson(Map<String, dynamic> json) =>
      _$RentalItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RentalItemRequestToJson(this);
}
