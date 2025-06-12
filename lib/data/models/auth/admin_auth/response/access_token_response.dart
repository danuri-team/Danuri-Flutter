import 'package:danuri_flutter/data/models/auth/enum/token_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token_response.freezed.dart';
part 'access_token_response.g.dart';

@freezed
abstract class AccessTokenResponse with _$AccessTokenResponse{
  factory AccessTokenResponse({
    required TokenType token,
    required int expiredAt,
  }) = _AccessTokenResponse;

  factory AccessTokenResponse.fromJson(Map<String, dynamic> json) => _$AccessTokenResponseFromJson(json);
}