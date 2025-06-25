import 'package:json_annotation/json_annotation.dart';

part 'device_auth_request.g.dart';

@JsonSerializable()
class DeviceAuthRequest {
  @JsonKey(name: 'device_id')
  final String deviceId;

  DeviceAuthRequest({
    required this.deviceId,
  });

  factory DeviceAuthRequest.fromJson(Map<String, dynamic> json) =>
      _$DeviceAuthRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceAuthRequestToJson(this);
}
