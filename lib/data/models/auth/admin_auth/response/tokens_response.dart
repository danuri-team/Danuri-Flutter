import 'package:danuri_flutter/data/models/auth/admin_auth/response/access_token_response.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/refresh_token_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tokens_response.g.dart';

@JsonSerializable()
class TokensResponse {
  @JsonKey(name: 'access_token')
  final AccessTokenResponse accessToken;
  @JsonKey(name: 'refresh_token')
  final RefreshTokenResponse refreshToken;

  TokensResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokensResponse.fromJson(Map<String, dynamic> json) =>
      _$TokensResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokensResponseToJson(this);
}
