import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_items_response.freezed.dart';
part 'available_items_response.g.dart';

@freezed
abstract class ItemAvailableRental with _$ItemAvailableRental {
  factory ItemAvailableRental({
    required String id,
    required String name,
    required int available_quantity,
  }) = _ItemAvailableRental;

  factory ItemAvailableRental.fromJson(Map<String, dynamic> json) =>
      _$ItemAvailableRentalFromJson(json);
}
