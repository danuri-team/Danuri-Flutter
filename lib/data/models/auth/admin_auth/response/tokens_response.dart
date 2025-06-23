import 'package:danuri_flutter/data/models/auth/admin_auth/response/access_token_response.dart';
import 'package:danuri_flutter/data/models/auth/admin_auth/response/refresh_token_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tokens_response.freezed.dart';
part 'tokens_response.g.dart';

@freezed
abstract class TokensResponse with _$TokensResponse{
  factory TokensResponse({
    required AccessTokenResponse access_token,
    required RefreshTokenResponse refresh_token,
  }) = _TokensResponse;

  factory TokensResponse.fromJson(Map<String, dynamic> json) => _$TokensResponseFromJson(json);
}