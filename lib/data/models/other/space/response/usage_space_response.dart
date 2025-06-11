import 'package:danuri_flutter/data/models/other/space/response/space_usage_info_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_space_response.freezed.dart';
part 'usage_space_response.g.dart';

@freezed
abstract class UsageSpaceResponse with _$UsageSpaceResponse{
  factory UsageSpaceResponse({
    required bool isUsingSpace,
    required SpaceUsageInfoResponse spaceUsageInfo,
  }) = _UsageSpaceResponse;

  factory UsageSpaceResponse.fromJson(Map<String, dynamic> json) => _$UsageSpaceResponseFromJson(json);
}