import 'package:json_annotation/json_annotation.dart';

part 'usage_history_response.g.dart';

@JsonSerializable()
class UsageHistoryResponse{
final String id;
@JsonKey(name: 'user_id')
    final String userId;
    @JsonKey(name: 'user_name')
    final String userName;
    @JsonKey(name: 'user_phone')
    final String userPhone;
    @JsonKey(name: 'space_id')
    final String spaceId;
    @JsonKey(name: 'space_name')
    final String spaceName;
    @JsonKey(name: 'start_at')
    final String startAt;
    @JsonKey(name: 'end_at')
    final String endAt;
    @JsonKey(name: 'rental_count')
    final int rentalCount;

  UsageHistoryResponse({
    required this.id,
    required this.userId,
    required this.userName,
    required this.userPhone,
    required this.spaceId,
    required this.spaceName,
    required this.startAt,
    required this.endAt,
    required this.rentalCount,
  });

  factory UsageHistoryResponse.fromJson(Map<String, dynamic> json) => _$UsageHistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UsageHistoryResponseToJson(this);
}