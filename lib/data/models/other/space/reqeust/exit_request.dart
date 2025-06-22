import 'package:freezed_annotation/freezed_annotation.dart';

part 'exit_request.freezed.dart';
part 'exit_request.g.dart';

@freezed
abstract class ExitRequest with _$ExitRequest{
  factory ExitRequest({
    required String usageId,
  }) = _ExitRequest;

  factory ExitRequest.fromJson(Map<String, dynamic> json) => _$ExitRequestFromJson(json);
}