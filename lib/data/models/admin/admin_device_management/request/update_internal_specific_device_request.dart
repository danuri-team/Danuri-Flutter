import 'package:json_annotation/json_annotation.dart';

part 'update_internal_specific_device_request.g.dart';

@JsonSerializable()
class UpdateInternalSpecificDeviceRequest{
  @JsonKey(name: 'space_id')
final String spaceId;
@JsonKey(name: 'is_activate')
    final bool isActivate;

  UpdateInternalSpecificDeviceRequest({
    required this.spaceId,
    required this.isActivate,
  });

  factory UpdateInternalSpecificDeviceRequest.fromJson(Map<String, dynamic> json) => _$UpdateInternalSpecificDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateInternalSpecificDeviceRequestToJson(this);
}