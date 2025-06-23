import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_usage_status_response.freezed.dart';
part 'space_usage_status_response.g.dart';

@freezed
abstract class SpaceUsageStatusResponse with _$SpaceUsageStatusResponse{
  factory SpaceUsageStatusResponse({
    required String space_id,
    required String name,
    required List<int> start_at,
    required List<int> end_at,
    required bool is_available,
  }) = _SpaceUsageStatusResponse;

  factory SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) => _$SpaceUsageStatusResponseFromJson(json);
}