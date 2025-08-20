// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokensResponse _$TokensResponseFromJson(Map<String, dynamic> json) =>
    TokensResponse(
      accessToken:
          TokenResponse.fromJson(json['access_token'] as Map<String, dynamic>),
      refreshToken: json['refresh_token'] == null
          ? null
          : TokenResponse.fromJson(
              json['refresh_token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokensResponseToJson(TokensResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };
