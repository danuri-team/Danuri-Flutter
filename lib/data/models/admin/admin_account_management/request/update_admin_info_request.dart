import 'package:json_annotation/json_annotation.dart';

part 'update_admin_info_request.g.dart';

@JsonSerializable()
class UpdateAdminInfoRequest{
  final String name;
  final String email;
  final String phone;

  UpdateAdminInfoRequest({
    required this.name,
    required this.email,
    required this.phone,
  });

  factory UpdateAdminInfoRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateAdminInfoRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAdminInfoRequestToJson(this);
}
