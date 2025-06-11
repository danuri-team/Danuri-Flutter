import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_rental_request.freezed.dart';
part 'item_rental_request.g.dart';

@freezed
abstract class ItemRentalRequest with _$ItemRentalRequest{
  factory ItemRentalRequest({
    required String itemId,
    required int quantity,
  }) = _ItemRentalRequest;

  factory ItemRentalRequest.fromJson(Map<String, dynamic> json) => _$ItemRentalRequestFromJson(json);
}