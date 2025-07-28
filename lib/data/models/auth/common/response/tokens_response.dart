import 'package:danuri_flutter/data/models/auth/common/response/token_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'tokens_response.g.dart';

@JsonSerializable()
class TokensResponse {
  @JsonKey(name: 'access_token')
  final TokenResponse accessToken;
  @JsonKey(name: 'refresh_token')
  final TokenResponse refreshToken;

  TokensResponse({
    required this.accessToken,
    required this.refreshToken,
  });

  factory TokensResponse.fromJson(Map<String, dynamic> json) =>
      _$TokensResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TokensResponseToJson(this);
}
