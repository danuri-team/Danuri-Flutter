import 'package:json_annotation/json_annotation.dart';

part 'create_internal_device_request.g.dart';

@JsonSerializable()
class CreateInternalDeviceRequest{
  @JsonKey(name: 'device_id')
  final String deviceId;
  @JsonKey(name: 'space_id')
    final String spaceId;
  
  CreateInternalDeviceRequest({
    required this.deviceId,
    required this.spaceId,
  });

  factory CreateInternalDeviceRequest.fromJson(Map<String, dynamic> json) => _$CreateInternalDeviceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CreateInternalDeviceRequestToJson(this);
}