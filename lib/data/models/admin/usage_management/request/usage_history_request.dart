import 'package:json_annotation/json_annotation.dart';

part 'usage_history_request.g.dart';

@JsonSerializable()
class UsageHistoryRequest {
  @JsonKey(name: 'start_date')
  final String startDate;
  @JsonKey(name: 'end_date')
  final String endDate;
  @JsonKey(name: 'space_id')
  String? spaceId;
  @JsonKey(name: 'user_id')
  String? userId;

  UsageHistoryRequest({
    required this.startDate,
    required this.endDate,
    this.spaceId,
    this.userId,
  });

  factory UsageHistoryRequest.fromJson(Map<String, dynamic> json) =>
      _$UsageHistoryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsageHistoryRequestToJson(this);
}
