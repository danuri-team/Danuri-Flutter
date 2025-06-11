// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'internal_space_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InternalSpaceResponse _$InternalSpaceResponseFromJson(
        Map<String, dynamic> json) =>
    _InternalSpaceResponse(
      spaces: (json['spaces'] as List<dynamic>)
          .map((e) => SpaceResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InternalSpaceResponseToJson(
        _InternalSpaceResponse instance) =>
    <String, dynamic>{
      'spaces': instance.spaces,
    };
