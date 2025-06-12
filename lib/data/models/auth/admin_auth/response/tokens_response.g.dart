// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokensResponse _$TokensResponseFromJson(Map<String, dynamic> json) =>
    _TokensResponse(
      accessToken: AccessTokenResponse.fromJson(
          json['accessToken'] as Map<String, dynamic>),
      refreshToken: RefreshTokenResponse.fromJson(
          json['refreshToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokensResponseToJson(_TokensResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
