import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_response.freezed.dart';
part 'item_response.g.dart';

@freezed
abstract class ItemResponse with _$ItemResponse{
  factory ItemResponse({
    required String id,
    required String companyId,
    required String companyName,
    required String name,
    required int totalQuantity,
    required int availableQuantity,
    required String status
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) => _$ItemResponseFromJson(json);
}