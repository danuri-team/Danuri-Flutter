import 'package:json_annotation/json_annotation.dart';

part 'auth_code_response.g.dart';

@JsonSerializable()
class AuthCodeResponse {
  @JsonKey(name: 'auth_code')
  final String authCode;

  AuthCodeResponse({
    required this.authCode,
  });

  factory AuthCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthCodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthCodeResponseToJson(this);
}
