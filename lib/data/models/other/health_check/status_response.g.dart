// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StatusResponse _$StatusResponseFromJson(Map<String, dynamic> json) =>
    _StatusResponse(
      status: $enumDecode(_$StatusTypeEnumMap, json['status']),
    );

Map<String, dynamic> _$StatusResponseToJson(_StatusResponse instance) =>
    <String, dynamic>{
      'status': _$StatusTypeEnumMap[instance.status]!,
    };

const _$StatusTypeEnumMap = {
  StatusType.AVAILABLE: 'AVAILABLE',
};
