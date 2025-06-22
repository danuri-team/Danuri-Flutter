import 'package:freezed_annotation/freezed_annotation.dart';

part 'space_usage_status.freezed.dart';
part 'space_usage_status.g.dart';

@freezed
abstract class SpaceUsageStatus with _$SpaceUsageStatus{
  factory SpaceUsageStatus({
    String? id,
    required String name,
    List<int>? startAt,
    List<int>? endAt,
    bool? isAvailable,
  }) = _SpaceUsageStatus;

  factory SpaceUsageStatus.fromJson(Map<String, dynamic> json) => _$SpaceUsageStatusFromJson(json);
}