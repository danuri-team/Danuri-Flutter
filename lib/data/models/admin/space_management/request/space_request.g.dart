// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpaceRequest _$SpaceRequestFromJson(Map<String, dynamic> json) => SpaceRequest(
      name: json['name'] as String,
      startAt: json['start_at'] as String,
      endAt: json['end_at'] as String?,
    );

Map<String, dynamic> _$SpaceRequestToJson(SpaceRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'start_at': instance.startAt,
      'end_at': instance.endAt,
    };
