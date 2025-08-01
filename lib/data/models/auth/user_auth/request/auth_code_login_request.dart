import 'package:json_annotation/json_annotation.dart';

part 'auth_code_login_request.g.dart';

@JsonSerializable()
class AuthCodeLoginRequest {
  final String phone;
  @JsonKey(name: 'auth_code')
  final String authCode;

  AuthCodeLoginRequest({
    required this.phone,
    required this.authCode,
  });

  factory AuthCodeLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AuthCodeLoginRequestToJson(this);
}
