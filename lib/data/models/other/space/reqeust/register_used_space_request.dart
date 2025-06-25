import 'package:json_annotation/json_annotation.dart';

part 'register_used_space_request.g.dart';

@JsonSerializable()
class RegisterUsedSpaceRequest {
  @JsonKey(name: 'space_id')
  final String spaceId;

  RegisterUsedSpaceRequest({
    required this.spaceId,
  });

  factory RegisterUsedSpaceRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterUsedSpaceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterUsedSpaceRequestToJson(this);
}
