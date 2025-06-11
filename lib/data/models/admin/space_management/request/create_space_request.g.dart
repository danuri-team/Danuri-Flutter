// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_space_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSpaceRequest _$CreateSpaceRequestFromJson(Map<String, dynamic> json) =>
    _CreateSpaceRequest(
      name: json['name'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
    );

Map<String, dynamic> _$CreateSpaceRequestToJson(_CreateSpaceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
    };
