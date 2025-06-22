// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenResponse _$RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _RefreshTokenResponse(
      token: json['token'] as String,
      expiredAt: (json['expiredAt'] as num).toInt(),
    );

Map<String, dynamic> _$RefreshTokenResponseToJson(
        _RefreshTokenResponse instance) =>
    <String, dynamic>{
      'token': instance.token,
      'expiredAt': instance.expiredAt,
    };
