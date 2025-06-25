import 'package:json_annotation/json_annotation.dart';

part 'rental_item_request.g.dart';

@JsonSerializable()
class RentalItemRequest {
  @JsonKey(name: 'item_id')
  final String itemId;
  final int quantity;

  RentalItemRequest({
    required this.itemId,
    required this.quantity,
  });

  factory RentalItemRequest.fromJson(Map<String, dynamic> json) =>
      _$RentalItemRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RentalItemRequestToJson(this);
}
