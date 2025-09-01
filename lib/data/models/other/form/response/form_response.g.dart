// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FormResponse _$FormResponseFromJson(Map<String, dynamic> json) => FormResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      schema: json['schema'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$FormResponseToJson(FormResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'schema': '${instance.schema}',
    };
