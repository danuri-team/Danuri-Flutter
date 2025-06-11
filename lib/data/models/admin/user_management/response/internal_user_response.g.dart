// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InternalUserResponse _$InternalUserResponseFromJson(
        Map<String, dynamic> json) =>
    _InternalUserResponse(
      users: (json['users'] as List<dynamic>)
          .map((e) => UserResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InternalUserResponseToJson(
        _InternalUserResponse instance) =>
    <String, dynamic>{
      'users': instance.users,
    };
