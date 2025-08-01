import 'package:json_annotation/json_annotation.dart';

part 'internal_device_response.g.dart';

@JsonSerializable()
class InternalDeviceResponse{
  final String id;
  @JsonKey(name: 'created_at')
    final String createdAt;
  
  InternalDeviceResponse({
    required this.id,
    required this.createdAt,
  });

  factory InternalDeviceResponse.fromJson(Map<String, dynamic> json) => _$InternalDeviceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InternalDeviceResponseToJson(this);
}