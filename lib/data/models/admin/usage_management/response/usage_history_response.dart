import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_history_response.freezed.dart';
part 'usage_history_response.g.dart';

@freezed
abstract class UsageHistoryResponse with _$UsageHistoryResponse{
  factory UsageHistoryResponse({
    required String id,
    required String user_id,
    required String user_name,
    required String user_phone,
    required String space_id,
    required String space_name,
    required String start_at,
    required String end_at,
    required int rental_count,
  }) = _UsageHistoryResponse;

  factory UsageHistoryResponse.fromJson(Map<String, dynamic> json) => _$UsageHistoryResponseFromJson(json);
}