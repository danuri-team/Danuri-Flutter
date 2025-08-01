import 'package:json_annotation/json_annotation.dart';

part 'available_items_response.g.dart';

@JsonSerializable()
class ItemAvailableRental {
  final String id;
  final String name;
  @JsonKey(name: 'available_quantity')
  final int availableQuantity;

  ItemAvailableRental({
    required this.id,
    required this.name,
    required this.availableQuantity,
  });

  factory ItemAvailableRental.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailableRentalFromJson(json);

  Map<String, dynamic> toJson() => _$ItemAvailableRentalToJson(this);
}
