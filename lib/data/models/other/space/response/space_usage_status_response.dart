import 'package:danuri_flutter/data/models/other/space/response/space_usage_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_usage_status_response.freezed.dart';
part 'space_usage_status_response.g.dart';

@freezed
abstract class SpaceUsageStatusResponse with _$SpaceUsageStatusResponse{
  factory SpaceUsageStatusResponse({
    required List<SpaceUsageStatus> spaceUsageStatus,
  }) = _SpaceUsageStatusResponse;

  factory SpaceUsageStatusResponse.fromJson(Map<String, dynamic> json) => _$SpaceUsageStatusResponseFromJson(json);
}