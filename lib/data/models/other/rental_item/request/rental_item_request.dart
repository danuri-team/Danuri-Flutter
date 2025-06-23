import 'package:freezed_annotation/freezed_annotation.dart';

part 'rental_item_request.freezed.dart';
part 'rental_item_request.g.dart';

@freezed
abstract class RentalItemRequest with _$RentalItemRequest{
  factory RentalItemRequest({
    required String item_id,
    required int quantity,
  }) = _RentalItemRequest;

  factory RentalItemRequest.fromJson(Map<String, dynamic> json) => _$RentalItemRequestFromJson(json);
}