import 'package:json_annotation/json_annotation.dart';

part 'usage_id_request.g.dart';

@JsonSerializable()
class UsageIdRequest {
  @JsonKey(name: 'usage_id')
  final String usageId;

  UsageIdRequest({
    required this.usageId,
  });

  factory UsageIdRequest.fromJson(Map<String, dynamic> json) =>
      _$UsageIdRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UsageIdRequestToJson(this);
}
