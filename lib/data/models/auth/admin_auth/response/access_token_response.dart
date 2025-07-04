import 'package:json_annotation/json_annotation.dart';

part 'access_token_response.g.dart';

@JsonSerializable()
class AccessTokenResponse {
  final String token;
  @JsonKey(name: 'expired_at')
  final int expiredAt;

  AccessTokenResponse({
    required this.token,
    required this.expiredAt,
  });

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AccessTokenResponseToJson(this);
}
