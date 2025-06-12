// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'access_token_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccessTokenResponse _$AccessTokenResponseFromJson(Map<String, dynamic> json) =>
    _AccessTokenResponse(
      token: $enumDecode(_$TokenTypeEnumMap, json['token']),
      expiredAt: (json['expiredAt'] as num).toInt(),
    );

Map<String, dynamic> _$AccessTokenResponseToJson(
        _AccessTokenResponse instance) =>
    <String, dynamic>{
      'token': _$TokenTypeEnumMap[instance.token]!,
      'expiredAt': instance.expiredAt,
    };

const _$TokenTypeEnumMap = {
  TokenType.REFRESH_TOKEN: 'REFRESH_TOKEN',
  TokenType.ACCESS_TOKEN: 'ACCESS_TOKEN',
};
