import 'package:freezed_annotation/freezed_annotation.dart';

part 'detailed_usage_history_response.freezed.dart';
part 'detailed_usage_history_response.g.dart';

@freezed
abstract class DetailedUsageHistoryResponse with _$DetailedUsageHistoryResponse{
  factory DetailedUsageHistoryResponse({
    required String id,
    required String userId,
    required String userName,
    required String userPhone,
    required String spaceId,
    required String spaceName,
    required String companyId,
    required String companyName,
    required String startAt,
    required String endAt,
    required int rentalCount,
  }) = _DetailedUsageHistoryResponse;

  factory DetailedUsageHistoryResponse.fromJson(Map<String, dynamic> json) => _$DetailedUsageHistoryResponseFromJson(json);
}