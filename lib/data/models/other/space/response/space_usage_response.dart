import 'package:danuri_flutter/data/models/other/space/response/space_usage_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_usage_response.freezed.dart';
part 'space_usage_response.g.dart';

@freezed
abstract class SpaceUsageResponse with _$SpaceUsageResponse{
  factory SpaceUsageResponse({
    required bool isUsingSpace,
    required SpaceUsageInfoResponse spaceUsageInfo,
  }) = _SpaceUsageResponse;

  factory SpaceUsageResponse.fromJson(Map<String, dynamic> json) => _$SpaceUsageResponseFromJson(json);
}