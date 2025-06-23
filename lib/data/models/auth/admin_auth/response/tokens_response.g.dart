// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokens_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TokensResponse _$TokensResponseFromJson(Map<String, dynamic> json) =>
    _TokensResponse(
      access_token: AccessTokenResponse.fromJson(
          json['access_token'] as Map<String, dynamic>),
      refresh_token: RefreshTokenResponse.fromJson(
          json['refresh_token'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokensResponseToJson(_TokensResponse instance) =>
    <String, dynamic>{
      'access_token': instance.access_token,
      'refresh_token': instance.refresh_token,
    };
