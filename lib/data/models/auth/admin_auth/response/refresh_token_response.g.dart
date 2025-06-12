// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RefreshTokenResponse _$RefreshTokenResponseFromJson(
        Map<String, dynamic> json) =>
    _RefreshTokenResponse(
      token: $enumDecode(_$TokenTypeEnumMap, json['token']),
      expiredAt: (json['expiredAt'] as num).toInt(),
    );

Map<String, dynamic> _$RefreshTokenResponseToJson(
        _RefreshTokenResponse instance) =>
    <String, dynamic>{
      'token': _$TokenTypeEnumMap[instance.token]!,
      'expiredAt': instance.expiredAt,
    };

const _$TokenTypeEnumMap = {
  TokenType.REFRESH_TOKEN: 'REFRESH_TOKEN',
  TokenType.ACCESS_TOKEN: 'ACCESS_TOKEN',
};
