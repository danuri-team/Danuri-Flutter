import 'package:danuri_flutter/data/models/enum/status_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_response.freezed.dart';
part 'item_response.g.dart';

@freezed
abstract class ItemResponse with _$ItemResponse{
  factory ItemResponse({
    required String id,
    required String name,
    required int total_quantity,
    required int available_quantity,
    required StatusType status
  }) = _ItemResponse;

  factory ItemResponse.fromJson(Map<String, dynamic> json) => _$ItemResponseFromJson(json);
}