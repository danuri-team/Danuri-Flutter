// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_space_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSpaceRequest _$UpdateSpaceRequestFromJson(Map<String, dynamic> json) =>
    _UpdateSpaceRequest(
      name: json['name'] as String,
      startAt: json['startAt'] as String,
      endAt: json['endAt'] as String,
    );

Map<String, dynamic> _$UpdateSpaceRequestToJson(_UpdateSpaceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startAt': instance.startAt,
      'endAt': instance.endAt,
    };
