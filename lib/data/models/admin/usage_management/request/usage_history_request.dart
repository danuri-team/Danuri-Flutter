import 'package:freezed_annotation/freezed_annotation.dart';

part 'usage_history_request.freezed.dart';
part 'usage_history_request.g.dart';

@freezed
abstract class UsageHistoryRequest with _$UsageHistoryRequest{
  factory UsageHistoryRequest({
    required String startDate,
    required String endDate,
    String? spaceId,
    String? userId,
  }) = _UsageHistoryRequest;

  factory UsageHistoryRequest.fromJson(Map<String, dynamic> json) => _$UsageHistoryRequestFromJson(json);
}