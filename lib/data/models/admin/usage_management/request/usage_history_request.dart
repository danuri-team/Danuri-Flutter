import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_history_request.freezed.dart';
part 'usage_history_request.g.dart';

@freezed
abstract class UsageHistoryRequest with _$UsageHistoryRequest{
  factory UsageHistoryRequest({
    required String start_date,
    required String end_date,
    String? space_id,
    String? user_id,
  }) = _UsageHistoryRequest;

  factory UsageHistoryRequest.fromJson(Map<String, dynamic> json) => _$UsageHistoryRequestFromJson(json);
}