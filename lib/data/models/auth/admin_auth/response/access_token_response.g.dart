// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) =>
    _AccessTokenResponse(
      token: json['token'] as String,
      expiredAt: (json['expiredAt'] as num).toInt(),
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
        _AccessTokenResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiredAt': instance.expiredAt,
    };
